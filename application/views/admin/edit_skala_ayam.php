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

          <?php if (count($skala) == NULL) : ?>
              <p>Nilai Skala belum di atur, silahkan set nilai skala disini</p>
            <div class="row mb-5">
              <a href="<?= base_url().'admin/skala_ayam/tambah/'.$indikator['id_a_i'] ?>" class="btn btn-primary ml-2">Set Nilai Skala</a>
            </div>
          <?php else : ?>
            <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>No</th>
                  <th>Keterangan</th>
                  <th>Nilai Skala</th>
                  <th>Deskripsi Skala</th>
                </tr>
            </thead>
            <form action="<?= base_url('admin/edit_skala_ayam') ?>" method="POST">
              <tbody>
                  <?php $i = 1; ?>
                  <?php foreach($skala as $s) : ?>
                    <tr>
                      <td><?= $i ?></td>
                      <td><?= $s['keterangan'] ?></td>
                      <td><?= $s['nilai_skala'] ?></td>
                      <td>
                          <input type="hidden" name="id<?= $i ?>" value="<?= $s['id'] ?>" required>
                          <input type="text" class="form-control" id="pertanyaan" name="pertanyaan<?= $i ?>" value="<?= $s['deskripsi_skala'] ?>" required>
                      </td>
                    </tr>
                    <?php $i++; ?>
                  <?php endforeach ?>
              </tbody>
          </table>

          <input type="hidden" name="indikator" value="<?= $s['id_indikator'] ?>" required>
          <input type="submit" class="btn btn-primary float-right mr-3" value="Simpan">
          
          </form>
          <!-- End Form -->
          <?php endif; ?>

          <a href="<?= base_url().'admin/skala_ayam' ?>" class="btn btn-secondary">Kembali</a>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
