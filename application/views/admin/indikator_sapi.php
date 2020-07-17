        <!-- Begin Page Content -->
        <script type="text/javascript">
          $(document).ready(function() {
            $('#tabel').DataTable({
              processing: true,
              serverside: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_indikator_sapi',
                  'dataSrc': ''
              },
              order: [[0, "desc"], [1, "asc"]],
              pageLength: 50,
              columns: [
                  { 
                    "data": "entitas",
                    render: function(data, type, full, meta) {
                      if(data == 2) {
                        return 'RPH';
                      }
                      if(data == 1) {
                        return 'Peternak';
                      }
                    }
                  },
                  { "data": "nama_kriteria" },
                  { "data": "kode_s_i" },
                  { "data": "ket_s_i" },
                  {
                      searchable: false,
                      orderable: false,
                      data: 'id_s_i',
                      render: function(data, type, full, meta){
                          if(type === 'display'){
                              tombol = 
                                '<div class="links">'+
                                  '<a class="btn btn-primary btn-sm" href="<?=base_url()?>admin/indikator_sapi/edit/'+data+'">'+
                                  '<i class="fa fa-fw fa-edit"></i></a>'+
                                  '&nbsp;'+
                                  '<a class="btn btn-danger btn-sm" href="<?=base_url()?>admin/delete_indikator_sapi/'+data+'">'+
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
          <h1 class="h3 mb-4 text-gray-800">Indikator Sapi</h1>

          <a href="<?=base_url('admin/indikator_sapi/tambah')?>">
            <button class="btn btn-success mb-4">+ Indikator</button>
          </a>

          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>Entitas</th>
                  <th>Kriteria</th>
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
