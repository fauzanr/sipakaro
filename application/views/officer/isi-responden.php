        <!-- Begin Page Content -->
        <div class="container-fluid">

        <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

        <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center"><?= $title ?></h2>
        <br>

        <div style="text-align: center;">
            <h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Jumlah Responden</h2>
            <?php echo validation_errors(); ?>
            <form action="<?php echo base_url().'officer/input_ahp_dua' ?>" method="post">
                <div class="btn-group btn-group-toggle btn-block col-md-8" data-toggle="buttons">
                    <?php for ($i=1 ; $i <= 5 ; $i++) : ?>
                        <label class="btn btn-primary btn-lg mr-2 <?= isset($_SESSION['pengisian_ahp']['responden']) && $_SESSION['pengisian_ahp']['responden']==$i ? '' : '' ?>">
                            <input type="radio" name="options" id="option<?= $i ?>" autocomplete="off" value='<?= $i ?>' required><?= $i ?>
                        </label>
                    <?php endfor ?>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-lg col-md-2 mt-5" style="float: right;">Next</button>
        </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->