  <!-- Begin Page Content -->
  <div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

    <h2 class="h3 mb-4 ">Skala &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ukuran Peternakan</h2>
    <br>
    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">Buruk &nbsp; &nbsp; &nbsp; Cukup &nbsp; &nbsp;
      &nbsp; &nbsp; Baik &nbsp; </h2>
    <br>
    <div class="row">
      <div class="col-sm-2">
        <h3></h3>
      </div>

      <div class="row col-md-8 d-flex justify-content-center">
        <?php echo validation_errors(); ?>
        <form method="post">
          <?php // for ($i=1; $i <= $_SESSION['responden'] ; $i++) : ?>
            <div class="row">

              <div class="form-group">&lt;5000 ekor &nbsp; <br>
                <div class="form-group">
                  <input name="responden" type="hidden" value="">

                  <input class="mr-2 form-control" type="radio" name="nilai-ahp" id="pilihan-ahp"value="option2">
                </div>
              </div>

              <div class="form-group">
                <label for="pilihan-ahp2"> 5000-10.000 ekor &nbsp; </label>
                <div class="form-group">
                  <input name="responden" type="hidden" value="">

                  <input class="mr-2 form-control" type="radio" name="nilai-ahp" id="pilihan-ahp" value="option2">
                </div>
              </div>


              <div class="form-group">&gt;10.000 ekor<br>
                <div class="form-group">
                  <input name="responden" type="hidden" value="">

                  <input class="mr-2 form-control" type="radio" name="nilai-ahp" id="pilihan-ahp" value="option2">
                </div>
              </div>
            </div>
          <?php // endfor; ?>

        </form>
      </div>
      <br>
      <br>
    </div>
    <button type="button" class="btn btn-primary btn-lg col-md-2" style="float: right;">Simpan</button>
  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->