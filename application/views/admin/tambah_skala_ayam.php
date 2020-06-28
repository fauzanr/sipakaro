        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>

          <div class="row mb-4">
            <div class="col">
              <h5>
                Keterangan : <?= $indikator['ket_a_i']; ?> (<?= $indikator['kode_a_i']; ?>)
              </h5>
            </div>
          </div>

            <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>No</th>
                  <th>Keterangan</th>
                  <th>Nilai Skala</th>
                  <th>Deskripsi Skala</th>
                </tr>
            </thead>
            <form action="<?= base_url('admin/add_skala_ayam') ?>" method="POST">
              <tbody>
                  <?php $i = 1 ?>
                  <?php foreach ($keterangan as $k) : ?>
                    <tr>
                      <td><?= $i ?></td>
                      <td>
                          <input type="text" class="form-control" id="keterangan" name="keterangan<?= $i ?>" value="<?= $k ?>" required>
                      </td>
                      <td>
                          <?= $i ?>
                      </td>
                      <td>
                          <input type="text" class="form-control" id="deskripsi" name="deskripsi<?= $i ?>" required>
                      </td>
                    </tr>
                    <?php $i++ ?>
                  <?php endforeach ?>
              </tbody>
            </table>

            <input type="hidden" name="id_a_i" value="<?= $indikator['id_a_i']; ?>" required>
            <input type="submit" class="btn btn-primary float-right mr-3" value="Simpan">
          
          </form>
          <!-- End Form -->

          <a href="<?= base_url().'admin/skala_ayam/edit/'.$indikator['id_a_i'] ?>" class="btn btn-secondary">Kembali</a>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
