    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('admin') ?>">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SIPAKARO</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
        <div class="sidebar-heading">
          Admin
        </div>

      <!-- Nav Item - Dashboard -->
      <li class="nav-item <?= base_url(uri_string()) == (base_url().'admin') ? 'active' : '' || base_url(uri_string()) == (base_url().'admin/index') ? 'active' : '' ?>">
        <a class="nav-link" href="<?= base_url('admin') ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Nav Item - Users -->
      <li class="nav-item <?= base_url(uri_string()) == (base_url().'admin/users') ? 'active' : ''?>">
        <a class="nav-link" href="<?= base_url('admin/users') ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Users</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
        <div class="sidebar-heading">
          Indikator
        </div>

      <!-- Nav Item - Dashboard -->
      <li class="nav-item <?= base_url(uri_string()) == (base_url().'admin/indikator_ayam') ? 'active' : '' || base_url(uri_string()) == (base_url().'admin/indikator_ayam/tambah') ? 'active' : '' ?>">
        <a class="nav-link" href="<?= base_url('admin/indikator_ayam') ?>">
        <i class="fas fa-fw fa-drumstick-bite"></i>
          <span>Ayam</span></a>
      </li>
      <li class="nav-item <?= base_url(uri_string()) == (base_url().'admin/indikator_sapi') ? 'active' : '' || base_url(uri_string()) == (base_url().'admin/indikator_sapi/tambah') ? 'active' : '' ?>">
        <a class="nav-link" href="<?= base_url('admin/indikator_sapi') ?>">
        <i class="fas fa-fw fa-hippo"></i>
          <span>Sapi</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Skala
      </div>

      <li class="nav-item <?= base_url(uri_string()) == (base_url().'admin/skala_ayam') ? 'active' : '' ?>">
        <a class="nav-link" href="<?= base_url('admin/skala_ayam') ?>">
        <i class="fas fa-fw fa-drumstick-bite"></i>
          <span>Ayam</span></a>
      </li>

      <li class="nav-item <?= base_url(uri_string()) == (base_url().'admin/skala_sapi') ? 'active' : '' ?>">
        <a class="nav-link" href="<?= base_url('admin/skala_sapi') ?>">
          <i class="fas fa-fw fa-hippo"></i>
          <span>Sapi</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->