<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>

<br>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Peternak</h2>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Indikator</th>
                <th scope="col">Rata-Rata</th>
                <th scope="col">Nilai Konversi</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($rekap_peternak as $r) : ?>
            <tr>
                <td><label for=""></label><?= $r['indikator'] ?></td>
                <td><?= $r['rata_rata'] ?></td>
                <td><?= $r['nilai_konversi'] ?></td>
            </tr>
        <?php endforeach ?>
        </tbody>
    </table>
</div>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">RPA</h2>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Indikator</th>
                <th scope="col">Rata-Rata</th>
                <th scope="col">Nilai Konversi</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($rekap_rpa as $r) : ?>
            <tr>
                <td><label for=""></label><?= $r['indikator'] ?></td>
                <td><?= $r['rata_rata'] ?></td>
                <td><?= $r['nilai_konversi'] ?></td>
            </tr>
        <?php endforeach ?>
        </tbody>
    </table>
</div>

</div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->