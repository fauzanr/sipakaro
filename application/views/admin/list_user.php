        <!-- Begin Page Content -->
        <script type="text/javascript">
          $(document).ready(function() {
            $('#tabel').DataTable({
              processing: true,
              serverside: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_users',
                  'dataSrc': ''
              },
              order: [0, "asc"],
              pageLength: 50,
              columns: [
                  { "data": "id" },
                  { "data": "name" },
                  { "data": "email" },
                  { 
                    "data": "role_id",
                    render: function(data, type, full, meta) {
                      if(data == 1) {
                        return 'Admin';
                      }
                      if(data == 3) {
                        return 'Dinas';
                      }
                    }
                  },
                  { 
                    "data": "is_active",
                    render: function(data, type, full, meta) {
                      if(data == 1) {
                        return 'Aktif';
                      }
                      if(data == 0) {
                        return 'Belum Aktif';
                      }
                    }
                  },
                  {
                      searchable: false,
                      orderable: false,
                      data: 'id',
                      render: function(data, type, full, meta){
                          if(type === 'display'){
                              tombol = 
                                '<div class="links">'+
                                  '<a class="btn btn-primary btn-sm" href="<?=base_url()?>admin/set_user_role/1/'+data+'">'+
                                  'Admin</a>'+
                                  '&nbsp;'+
                                  '<a class="btn btn-success btn-sm" href="<?=base_url()?>admin/set_user_role/3/'+data+'">'+
                                  'Dinas</a>'+
                                '</div>';                     
                          }
                          return tombol;
                      }

                  },
                  {
                      searchable: false,
                      orderable: false,
                      data: 'id',
                      render: function(data, type, full, meta){
                          if(type === 'display'){
                              tombol = 
                                '<div class="links">'+
                                  '<a class="btn btn-success btn-sm" href="<?=base_url()?>admin/set_active/1/'+data+'">'+
                                  'Aktif</a>'+
                                  '&nbsp;'+
                                  '<a class="btn btn-secondary btn-sm" href="<?=base_url()?>admin/set_active/0/'+data+'">'+
                                  'Non Aktif</a>'+
                                '</div>';                     
                          }
                          return tombol;
                      }

                  },
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
          <h1 class="h3 mb-4 text-gray-800">Daftar User</h1>

          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>ID</th>
                  <th>Nama</th>
                  <th>Email</th>
                  <th>Role</th>
                  <th>Status</th>
                  <th>Ganti Role</th>
                  <th>Ganti Status</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->
