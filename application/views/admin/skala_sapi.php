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
              columns: [
                  { "data": "id" },
                  { "data": "pertanyaan" },
                  { 
                    data: "entitas",
                    render: function(data, type, full, meta){
                      return data == 1 ? 'Peternak' : data == 2 ? 'RPH' : '-';
                    }
                  },
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

            let tabel2 = $('#tabel2').DataTable({
              processing: true,
              serverside: true,
              scrollX: true,
              autoWidth: true,
              ajax: {
                  'url': '<?= base_url() ?>/admin/get_indikator_sapi',
                  'dataSrc': ''
              },
              order: [[0, "asc"]],
              columns: [
                  { 
                    data: "kode_s_i",
                    width: '100px'
                  },
                  <?php for($i=1; $i<=6; $i++) : ?>
                  { 
                    data: 'pilihan_skala_<?= $i ?>',
                    render: (data) => `<div style="max-width:200px; word-wrap:break-word">${data}</div>`,
                  },
                  <?php endfor ?>
                  {
                    data: 'kode_s_i',
                    searchable: false,
                    orderable: false,
                    width: '50px',
                    render: function(data, type, row, meta){
                      return `
                        <form 
                          data-kode_s_i="${data}"
                          data-pilihan_skala_1="${row.pilihan_skala_1}"
                          data-pilihan_skala_2="${row.pilihan_skala_2}"
                          data-pilihan_skala_3="${row.pilihan_skala_3}"
                          data-pilihan_skala_4="${row.pilihan_skala_4}"
                          data-pilihan_skala_5="${row.pilihan_skala_5}"
                          data-pilihan_skala_6="${row.pilihan_skala_6}"
                        >
                          <button type="submit" class="btn btn-primary btn-sm">
                            <i class="fa fa-fw fa-edit"></i></a>
                          </button>
                        </form>
                      `;
                    }

                  },
              ],
              language: {
                  "emptyTable": "Tidak ada data.",
              }

            });

            $('#tabel2').submit((e) => {
              e.preventDefault()
              let data = $(e.target).data()
              fillModal(data)
              $('#editModal').modal('toggle')
            })

            let fillModal = (data) => {
              $('#editModalLabel').text(data.kode_s_i)
              Object.keys(data).forEach((k, i) => {
                $(`#edit_form input[name='${k}']`).val(data[k])
              })
            }

          });
        </script>

        <div class="container-fluid">

          <!-- message -->
          <div><?=$this->session->flashdata('message')?></div>

          <h1 class="h3 mb-4 text-gray-800">Pilihan Skala Sapi</h1>
          <table id="tabel2" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>kode_s_i</th>
                  <th>1</th>
                  <th>2</th>
                  <th>3</th>
                  <th>4</th>
                  <th>5</th>
                  <th>6</th>
                  <th>Action</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
          </table><br><br>

          <h1 class="h3 mb-4 text-gray-800">Pertanyaan Skala Sapi</h1>
          <table id="tabel" class="table table-hover" width="100%">
            <thead>
                <tr>
                  <th>ID</th>
                  <th>Pertanyaan</th>
                  <th>Entitas</th>
                  <th>Kode (excel)</th>
                  <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>

        </div>
        <!-- /.container-fluid -->

        <!-- MODAL -->

        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form id="edit_form" action="<?= base_url('admin/edit_pilihan_skala_sapi') ?>" method="post">
                  <input type="hidden" name="kode_s_i" value="">
                  <?php for($i=1; $i<=6; $i++) : ?>
                    <label for="">Pilihan <?= $i ?></label>
                    <input type="text" name="pilihan_skala_<?= $i ?>" value="" class="form-control">
                  <?php endfor ?>
                  <br>
                  <button type="submit" class="btn btn-primary">Simpan</button>
                </form>
              </div>
            </div>
          </div>
        </div>

        <!-- MODAL -->

      </div>
      <!-- End of Main Content -->
