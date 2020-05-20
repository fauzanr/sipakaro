        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Tambah Indikator Ayam</h1>

          <?= validation_errors() ?>
          <form action="<?=base_url('admin/tambah_indikator_ayam')?>" method="POST">
          <div class="form-group">
          <label for="nama_kriteria">Kriteria</label>
            <select class="form-control" name="nama_kriteria" id="nama_kriteria" required>
              <option value="" selected>Pilih</option>
              <?php foreach($kriteria as $k) : ?>
                <option value="<?= $k['nama_kriteria'] ?>"><?= $k['nama_kriteria'] ?></option>
              <?php endforeach ?>
            </select>
          </div>
          <div class="form-group">
          <label for="kode_a_i">Kode Indikator</label>
            <input class="form-control" type="text" id="kode_a_i" name="kode_a_i" required>
          </div>
          <div class="form-group">
          <label for="ket_a_i">Keterangan Indikator</label>
            <textarea class="form-control" id="ket_a_i" name="ket_a_i" rows="4" cols="50" required></textarea>
          </div>  
            
            <input class="btn btn-primary btn-lg col-md-2" style="float: right;" type="submit" value="Tambah">
          </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
