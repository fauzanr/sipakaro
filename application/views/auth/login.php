  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-lg-7">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">SIPAKARO Login</h1>
                  </div>

                  <?= $this->session->flashdata('message'); ?>

                  <?= form_open('/auth', 'class="user"'); ?>
                  <!-- <form class="user" method="post" action="<?= base_url(); ?>/auth"> -->
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Masukkan Username" value="<?= set_value('email'); ?>">
                      <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Masukkan Password" value="<?= set_value('password'); ?>">
                      <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Login
                    </button>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="<?= base_url(); ?>auth/register">Buat akun baru!</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="<?= base_url(); ?>welcome">Kembali ke halaman awal</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>


