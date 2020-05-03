<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'welcome';

$route['login'] = 'auth';

$route['admin/index'] = 'admin';

$route['user/index'] = 'user';

$route['officer/index'] = 'officer';
$route['officer/input-ahp'] = 'officer/input_ahp_satu';
$route['officer/input-ahp-2'] = 'officer/input_ahp_dua';
$route['officer/input-ahp-3'] = 'officer/input_ahp_tiga';
$route['officer/input-ahp-4'] = 'officer/input_data_ahp';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
