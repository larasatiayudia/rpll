<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Form Permintaan
      </h1>
    </section>
    <section class="content">
		<div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
					<a class="btn btn-primary" href="<?php echo base_url("excel/format.xlsx"); ?>">Download Format</a>
                </div>
            </div>
		</div>
		<div class="row">
			<div class="form-group">
				<form method="post" action="<?php echo base_url(); ?>permintaan/form" enctype="multipart/form-data">
					<!-- 
					-- Buat sebuah input type file
					-- class pull-left berfungsi agar file input berada di sebelah kiri
					-->
					<input type="file" name="file">
					
					<!--
					-- BUat sebuah tombol submit untuk melakukan preview terlebih dahulu data yang akan di import
					-->
					<input type="submit" name="preview" value="Preview">
				</form>
			</div>
		</div>
        <div class="row">
            <div class="form-group">
              <div class="box">
				<?php
					if(isset($_POST['preview'])){ // Jika user menekan tombol Preview pada form 
						if(isset($upload_error)){ // Jika proses upload gagal
							echo "<div style='color: red;'>".$upload_error."</div>"; // Muncul pesan error upload
							die; // stop skrip
						}
						
						// Buat sebuah tag form untuk proses import data ke database
						echo "<form method='post' action='".base_url()."permintaan/import'>";
						
						// Buat sebuah div untuk alert validasi kosong
						echo "<div style='color: red;' id='kosong'>
						Semua data belum diisi, Ada <span id='jumlah_kosong'></span> data yang belum diisi.
						</div>";
						
						echo "<table border='1' cellpadding='8' class='table table-hover'>
						<tr>
							<th colspan='5'>Preview Data</th>
						</tr>
						<tr>
							<th>Nama CMT</th>
							<th>Bulan</th>
							<th>Tanggal Pengiriman</th>
							<th>Jumlah PO</th>
							<th>Jumlah	DZ</th>
							<th>Jumlah	PC</th>
							<th>Total	DZ</th>
							<th>Total PC</th>	
						</tr>";
						
						$numrow = 1;
						$kosong = 0;
						
						// Lakukan perulangan dari data yang ada di excel
						// $sheet adalah variabel yang dikirim dari controller
						foreach($sheet as $row){ 
							// Ambil data pada excel sesuai Kolom
							$nis_1 = $row['A']; // Ambil data NIS
							$nama_1 = $row['B']; // Ambil data nama
							$jenis_kelamin_1 = $row['C']; // Ambil data jenis kelamin
							$alamat_1 = $row['D']; // Ambil data alamat
							$nilai_1 = $row['E']; // Ambil data alamat
							$nilai_11 = $row['F']; // Ambil data alamat
							$nilai_12 = $row['G']; // Ambil data alamat
							$nilai_13 = $row['H']; // Ambil data alamat
							
							// Cek jika semua data tidak diisi
							if(empty($nis_1) && empty($nama_1) && empty($jenis_kelamin_1) && empty($alamat_1) && empty($nilai_1))
								continue; // Lewat data pada baris ini (masuk ke looping selanjutnya / baris selanjutnya)
							
							// Cek $numrow apakah lebih dari 1
							// Artinya karena baris pertama adalah nama-nama kolom
							// Jadi dilewat saja, tidak usah diimport
							if($numrow > 1){
								// Validasi apakah semua data telah diisi
								$nis_td_1 = ( ! empty($nis_1))? "" : " style='background: #E07171;'"; // Jika NIS kosong, beri warna merah
								$nama_td_1 = ( ! empty($nama_1))? "" : " style='background: #E07171;'"; // Jika Nama kosong, beri warna merah
								$jk_td_1 = ( ! empty($jenis_kelamin_1))? "" : " style='background: #E07171;'"; // Jika Jenis Kelamin kosong, beri warna merah
								$alamat_td_1 = ( ! empty($alamat_1))? "" : " style='background: #E07171;'"; // Jika Alamat kosong, beri warna merah
								$nilai_td_1 = ( ! empty($nilai_1))? "" : " style='background: #E07171;'"; // Jika Nilai kosong, beri warna merah
								$nilai_td_11 = ( ! empty($nilai_11))? "" : " style='background: #E07171;'"; // Jika Nilai kosong, beri warna merah
								$nilai_td_12 = ( ! empty($nilai_12))? "" : " style='background: #E07171;'"; // Jika Nilai kosong, beri warna merah
								$nilai_td_13 = ( ! empty($nilai_13))? "" : " style='background: #E07171;'"; // Jika Nilai kosong, beri warna merah
								
								// Jika salah satu data ada yang kosong
								if(empty($nis_1) or empty($nama_1) or empty($jenis_kelamin_1) or empty($alamat_1) or empty($nilai_1)){
									$kosong++; // Tambah 1 variabel $kosong
								}
								
								echo "<tr>";
								echo "<td".$nis_td_1.">".$nis_1."</td>";
								echo "<td".$nama_td_1.">".$nama_1."</td>";
								echo "<td".$jk_td_1.">".$jenis_kelamin_1."</td>";
								echo "<td".$alamat_td_1.">".$alamat_1."</td>";
								echo "<td".$nilai_td_1.">".$nilai_1."</td>";
								echo "<td".$nilai_td_11.">".$nilai_11."</td>";
								echo "<td".$nilai_td_12.">".$nilai_12."</td>";
								echo "<td".$nilai_td_13.">".$nilai_13."</td>";
								echo "</tr>";
							}
							
							$numrow++; // Tambah 1 setiap kali looping
						}
						
						echo "</table>";
						
						// Cek apakah variabel kosong lebih dari 0
						// Jika lebih dari 0, berarti ada data yang masih kosong
						if($kosong > 0){
						?>	
							<script>
							$(document).ready(function(){
								// Ubah isi dari tag span dengan id jumlah_kosong dengan isi dari variabel kosong
								$("#jumlah_kosong").html('<?php echo $kosong; ?>');
								
								$("#kosong").show(); // Munculkan alert validasi kosong
							});
							</script>
						<?php
						}else{ // Jika semua data sudah diisi
							echo "<hr>";
							
							// Buat sebuah tombol untuk mengimport data ke database
							echo "<button type='submit' name='import'>Import</button>";
							echo "<a href='".base_url("index.php/Permintaan")."'>Cancel</a>";
						}
						
						echo "</form>";
					}
					?>
              </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script src="<?php echo base_url('js/jquery.min.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// Sembunyikan alert validasi kosong
		$("#kosong").hide();
	});
    jQuery(document).ready(function(){
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();            
            var link = jQuery(this).get(0).href;            
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "userListing/" + value);
            jQuery("#searchList").submit();
        });
    });
</script>