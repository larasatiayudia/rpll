<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Grafik Biaya Operasional
      </h1>
    </section>
    <section class="content">
		<div class="row">
        <?php
            foreach($data as $x){
                $label[] = $x->jenis_kelamin;
                $count[] = (float) $x->jumlah;
            }
            foreach($nilai as $x){
                $labelNilai[] = $x->nilai;
                $countNilai[] = (float) $x->jumlah;
            }
            foreach($listNilai as $y){
                $xNama[] = $y->nama;
                $yNilai[] = (float) $y->nilai;
            }
            $datas = array();
            $total = sizeof($data);
            foreach($data as $data){
                $value = $data->jumlah / $total * 100;
                $datas[] = array(
                    'value' => $value, 
                    'color' => '#F7464A', 
                    'label' => $data->jenis_kelamin,
                    'highlight' => '#FF5A5E',
                );
            }
            $datasNilai = array();
            $total = sizeof($nilai);
            foreach($nilai as $res){
                $value = $res->jumlah / $total * 100;
                $datasNilai[] = array(
                    'value' => $value, 
                    'color' => '#F7464A', 
                    'label' => $res->nilai,
                    'highlight' => '#FF5A5E',
                );
            }
        ?>
        </div>
        <canvas id="canvas1" width="1000" height="280"></canvas>
        <canvas id="canvas2" width="1000" height="280"></canvas>
        <canvas id="nilaiChart" width="1000" height="400"></canvas>
    </section>
</div>
<script asyn src="https://livegap.com/charts/js/webfont.js">
</script><script src="https://livegap.com/charts/js/Chart.min.js"></script>
<script>

        var lineChartData = {
            labels : <?php echo json_encode($label);?>,
            datasets : [
                
                {
                    fillColor: "rgba(60,141,188,0.9)",
                    strokeColor: "rgba(60,141,188,0.8)",
                    pointColor: "#3b8bba",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(152,235,239,1)",
                    data : <?php echo json_encode($count);?>
                }

            ]
            
        }
        var lineChartNilaiData = {
            labels : <?php echo json_encode($labelNilai);?>,
            datasets : [
                
                {
                    fillColor: "rgba(60,141,188,0.9)",
                    strokeColor: "rgba(60,141,188,0.8)",
                    pointColor: "#3b8bba",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(152,235,239,1)",
                    data : <?php echo json_encode($countNilai);?>
                }

            ]
            
        }

        var lineChartListNilaiData = {
            labels : <?php echo json_encode($xNama);?>,
            datasets : [
                
                {
                    fillColor: "rgba(60,141,188,0.9)",
                    strokeColor: "rgba(60,141,188,0.8)",
                    pointColor: "#3b8bba",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(152,235,239,1)",
                    data : <?php echo json_encode($yNilai);?>
                }

            ]
            
        }

        var newopts = {
            inGraphDataShow: true,
            inGraphDataRadiusPosition: 2,
            inGraphDataFontColor: 'white'
        }

    var myLine1 = new Chart(document.getElementById("canvas1").getContext("2d")).Bar(lineChartListNilaiData);    
    var myLine2 = new Chart(document.getElementById("canvas2").getContext("2d")).Bar(lineChartNilaiData);
    var pie = <?php echo json_encode($datas); ?>;
    var pieNilai = <?php echo json_encode($datasNilai); ?>;
	var nilaiPie = new Chart(document.getElementById("nilaiChart").getContext("2d")).Pie(pieNilai, newopts);
</script>
