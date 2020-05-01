<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'welcome';

$route['login'] = 'auth';

// ADMIN
$route['admin/index'] = 'admin';
$route['admin/indikator_ayam'] = 'admin/page_indikator_ayam';

// USER
$route['user/index'] = 'user';

$route['officer/index'] = 'officer';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
