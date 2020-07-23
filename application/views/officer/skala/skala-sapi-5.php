<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800" style="float: right;">Pengisian Kuesioner Skala</h1>
<h1 class="h3 mb-4 text-gray-800">Skala</h1>

    <script>
    function konfirmasi() {
        let result = confirm('hapus data skala sapi?');
        if (result) {
            window.location = '<?= base_url('officer/hapus_skala_sapi/'.$_SESSION['id_user']) ?>'
        }
    }
    </script>
    <a onclick="konfirmasi()"><button class="btn btn-danger">Hapus data skala</button></a>
<br>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">PETERNAK</h2>


<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Indikator</th>
                <th scope="col">Performansi Lapangan</th>
                <th scope="col">Skor Indikator</th>
                <th scope="col">Nilai Skala</th>
                <th scope="col">Status Skala</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($rekap_peternak as $r) : ?>
            <tr>
                <td><label for=""></label><?= $r['kode_indikator'] ?></td>
                <td><?= $r['performansi_lapangan'] ?></td>
                <td><?= $r['skor_indikator'] ?></td>
                <td><?= $r['nilai_skala'] ?></td>
                <td><?php
                    if ($r['nilai_skala'] < 25) {
                        echo 'Buruk';
                    }
                    if ($r['nilai_skala'] >= 25 && $r['nilai_skala'] < 49.99) {
                        echo 'Kurang';
                    }
                    if ($r['nilai_skala'] >= 50 && $r['nilai_skala'] < 74.99) {
                        echo 'Baik';
                    }
                    if ($r['nilai_skala'] >= 75) {
                        echo 'Sangat Baik';
                    }                  
                 ?></td>
            </tr>
        <?php endforeach ?>
        </tbody>
    </table>
</div>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">RPH</h2>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Indikator</th>
                <th scope="col">Performansi Lapangan</th>
                <th scope="col">Skor Indikator</th>
                <th scope="col">Nilai Skala</th>
                <th scope="col">Status Skala</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($rekap_rph as $r) : ?>
            <tr>
                <td><label for=""></label><?= $r['kode_indikator'] ?></td>
                <td><?= $r['performansi_lapangan'] ?></td>
                <td><?= $r['skor_indikator'] ?></td>
                <td><?= number_format($r['nilai_skala'], 3) ?></td>
                <td><?php
                    if ($r['nilai_skala'] < 25) {
                        echo 'Buruk';
                    }
                    if ($r['nilai_skala'] >= 25 && $r['nilai_skala'] < 49.999) {
                        echo 'Kurang';
                    }
                    if ($r['nilai_skala'] >= 50 && $r['nilai_skala'] < 74.999) {
                        echo 'Baik';
                    }
                    if ($r['nilai_skala'] >= 75) {
                        echo 'Sangat Baik';
                    }                  
                 ?></td>
            </tr>
        <?php endforeach ?>
        </tbody>
    </table>
</div>

<div class="row">
    <div class="col-xl-4">
        <div class="card">
            <div class="card-body">
                <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                    <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                        <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                        <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                    </div>
                </div> <canvas id="chart-sapi-peternak" width="299" height="200" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
            </div>
        </div>
    </div>

    <div class="col-xl-4">
        <div class="card">
            <div class="card-body">
                <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                    <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                        <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                        <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                    </div>
                </div> <canvas id="chart-sapi-rph" width="299" height="200" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
            </div>
        </div>
    </div>

    <div class="col-xl-4">
        <div class="card">
            <div class="card-body">
                <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                    <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                        <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                    </div>
                    <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                        <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>
                    </div>
                </div> <canvas id="chart-sapi-total" width="299" height="200" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
            </div>
        </div>
    </div>
</div>

</div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Grafik Dashboard -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.bundle.min.js'></script>
<script>
    $(document).ready(function() {

        // Peternak
        var xhr = new XMLHttpRequest();
        xhr.open('GET', '<?= base_url(); ?>/ajax-sapi-peternak', true);
        xhr.onload = function() {
            if(this.status == 200){
                let ahp = JSON.parse(this.responseText);
                buatGrafik(ahp, 'Grafik Skala Sapi (Peternak)', '#chart-sapi-peternak');
            }
            if(this.status == 403){
                console.log('Forbiden Status');
            }
            if(this.status == 404){
                console.log('Data Not Found');
            }
        }
        xhr.send();

        // RPA
        var xhr2 = new XMLHttpRequest();
        xhr2.open('GET', '<?= base_url(); ?>/ajax-sapi-rph', true);
        xhr2.onload = function() {
            if(this.status == 200){
                let ahp = JSON.parse(this.responseText);
                buatGrafik(ahp, 'Grafik Skala Sapi (RPH)', '#chart-sapi-rph');
            }
            if(this.status == 403){
                console.log('Forbiden Status');
            }
            if(this.status == 404){
                console.log('Data Not Found');
            }
        }
        xhr2.send();

        // RPA
        var xhr3 = new XMLHttpRequest();
        xhr3.open('GET', '<?= base_url(); ?>/ajax-sapi-total', true);
        xhr3.onload = function() {
            if(this.status == 200){
                let ahp = JSON.parse(this.responseText);
                buatGrafik(ahp, 'Grafik Skala Sapi Keseluruhan', '#chart-sapi-total');
            }
            if(this.status == 403){
                console.log('Forbiden Status');
            }
            if(this.status == 404){
                console.log('Data Not Found');
            }
        }
        xhr3.send();

        function buatGrafik(ahp, judul, id){
            var ctx = $(id);
            let indikatorGrafik = {
                type: 'radar',
                data: {
                    labels: [],
                    datasets: [{
                        data: [],
                        label: "Nilai Skala",
                        borderColor: "#458af7",
                        backgroundColor: '#458af7',
                        fill: true
                    }, {
                        data: [],
                        label: "Batas",
                        borderColor: "#3cba9f",
                        fill: true,
                        backgroundColor: '#3cba9f'
                    }]
                },
                options: {
                    title: {
                        display: true,
                        text: judul
                    }
                }
            };
            
            // Push data kedalam indikator grafik yang akan digunakan
            for (let i = 0; i < ahp.length; i++) {
                indikatorGrafik.data.labels.push(ahp[i]['kode_indikator']);
                indikatorGrafik.data.datasets[0].data.push(ahp[i]['nilai_skala']); // Nilai Skala
                indikatorGrafik.data.datasets[1].data.push('50'); // Batas
            }
            // Membuat Grafik
            var myLineChart = new Chart(ctx, indikatorGrafik);
        }
    });
</script>
