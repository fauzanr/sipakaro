<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		if (isset($_SESSION['email']) && isset($_SESSION['role_id'])) {
			if ($_SESSION['role_id'] == 1) {
				redirect(base_url('admin'));
			} else if ($_SESSION['role_id'] == 3) {
				redirect(base_url('officer'));
			}
		}

	}
	public function index()
	{
		redirect(base_url('login'));
	}
}
