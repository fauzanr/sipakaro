        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Edit Indikator Ayam</h1>

          <form action="<?=base_url('admin/edit_indikator_ayam')?>" method="POST">
            <input type="hidden" name="id_a_i" value="<?= $indikator['id_a_i'] ?>">
            <label for="kode_a_i">Kode Indikator</label>
            <input type="text" id="kode_a_i" name="kode_a_i" value="<?=$indikator['kode_a_i']?>" required>
            <label for="ket_a_i">Keterangan Indikator</label>
            <input type="text" id="ket_a_i" name="ket_a_i" value="<?=$indikator['ket_a_i']?>" required>
            <input type="submit" value="Tambah">
          </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
