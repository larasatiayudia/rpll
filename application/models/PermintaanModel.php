<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PermintaanModel extends CI_Model {
	public function view(){
		return $this->db->get('siswa_1')->result(); // Tampilkan semua data yang ada di tabel siswa
	}
	
	// Fungsi untuk melakukan proses upload file
	public function upload_file($filename){
		$this->load->library('upload'); // Load librari upload
		
		$config['upload_path'] = './excel/';
		$config['allowed_types'] = 'xlsx|csv|xls';
		$config['max_size']	= '10000';
		$config['overwrite'] = true;
		$config['file_name'] = $filename;
	
		$this->upload->initialize($config); // Load konfigurasi uploadnya
		if($this->upload->do_upload('file')){ // Lakukan upload dan Cek jika proses upload berhasil
			// Jika berhasil :
			$return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
			return $return;
		}else{
			// Jika gagal :
			$return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
			return $return;
		}
	}
	
	// Buat sebuah fungsi untuk melakukan insert lebih dari 1 data
	public function insert_multiple($data){
		$this->db->insert_batch('siswa_1', $data);
	}

	// Buat Grafik
	public function getByGender(){
		$query = $this->db->query("SELECT jenis_kelamin_1, count(id_1) AS jumlah FROM siswa_1 GROUP BY jenis_kelamin_1");
		
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
	}

	// Buat Grafik
	public function getByNilai(){
		$query = $this->db->query("SELECT nilai_1, count(id_1) AS jumlah FROM siswa_1 GROUP BY nilai_1");
		
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
	}

	// Buat Grafik
	public function getListNilai(){
		$query = $this->db->query("SELECT nama_1, nilai_1 FROM siswa_1");
		
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
	}
}
