<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800" style="float: right;">Pengisian Kuesioner Skala</h1>
<h1 class="h3 mb-4 text-gray-800">Skala</h1>
<h1 class="h4 mb-4 text-gray-800">Skala Sapi - <?= $entitas == 1 ? 'Peternak' : 'RPH'?></h1>


<form action="<?php echo base_url().'officer/input_skala_sapi' ?>" method="post">
    <?php foreach ($pertanyaan as $p) : ?>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label"><?= $p['pertanyaan'] ?></label>
            <div class="col-sm-5">
                <input required type="number" step="0.01" class="form-control" name="<?= $p['kode'] ?>" value="1">
            </div>
        </div>
    <?php endforeach ?>

<br>
<br>
<input type="hidden" name="entitas" value="<?= $entitas ?>">
<button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Simpan</button>
</form>

</div>


<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->