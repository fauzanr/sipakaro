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
          <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Ayam:</h6>
              <a class="collapse-item" href="<?php echo base_url(); ?>officer/input-ahp">Hitung Bobot Indikator</a>
              <h6 class="collapse-header">Sapi:</h6>
              <a class="collapse-item" href="<?php echo base_url(); ?>officer/input-ahp-sapi">Hitung Bobot Indikator</a>
            </div>
          </div>
        </li>
        
        <!-- Nav Item - Charts -->
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url('officer/rekap_ahp') ?>">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Rekap AHP Ayam</span></a>
        </li>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url('officer/rekap_ahp_sapi') ?>">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Rekap AHP Sapi</span></a>
        </li>

      <?php endif ?>

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->