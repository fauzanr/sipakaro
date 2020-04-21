<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Officer extends CI_Controller {

	public function index()
	{
		$data['title'] = 'Dashboard Officer';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('officer/index', $data);
		$this->load->view('templates/footer');
	}
}
