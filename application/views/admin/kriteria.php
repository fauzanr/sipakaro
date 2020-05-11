        <!-- Begin Page Content -->
        <script type="text/javascript">
          $(document).ready(function() {
            $('#tabel').DataTable({
              processing: true,
              serverside: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_kriteria',
                  'dataSrc': ''
              },
              order: [[0, "asc"]],
              columns: [
                  { "data": "nama_kriteria" },
                  { "data": "ket_kriteria" },
              ],
              language: {
                  "emptyTable": "Tidak ada data.",
              }
            });
          });
        </script>

        <div class="container-fluid">

          <!-- message -->
          <div><?=$this->session->flashdata('message')?></div>

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Kriteria</h1>

          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>Kriteria</th>
                  <th>Keterangan Kriteria</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
