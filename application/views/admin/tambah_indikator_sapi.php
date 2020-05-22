        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Tambah Indikator Sapi</h1>

          <?= validation_errors() ?>
          <form action="<?=base_url('admin/tambah_indikator_sapi')?>" method="POST">

            <label for="nama_entitas">Entitas</label>
            <select name="id_s_e" id="id_s_e" required>
              <option value="" selected>Pilih</option>
              <?php foreach($entitas as $k) : ?>
                <option value="<?= $k['id_s_e'] ?>"><?= $k['ket_s_e'] ?></option>
              <?php endforeach ?>
            </select>

            <label for="nama_kriteria">Kriteria</label>
            <select name="nama_kriteria" id="nama_kriteria" required>
              <option value="" selected>Pilih</option>
              <?php foreach($kriteria as $k) : ?>
                <option value="<?= $k['nama_kriteria'] ?>"><?= $k['nama_kriteria'] ?></option>
              <?php endforeach ?>
            </select>

            <label for="kode_s_i">Kode Indikator</label>
            <input type="text" id="kode_s_i" name="kode_s_i" required>

            <label for="ket_s_i">Keterangan Indikator</label>
            <textarea id="ket_s_i" name="ket_s_i" rows="4" cols="50" required></textarea>

            <input type="submit" value="Tambah">
          </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
