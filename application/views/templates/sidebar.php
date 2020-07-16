    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" 
        href="<?php echo base_url(); ?><?php echo($_SESSION['role_id'] === '1' ? 'admin' : NULL) ?><?php echo($_SESSION['role_id'] === '2' ? 'member' : NULL) ?><?php echo($_SESSION['role_id'] === '3' ? 'officer' : NULL) ?>">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fab fa-stripe-s"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SIPAKARO</div>
      </a>

      <?php if($_SESSION['role_id'] === '3') : ?>
        <!-- Heading -->

       
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Heading -->

        <div class="sidebar-heading">
          Dashboard
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/index') || base_url(uri_string()) == (base_url().'officer') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/index') ?>">
          <i class="fa fa-fw fa-archive"></i>
            <span>Deskripsi</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/panduan') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/panduan') ?>">
          <i class="fa fa-fw fa-info"></i>
            <span>Panduan</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Heading -->
        <div class="sidebar-heading">
          Dinas
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/input_ahp_responden') ? 'active' : '' || base_url(uri_string()) == (base_url().'officer/input-ahp') ? 'active' : '' || isset($_SESSION['pengisian_ahp']) ? 'active' : '' || base_url(uri_string()) == (base_url().'officer/input-ahp-sapi') ? 'active' : '' || base_url(uri_string()) == (base_url().'officer/input_ahp_sapi_responden') ? 'active' : '' || isset($_SESSION['pengisian_ahp_sapi']) ? 'active' : '' ?>">
          <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-calculator"></i>
            <span>Hitung AHP & Skala</span>
          </a>
          <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Ayam:</h6>

                <a class="collapse-item <?= base_url(uri_string()) == (base_url().'officer/halaman_input_data_ahp') ? 'active' : '' || (isset($_SESSION['pengisian_ahp']) && isset($_SESSION['nilai_pengisian_ahp'])) ? 'active' : '' ?>" href="<?php echo base_url(); ?>officer/input-ahp">Hitung Bobot Indikator</a>

                <a class="collapse-item <?= base_url(uri_string()) == (base_url().'officer/halaman_input_skala_ayam') || isset($_SESSION['nilai_pengisian_skala']) ? 'active' : '' ?>" href="<?php echo base_url(); ?>officer/skala_ayam">Hitung Skala</a>

                  <?php if ( (isset($section_pagination) && isset($_SESSION['pengisian_ahp']) && isset($_SESSION['nilai_pengisian_ahp'])) && (base_url(uri_string()) !== base_url().'officer/rekap_ahp') && (base_url(uri_string()) !== base_url().'officer/rekap_ahp_sapi') && (base_url(uri_string()) !== base_url().'officer/input-ahp-sapi') && (base_url(uri_string()) !== base_url().'officer/input_ahp_sapi_responden') && (base_url(uri_string()) !== base_url().'officer') && (base_url(uri_string()) !== base_url().'officer/rekap_skala_sapi') && (base_url(uri_string()) !== base_url().'officer/skala_keberlanjutan_sapi') && (base_url(uri_string()) !== base_url().'officer/rekap_skala_ayam') && (base_url(uri_string()) !== base_url().'officer/skala_keberlanjutan_ayam') ) : ?>
                    
                    <a class="collapse-item">Progress: (<?= count($_SESSION['nilai_pengisian_ahp']) ?>/<?= count($section_pagination) ?>)</a>
                    
                    <?php foreach ($section_pagination as $s) : ?>
                      <a class="collapse-item <?= base_url(uri_string()) == (base_url().'officer/halaman_input_data_ahp/'.$s['id']) ? 'active' : '' ?>" href="<?= base_url().'officer/halaman_input_data_ahp/'.$s['id'] ?>"><?= $s['nama_section'] ?> <?= isset($_SESSION['nilai_pengisian_ahp'][$s['id']]) ? '<i class="fa fa-check"></i>' : '' ?></a>
                    <?php endforeach ?>
                    <a href="<?= base_url('officer/reset_session_ahp/ayam') ?>"><button class="btn btn-danger m-4">Reset pengisian</button></a>
                  <?php endif; ?>

                  <?php if (isset($_SESSION['nilai_pengisian_skala'])) : ?>
                    <a href="<?= base_url('officer/reset_session_ahp/ayam') ?>"><button class="btn btn-danger m-4">Reset pengisian</button></a>
                  <?php endif ?>

              <h6 class="collapse-header">Sapi:</h6>
                <a class="collapse-item <?= base_url(uri_string()) == (base_url().'officer/halaman_input_data_ahp_sapi') ? 'active' : '' || (isset($_SESSION['pengisian_ahp_sapi']) && isset($_SESSION['nilai_pengisian_ahp_sapi'])) ? 'active' : '' ?>" href="<?php echo base_url(); ?>officer/input-ahp-sapi">Hitung Bobot Indikator</a>
                <?php if ( (isset($section_pagination) && isset($_SESSION['pengisian_ahp_sapi']) && isset($_SESSION['nilai_pengisian_ahp_sapi'])) && (base_url(uri_string()) !== base_url().'officer/rekap_ahp') && (base_url(uri_string()) !== base_url().'officer/rekap_ahp_sapi') && (base_url(uri_string()) !== base_url().'officer/input-ahp') && (base_url(uri_string()) !== base_url().'officer/input_ahp_responden') && (base_url(uri_string()) !== base_url().'officer') && (base_url(uri_string()) !== base_url().'officer/rekap_skala_sapi') && (base_url(uri_string()) !== base_url().'officer/skala_keberlanjutan_sapi') && (base_url(uri_string()) !== base_url().'officer/rekap_skala_ayam') && (base_url(uri_string()) !== base_url().'officer/skala_keberlanjutan_ayam') ) : ?>
                  <a class="collapse-item">Progress: (<?= count($_SESSION['nilai_pengisian_ahp_sapi']) ?>/<?= count($section_pagination) ?>)</a>
                  <?php foreach ($section_pagination as $s) : ?>
                      <a class="collapse-item <?= base_url(uri_string()) == (base_url().'officer/halaman_input_data_ahp_sapi/'.$s['id']) ? 'active' : '' ?>" href="<?= base_url().'officer/halaman_input_data_ahp_sapi/'.$s['id'] ?>"><?= $s['nama_section'] ?> <?= isset($_SESSION['nilai_pengisian_ahp_sapi'][$s['id']]) ? '<i class="fa fa-check"></i>' : '' ?></a>
                  <?php endforeach ?>
                  <a href="<?= base_url('officer/reset_session_ahp/sapi') ?>"><button class="btn btn-danger m-4">Reset pengisian</button></a>
                  <a class="ml-4" href="<?= base_url('officer/insert_pengisian_ahp_sapi') ?>"><button class="btn btn-warning">Selesai "!"</button></a>
                <?php endif; ?>
                <a class="collapse-item <?= base_url(uri_string()) == (base_url().'officer/skala_sapi') || isset($_SESSION['nilai_skala_sapi']) ? 'active' : '' ?>" href="<?php echo base_url(); ?>officer/skala_sapi">Hitung Skala</a>
                
            </div>
            
          </div>
          
        </li>
        

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading Hasil Ayam -->
        <div class="sidebar-heading">
          Hasil Ayam
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/rekap_ahp') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/rekap_ahp') ?>">
          <i class="fa fa-fw fa-file"></i>
            <span>Rekap AHP</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/rekap_skala_ayam') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/rekap_skala_ayam') ?>">
            <i class="fas fa-fw fa-balance-scale"></i>
            <span>Rekap Skala</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/skala_keberlanjutan_ayam') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/skala_keberlanjutan_ayam') ?>">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Hasil Skala Keberlanjutan</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading Hasil Sapi -->
        <div class="sidebar-heading">
          Hasil Sapi
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/rekap_ahp_sapi') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/rekap_ahp_sapi') ?>">
          <i class="fa fa-fw fa-file"></i>
            <span>Rekap AHP</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/rekap_skala_sapi') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/rekap_skala_sapi') ?>">
          <i class="fas fa-fw fa-balance-scale"></i>
            <span>Rekap Skala</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item <?= base_url(uri_string()) == (base_url().'officer/skala_keberlanjutan_sapi') ? 'active' : '' ?>">
          <a class="nav-link" href="<?= base_url('officer/skala_keberlanjutan_sapi') ?>">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Hasil Skala Keberlanjutan</span></a>
        </li>

      <?php endif ?>

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
