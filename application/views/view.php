
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Daftar Peminjam
      </h1>
    </section>
    <section class="content">
		<div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>siswa/form"><i class="fa fa-plus"></i> Import Data</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Daftar Peminjam</h3>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
					<table border="1" cellpadding="8" class="table table-hover">
						<tr>
							<th>No</th>
							<th>Nomer Anggota</th>
							<th>Nama Lengkap</th>
							<th>Program Studi</th>
                            <th>Jumlah Buku yang dipinjam</th>
						</tr>

						<?php
						if( ! empty($siswa)){ // Jika data pada database tidak sama dengan empty (alias ada datanya)
							foreach($siswa as $data){ // Lakukan looping pada variabel siswa dari controller
								echo "<tr>";
								echo "<td>".$data->nis."</td>";
								echo "<td>".$data->nama."</td>";
								echo "<td>".$data->jenis_kelamin."</td>";
                                echo "<td>".$data->alamat."</td>";
                                echo "<td>".$data->nilai."</td>";
								echo "</tr>";
							}
						}else{ // Jika data tidak ada
							echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
						}
						?>
					</table>
                  
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
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