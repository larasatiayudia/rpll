<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class Permintaan extends BaseController {
	private $filename = "import_data"; // Kita tentukan nama filenya
	
	public function __construct(){
		parent::__construct();
		
		$this->load->model('PermintaanModel');
        $this->isLoggedIn();   
	}
	
	public function index(){
        $this->global['pageTitle'] = 'PERPUSTAKAAN IPB : Dashboard';
        
        $this->loadViews("dashboard", $this->global, NULL , NULL);
    }

    /**
     * This function for chart of gender
     */
    function genderChart(){
        $data['data']=$this->PermintaanModel->getByGender();
        echo'<script>console.log('.json_encode($data['data']).');</script>';
        $this->global['pageTitle'] = 'PERPUSTAKAAN IPB : Siswa Listing';
        
        $this->loadViews("chart_permintaan", $this->global, $data, NULL);
	}
	
	/**
     * This function for chart of gender
     */
    function getChart(){
		$data['data']=$this->PermintaanModel->getByGender();
		$data['nilai']=$this->PermintaanModel->getByNilai();
		$data['listNilai']=$this->PermintaanModel->getListNilai();
        echo'<script>console.log('.json_encode($data['nilai']).');</script>';
        $this->global['pageTitle'] = 'PERPUSTAKAAN IPB : Chart';
        
        $this->loadViews("chart_permintaan", $this->global, $data, NULL);
    }
    
    /**
     * This function is used to load the user list
     */
    function siswaListing()
    {
        $data['siswa_1'] = $this->PermintaanModel->view();
        
        $this->global['pageTitle'] = 'PERPUSTAKAAN IPB : Siswa Listing';
        
        $this->loadViews("view_permintaan", $this->global, $data, NULL);
    }
	
	public function form(){
		$data = array(); // Buat variabel $data sebagai array
		
		if(isset($_POST['preview'])){ // Jika user menekan tombol Preview pada form
			// lakukan upload file dengan memanggil function upload yang ada di SiswaModel.php
			// var_dump(print_r($_FILES));
			$upload = $this->PermintaanModel->upload_file($this->filename);
			
			if($upload['result'] == "success"){ // Jika proses upload sukses
				// Load plugin PHPExcel nya
				include APPPATH.'third_party/PHPExcel/PHPExcel.php';
				
				$excelreader = new PHPExcel_Reader_Excel2007();
				$loadexcel = $excelreader->load('excel/'.$this->filename.'.xlsx'); // Load file yang tadi diupload ke folder excel
				$sheet = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);
				
				// Masukan variabel $sheet ke dalam array data yang nantinya akan di kirim ke file form.php
				// Variabel $sheet tersebut berisi data-data yang sudah diinput di dalam excel yang sudha di upload sebelumnya
                $data['sheet'] = $sheet;
			}else{ // Jika proses upload gagal
                $data['upload_error'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
			}
        }
        $this->global['pageTitle'] = 'PERPUSTAKAAN IPB : Siswa Listing';
        $this->loadViews("form_permintaan", $this->global, $data, NULL);
	}
	
	public function import(){
		// Load plugin PHPExcel nya
		include APPPATH.'third_party/PHPExcel/PHPExcel.php';
		
		$excelreader = new PHPExcel_Reader_Excel2007();
		$loadexcel = $excelreader->load('excel/'.$this->filename.'.xlsx'); // Load file yang telah diupload ke folder excel
		$sheet = $loadexcel->getActiveSheet()->toArray(null, true, true ,true);
		
		// Buat sebuah variabel array untuk menampung array data yg akan kita insert ke database
		$data = array();
		
		$numrow = 1;
		foreach($sheet as $row){
			// Cek $numrow apakah lebih dari 1
			// Artinya karena baris pertama adalah nama-nama kolom
			// Jadi dilewat saja, tidak usah diimport
			if($numrow > 1){
				// Kita push (add) array data ke variabel data
				array_push($data, array(
					'nis_1'=>$row['A'], // Insert data nis dari kolom A di excel
					'nama_1'=>$row['B'], // Insert data nama dari kolom B di excel
					'jenis_kelamin_1'=>$row['C'], // Insert data jenis kelamin dari kolom C di excel
					'alamat_1'=>$row['D'], // Insert data alamat dari kolom D di excel
					'nilai_1'=>$row['E'], // Insert data alamat dari kolom D di excel
					'nilai_11'=>$row['F'], // Insert data alamat dari kolom D di excel
					'nilai_12'=>$row['G'], // Insert data alamat dari kolom D di excel
					'nilai_13'=>$row['H'], // Insert data alamat dari kolom D di excel
				));
			}
			
			$numrow++; // Tambah 1 setiap kali looping
		}

		// Panggil fungsi insert_multiple yg telah kita buat sebelumnya di model
		$this->PermintaanModel->insert_multiple($data);
		
		redirect("permintaan/siswaListing"); // Redirect ke halaman awal (ke controller siswa fungsi index)
	}
}
