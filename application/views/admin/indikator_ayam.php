        <!-- Begin Page Content -->
        <script type="text/javascript">
          $(document).ready(function() {
            $('#tabel').DataTable({
              processing: true,
              serverside: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_indikator_ayam',
                  'dataSrc': ''
              },
              order: [[0, "asc"]],
              columns: [
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
                                  '<a class="btn btn-primary btn-sm" href="<?=base_url()?>admin/indikator_ayam/edit/'+data+'">'+
                                  '<i class="fa fa-fw fa-edit"></i></a>'+
                                  '&nbsp;'+
                                  '<a class="btn btn-danger btn-sm" href="<?=base_url()?>admin/delete_indikator_ayam/'+data+'">'+
                                  '<i class="fa fa-fw fa-trash"></i></a>'+
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
          <h1 class="h3 mb-4 text-gray-800">Indikator Ayam</h1>

          <a href="<?=base_url('admin/indikator_ayam/tambah')?>">
            <button class="btn btn-success mb-4">+ Indikator</button>
          </a>

          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>Kode</th>
                  <th>Keterangan Indikator</th>
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
