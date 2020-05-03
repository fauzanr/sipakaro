        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

            <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">
            <?= $title ?>
            </h2>
            <br />

            <h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">
            Nama Responden (Jumlah: <?= $_SESSION['responden'] ?>)
            </h2>

            <div class="row">
                <div class="col-md-2"></div>
                <?php echo validation_errors(); ?>
                <form action="<?php echo base_url().'officer/input-ahp-3' ?>" class="col-md-8" method="post">
                    <?php for ($i=1; $i <= $_SESSION['responden'] ; $i++) {
                        echo '
                        <div class="form-group">
                            <label for="formGroupExampleInput">Nama Responden '.$i.'</label>
                            <input type="text" class="form-control" placeholder="Nama" name="nama'.$i.'"
                            />
                        </div>';
                    } ?>
                <button type="submit" class="btn btn-primary btn-lg col-md-2 mt-5" style="float: right;">Next</button>
                </form>
            </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
