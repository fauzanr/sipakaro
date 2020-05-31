<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800" style="float: right;">Pengisian Kuesioner Skala</h1>
<h1 class="h3 mb-4 text-gray-800">Skala</h1>

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
            </tr>
        </thead>
        <tbody>
        <?php foreach($rekap_peternak as $r) : ?>
            <tr>
                <td><label for=""></label><?= $r['kode_indikator'] ?></td>
                <td><?= $r['performansi_lapangan'] ?></td>
                <td><?= $r['skor_indikator'] ?></td>
                <td><?= $r['nilai_skala'] ?></td>
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
            </tr>
        </thead>
        <tbody>
        <?php foreach($rekap_rph as $r) : ?>
            <tr>
                <td><label for=""></label><?= $r['kode_indikator'] ?></td>
                <td><?= $r['performansi_lapangan'] ?></td>
                <td><?= $r['skor_indikator'] ?></td>
                <td><?= $r['nilai_skala'] ?></td>
            </tr>
        <?php endforeach ?>
        </tbody>
    </table>
</div>

</div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->