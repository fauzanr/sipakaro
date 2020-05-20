        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Edit Indikator Ayam</h1>
          <form action="<?=base_url('admin/edit_indikator_ayam')?>" method="POST">

          <form>
  <!-- <div class="form-group">
    <input class="form-control" type="hidden" name="id_a_i" value="<?= $indikator['id_a_i'] ?>">
    <label for="nama_kriteria">Kriteria</label>
            <select class name="nama_kriteria" id="nama_kriteria" required>
              <option value="" selected>Pilih</option>
              <?php foreach($kriteria as $k) : ?>
                <option value="<?= $k['nama_kriteria'] ?>" <?= $k['nama_kriteria'] == $indikator['nama_kriteria'] ? 'selected' : '' ?>><?= $k['nama_kriteria'] ?></option>
              <?php endforeach ?>
            </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Example select</label>
    <select class="form-control" id="exampleFormControlSelect1">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">Example multiple select</label>
    <select multiple class="form-control" id="exampleFormControlSelect2">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Example textarea</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
</form> -->

          <div class="form-group">
            <input class="form-control" type="hidden" name="id_a_i" value="<?= $indikator['id_a_i'] ?>">
            <label for="nama_kriteria">Kriteria</label>
            <select class="form-control" name="nama_kriteria" id="nama_kriteria" required>
              <option value="" selected>Pilih</option>
              <?php foreach($kriteria as $k) : ?>
                <option value="<?= $k['nama_kriteria'] ?>" <?= $k['nama_kriteria'] == $indikator['nama_kriteria'] ? 'selected' : '' ?>><?= $k['nama_kriteria'] ?></option>
              <?php endforeach ?>
            </select>
            </div>
            <div class="form-group">
            <label for="kode_a_i">Kode Indikator</label>
            <input class="form-control" type="text" id="kode_a_i" name="kode_a_i" value="<?=$indikator['kode_a_i']?>" required>
            </div>
            <div class="form-group">
            <label for="ket_a_i">Keterangan Indikator</label>
            <textarea class="form-control" id="ket_a_i" name="ket_a_i" rows="3" required><?=$indikator['ket_a_i']?></textarea>
            </div>
            <br>
            <input type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;" value="Simpan">
          </form>
          

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
