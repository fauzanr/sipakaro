<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'welcome';

$route['login'] = 'auth';

// ADMIN
$route['admin/index'] = 'admin';

$route['admin/indikator_ayam'] = 'admin/page_indikator_ayam';
$route['admin/indikator_ayam/tambah'] = 'admin/page_tambah_indikator_ayam';
$route['admin/indikator_ayam/edit/(:any)'] = 'admin/page_edit_indikator_ayam/$1';

$route['admin/indikator_sapi'] = 'admin/page_indikator_sapi';
$route['admin/indikator_sapi/tambah'] = 'admin/page_tambah_indikator_sapi';
$route['admin/indikator_sapi/edit/(:any)'] = 'admin/page_edit_indikator_sapi/$1';

$route['admin/kriteria'] = 'admin/page_kriteria';

// USER
$route['user/index'] = 'user';

// DINAS
$route['officer/index'] = 'officer';

$route['officer/input-ahp'] = 'officer/input_ahp_satu';
$route['officer/rekap_ahp'] = 'officer/page_rekap_ahp';
$route['officer/rekap_skala_ayam'] = 'officer/page_rekap_skala_ayam';
$route['officer/skala_keberlanjutan_ayam'] = 'officer/skala_keberlanjutan';

$route['officer/input-ahp-sapi'] = 'officer/input_ahp_sapi_satu';
$route['officer/rekap_ahp_sapi'] = 'officer/page_rekap_ahp_sapi';
$route['officer/rekap_skala_sapi'] = 'officer/page_rekap_skala_sapi';
$route['officer/skala_keberlanjutan_sapi'] = 'officer/skala_keberlanjutan_sapi';


$route['officer/input-ahp'] = 'officer/input_ahp_satu';
$route['officer/rekap_ahp'] = 'officer/page_rekap_ahp';
$route['officer/rekap_skala_ayam'] = 'officer/page_rekap_skala_ayam';
$route['officer/skala_keberlanjutan_ayam'] = 'officer/skala_keberlanjutan';

$route['officer/input-ahp-sapi'] = 'officer/input_ahp_sapi_satu';
$route['officer/rekap_ahp_sapi'] = 'officer/page_rekap_ahp_sapi';
$route['officer/rekap_skala_sapi'] = 'officer/page_rekap_skala_sapi';
$route['officer/skala_keberlanjutan_sapi'] = 'officer/skala_keberlanjutan_sapi';


$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
