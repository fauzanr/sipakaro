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

	public function page_tambah_indikator_ayam()	{
		$data['title'] = 'Admin | Tambah Indikator Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/tambah_indikator_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_edit_indikator_ayam($id)	{
		$data['title'] = 'Admin | Tambah Indikator Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['indikator'] = $this->db->get_where('indikator_ayam', ['id_a_i' => $id])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/edit_indikator_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	// FUNGSI

	public function get_indikator_ayam() {
		$data = $this->db->get('indikator_ayam')->result_array();
		
		echo json_encode($data);
	}
	
	public function delete_indikator_ayam($id) {
		try {
			$this->db->where('id_a_i', $id);
			$this->db->delete('indikator_ayam');
			$this->session->set_flashdata('message', 'Berhasil hapus');
		} catch (\Throwable $th) {
			$this->session->set_flashdata('message', 'Terjadi kesalahan: '.$th);
		}

		redirect(base_url('admin/indikator_ayam'));
	}

	public function tambah_indikator_ayam()	{
		if (!isset($_POST['kode_a_i']) || !isset($_POST['ket_a_i'])) {
			redirect(base_url('admin/indikator_ayam'));
		}

		$data = [
			'kode_a_i' => $_POST['kode_a_i'],
			'ket_a_i' => $_POST['ket_a_i'],
		];

		try {
			$this->db->insert('indikator_ayam', $data);
			$this->session->set_flashdata('message', 'Berhasil tambah indikator');
		} catch (\Throwable $th) {
			$this->session->set_flashdata('message', 'Terjadi kesalahan '.$th);
		}

		redirect(base_url('admin/indikator_ayam'));
	}

	public function edit_indikator_ayam()	{
		if (!isset($_POST['id_a_i'])) {
			redirect(base_url('admin/indikator_ayam'));
		}

		$data = [];

		if (isset($_POST['kode_a_i'])) {
			$data['kode_a_i'] = $_POST['kode_a_i'];
		}

		if (isset($_POST['ket_a_i'])) {
			$data['ket_a_i'] = $_POST['ket_a_i'];
		}

		try {
			$this->db->where('id_a_i', $_POST['id_a_i']);
			$this->db->update('indikator_ayam', $data);
			$this->session->set_flashdata('message', 'Berhasil edit indikator');
		} catch (\Throwable $th) {
			$this->session->set_flashdata('message', 'Terjadi kesalahan '.$th);
		}

		redirect(base_url('admin/indikator_ayam'));
	}

}
