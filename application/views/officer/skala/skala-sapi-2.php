<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800" style="float: right;">Pengisian Kuesioner Skala</h1>
<h1 class="h3 mb-4 text-gray-800">Skala</h1>
<h1 class="h4 mb-4 text-gray-800">Skala Sapi - <?= $entitas == 1 ? 'Peternak' : 'RPH'?></h1>
<br>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col"></th>
                <th scope="col">Indikator</th>
                <th scope="col">Nilai Skala</th>
            </tr>
        </thead>
        <tbody>
            <?php $counter = 0; ?>
            <?php foreach($_SESSION['output_skala_sapi'] as $k => $v) : ?>

                <?php $counter++ ?>
                <tr>
                    <th scope="row"><?= $counter ?></th>
                    <td><?= $k ?></td>
                    <td><?= $v['performansi_lapangan'] ?></td>
                </tr>

            <?php endforeach ?>
        </tbody>
    </table>
</div>

<br>
<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Kriteria Skor Indikator</h2>

<form action="<?php echo base_url().'officer/input_skala_sapi_2' ?>" method="post">

    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Indikator</th>
                <th scope="col">1</th>
                <th scope="col">2</th>
                <th scope="col">3</th>
                <th scope="col">4</th>
                <th scope="col">5</th>
                <th scope="col">6</th>
                <th scope="col">Skor Indikator</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($indikator as $i) : ?>
                <tr>
                    <td><?= $i['kode_s_i'] ?></td>
                    <?php for($j=1; $j<=6; $j++) : ?>
                        <td><?= $i['pilihan_skala_'.$j] ?></td>
                    <?php endfor ?>
                    <td><input required type="number" class="form-control" min="1" max="6" name="<?= $i['kode_s_i'] ?>" value="1"></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>

    <br>
    <br>
    <input type="hidden" name="entitas" value="<?= $entitas ?>">
    <button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Next</button>

</form>


</div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->