<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>

<script>
    function konfirmasi() {
        let result = confirm('hapus data skala ayam?');
        if (result) {
            window.location = '<?= base_url('officer/hapus_skala_ayam/'.$_SESSION['id_user']) ?>'
        }
    }
</script>
<a onclick="konfirmasi()"><button class="btn btn-danger">Hapus data skala</button></a>

<br>

<h2 class="h4 my-4 text-gray-800 d-flex">Ukuran Peternakan : <?= $ukuran['ukuran_peternakan'] != NULL ? $ukuran['ukuran_peternakan'] : 'Belum Terisi' ?></h2>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Peternak</h2>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Kriteria</th>
                <th scope="col">Indikator</th>
                <th scope="col">Rata-Rata</th>
                <th scope="col">Nilai Konversi</th>
                <th scope="col">Status Skala</th>
            </tr>
        </thead>
        <tbody>
        <?php if(count($rekap_peternak) > 0) : ?>
            <?php $kriteria = ''; ?>
            <?php foreach($rekap_peternak as $r) : ?>
                <tr>
                    <td><?= $kriteria == $r['nama_kriteria'] ? '' : $r['nama_kriteria'] ?></td>
                    <?php $kriteria = $r['nama_kriteria']; ?>
                    <td><label for=""></label><?= $r['indikator'] ?></td>
                    <td><?= $r['rata_rata'] ?></td>
                    <td><?= $r['nilai_konversi'] ?></td>
                    <td><?php
                        if ($r['nilai_konversi'] < 25) {
                            echo 'Buruk';
                        }
                        if ($r['nilai_konversi'] >= 25 && $r['nilai_konversi'] < 49.99) {
                            echo 'Kurang';
                        }
                        if ($r['nilai_konversi'] >= 50 && $r['nilai_konversi'] < 74.99) {
                            echo 'Baik';
                        }
                        if ($r['nilai_konversi'] >= 75) {
                            echo 'Sangat Baik';
                        }                  
                    ?></td>
                </tr>
            <?php endforeach ?>
        <?php else : ?>
            <tr>
                <td colspan="5">Data Belum Terisi</td>
            </tr>
        <?php endif; ?>
        </tbody>
    </table>
</div>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">RPA</h2>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Kriteria</th>
                <th scope="col">Indikator</th>
                <th scope="col">Rata-Rata</th>
                <th scope="col">Nilai Konversi</th>
                <th scope="col">Status Skala</th>
            </tr>
        </thead>
        <tbody>
        <?php if(count($rekap_rpa) > 0) : ?>
            <?php $kriteria = ''; ?>
            <?php foreach($rekap_rpa as $r) : ?>
                <tr>
                    <td><?= $kriteria == $r['nama_kriteria'] ? '' : $r['nama_kriteria'] ?></td>
                    <?php $kriteria = $r['nama_kriteria']; ?>
                    <td><label for=""></label><?= $r['indikator'] ?></td>
                    <td><?= $r['rata_rata'] ?></td>
                    <td><?= $r['nilai_konversi'] ?></td>
                    <td><?php
                    if ($r['nilai_konversi'] < 25) {
                        echo 'Buruk';
                    }
                    if ($r['nilai_konversi'] >= 25 && $r['nilai_konversi'] < 49.99) {
                        echo 'Kurang';
                    }
                    if ($r['nilai_konversi'] >= 50 && $r['nilai_konversi'] < 74.99) {
                        echo 'Baik';
                    }
                    if ($r['nilai_konversi'] >= 75) {
                        echo 'Sangat Baik';
                    }                  
                    ?></td>
                </tr>
            <?php endforeach ?>
        <?php else : ?>
            <tr>
                <td colspan="5">Data Belum Terisi</td>
            </tr>
        <?php endif; ?>
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
                </div> <canvas id="chart-ayam-peternak" width="299" height="200" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
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
                </div> <canvas id="chart-ayam-rpa" width="299" height="200" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
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
                </div> <canvas id="chart-ayam-total" width="299" height="200" class="chartjs-render-monitor" style="display: block; width: 299px; height: 200px;"></canvas>
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
        xhr.open('GET', '<?= base_url(); ?>/ajax-ayam-peternak', true);
        xhr.onload = function() {
            if(this.status == 200){
                let ahp = JSON.parse(this.responseText);
                buatGrafik(ahp, 'Grafik Skala Ayam (Peternak)', '#chart-ayam-peternak');
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
        xhr2.open('GET', '<?= base_url(); ?>/ajax-ayam-rpa', true);
        xhr2.onload = function() {
            if(this.status == 200){
                let ahp = JSON.parse(this.responseText);
                buatGrafik(ahp, 'Grafik Skala Ayam (RPA)', '#chart-ayam-rpa');
            }
            if(this.status == 403){
                console.log('Forbiden Status');
            }
            if(this.status == 404){
                console.log('Data Not Found');
            }
        }
        xhr2.send();

        // TOTAL
        var xhr3 = new XMLHttpRequest();
        xhr3.open('GET', '<?= base_url(); ?>/ajax-ayam-total', true);
        xhr3.onload = function() {
            if(this.status == 200){
                let ahp = JSON.parse(this.responseText);
                buatGrafik(ahp, 'Grafik Skala Ayam Keseluruhan', '#chart-ayam-total');
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
                indikatorGrafik.data.labels.push(ahp[i]['indikator']);
                indikatorGrafik.data.datasets[0].data.push(ahp[i]['nilai_konversi']); // Nilai Konversi
                indikatorGrafik.data.datasets[1].data.push('50'); // Batas
            }
            // Membuat Grafik
            var myLineChart = new Chart(ctx, indikatorGrafik);
        }
    });
</script>
