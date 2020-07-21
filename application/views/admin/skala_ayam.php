        <!-- Begin Page Content -->
        <script type="text/javascript">
          $(document).ready(function() {
            $('#tabel').DataTable({
              processing: true,
              serverside: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_skala_ayam',
                  'dataSrc': ''
              },
              order: [[0, "asc"]],
              pageLength: 50,
              columns: [
                  { "data": "id_a_i" },
                  { "data": "kode_a_i" },
                  { "data": "ket_a_i" },
                  {
                      searchable: false,
                      orderable: false,
                      data: 'id_a_i',
                      render: function(data, type, full, meta){
                          if(type === 'display'){
                              tombol = 
                                '<div class="links">'+
                                  '<a class="btn btn-primary btn-sm" href="<?=base_url()?>admin/skala_ayam/edit/'+data+'">'+
                                  '<i class="fa fa-fw fa-edit"></i></a>'+
                                '</div>';                     
                          }
                          return tombol;
                      }

                  }
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
          <h1 class="h3 mb-4 text-gray-800">Pertanyaan Skala Ayam</h1>

          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>ID</th>
                  <th>Kode (excel)</th>
                  <th>Keterangan</th>
                  <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
