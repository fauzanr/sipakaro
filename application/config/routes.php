<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'welcome';

$route['login'] = 'auth';

// ADMIN
$route['admin/index'] = 'admin';

$route['admin/indikator_ayam'] = 'admin/page_indikator_ayam';
$route['admin/indikator_ayam/tambah'] = 'admin/page_tambah_indikator_ayam';
$route['admin/indikator_ayam/edit/(:any)'] = 'admin/page_edit_indikator_ayam/$1';

$route['admin/kriteria'] = 'admin/page_kriteria';

// USER
$route['user/index'] = 'user';

// DINAS
$route['officer/index'] = 'officer';
$route['officer/input-ahp'] = 'officer/input_ahp_satu';
$route['officer/input-ahp-2'] = 'officer/input_ahp_dua';
$route['officer/input-ahp-3'] = 'officer/input_ahp_tiga';
$route['officer/input-ahp-4'] = 'officer/input_data_ahp';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
