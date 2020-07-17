        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Edit Pertanyaan Skala Sapi</h1>

          <form action="<?=base_url('admin/edit_skala_sapi')?>" method="POST">
            <input type="hidden" name="id" value="<?= $skala['id'] ?>" required>

            <label for="pertanyaan">Pertanyaan Skala</label>
            <input type="text" id="pertanyaan" name="pertanyaan" value="<?=$skala['pertanyaan']?>" required>

            <input type="submit" value="Simpan">
          </form>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
