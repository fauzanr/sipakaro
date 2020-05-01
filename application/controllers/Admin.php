<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct(){
		parent::__construct();
		if(!isset($_SESSION['admin_logged_in'])) {
			redirect(base_url('login'));;
		}
	}

	// HALAMAN
	public function index()
	{
		$data['title'] = 'Dashboard Admin';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/index', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_indikator_ayam()	{
		$data['title'] = 'Admin | Indikator Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/indikator_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	public function get_indikator_ayam() {
		$data = $this->db->get('indikator_ayam')->result_array();
		
		echo json_encode($data);
	}

}
