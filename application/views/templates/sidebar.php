    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" 
        href="<?php echo base_url(); ?><?php echo($_SESSION['role_id'] === '1' ? 'admin' : NULL) ?><?php echo($_SESSION['role_id'] === '2' ? 'member' : NULL) ?><?php echo($_SESSION['role_id'] === '3' ? 'officer' : NULL) ?>">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SIPAKARO</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Side menu Admin -->
      <?php if ($_SESSION['role_id'] === '1') : ?>
        <!-- Heading -->
          <div class="sidebar-heading">
            Admin
          </div>

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
          <a class="nav-link" href="index.html">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
        </li>
        
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
      <?php endif ?>


      <!-- Side menu Admin -->
      <?php if ($_SESSION['role_id'] === '2') : ?>
        <!-- Heading -->
        <div class="sidebar-heading">
          User
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Components</span>
          </a>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Custom Components:</h6>
              <a class="collapse-item" href="buttons.html">Buttons</a>
              <a class="collapse-item" href="cards.html">Cards</a>
            </div>
          </div>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Utilities</span>
          </a>
          <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Custom Utilities:</h6>
              <a class="collapse-item" href="utilities-color.html">Colors</a>
              <a class="collapse-item" href="utilities-border.html">Borders</a>
              <a class="collapse-item" href="utilities-animation.html">Animations</a>
              <a class="collapse-item" href="utilities-other.html">Other</a>
            </div>
          </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
      <?php endif ?>

      <?php if($_SESSION['role_id'] === '3') : ?>
        <!-- Heading -->
        <div class="sidebar-heading">
          Dinas
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item active">
          <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Perhitungan AHP</span>
          </a>
          <?php if($_SESSION['role_id'] === '3') : ?>
          <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Ayam:</h6>
              <a class="collapse-item" style="font-weight: bold;" href="<?php echo base_url(); ?>officer/input-ahp">Hitung Bobot Indikator</a>
              <a class="collapse-item">Progress: (<?= count($_SESSION['nilai_pengisian_ahp']) ?>/<?= count($section_pagination) ?>)</a>
            <?php foreach ($section_pagination as $s) : ?>
                <a class="collapse-item" href="<?= base_url().'officer/halaman_input_data_ahp/'.$s['id'] ?>"><?= $s['nama_section'] ?></a>
            <?php endforeach ?>
            <div>
            <a href="<?= base_url('officer/insert_pengisian_ahp') ?>"><button class="btn btn-warning py-2">Selesai !</button></a>
            </div>
            </div>
          </div>
            <?php endif ?>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url('officer/rekap_ahp') ?>">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Rekap AHP</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
      <?php endif ?>

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->