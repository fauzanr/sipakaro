        <!-- Begin Page Content -->
        <script type="text/javascript">
          $(document).ready(function() {
            $('#tabel').DataTable({
              processing: true,
              serverside: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_skala_sapi',
                  'dataSrc': ''
              },
              order: [[0, "asc"]],
              pageLength: 50,
              columns: [
                  { "data": "id" },
                  { "data": "pertanyaan" },
                  { "data": "kode" },
                  {
                      searchable: false,
                      orderable: false,
                      data: 'id',
                      render: function(data, type, full, meta){
                          if(type === 'display'){
                              tombol = 
                                '<div class="links">'+
                                  '<a class="btn btn-primary btn-sm" href="<?=base_url()?>admin/skala_sapi/edit/'+data+'">'+
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
          <h1 class="h3 mb-4 text-gray-800">Pertanyaan Skala Sapi</h1>

          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>ID</th>
                  <th>Pertanyaan</th>
                  <th>Kode (excel)</th>
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
