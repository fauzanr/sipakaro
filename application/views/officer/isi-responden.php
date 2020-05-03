        <!-- Begin Page Content -->
        <div class="container-fluid">

        <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

        <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center"><?= $title ?></h2>
        <br>

        <div style="text-align: center;">
            <h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Jumlah Responden</h2>
            <?php echo validation_errors(); ?>
            <form action="<?php echo base_url().'officer/input-ahp-2' ?>" method="post">
                <div class="btn-group btn-group-toggle btn-block col-md-8" data-toggle="buttons">
                    <label class="btn btn-primary btn-lg mr-2">
                        <input type="radio" name="options" id="option1" autocomplete="off" value='1'>1
                    </label>
                    <label class="btn btn-primary btn-lg mr-2">
                        <input type="radio" name="options" id="option2" autocomplete="off" value='2'>2
                    </label>
                    <label class="btn btn-primary btn-lg mr-2">
                        <input type="radio" name="options" id="option3" autocomplete="off" value='3'>3
                    </label>
                    <label class="btn btn-primary btn-lg mr-2">
                        <input type="radio" name="options" id="option4" autocomplete="off" value='4'>4
                    </label>
                    <label class="btn btn-primary btn-lg mr-2">
                        <input type="radio" name="options" id="option5" autocomplete="off" value='5'>5
                    </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-lg col-md-2 mt-5" style="float: right;">Next</button>
        </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->