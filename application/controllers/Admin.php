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

	// public function page_kriteria()	{
	// 	$data['title'] = 'Admin | Kriteria';
	// 	$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
	// 	$this->load->view('admin/templates/header', $data);
	// 	$this->load->view('admin/templates/sidebar', $data);
	// 	$this->load->view('admin/templates/topbar', $data);
	// 	$this->load->view('admin/kriteria', $data);
	// 	$this->load->view('admin/templates/footer');
	// }

	public function page_users()	{
		$data['title'] = 'Admin | Users';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/list_user', $data);
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
		$data['entitas'] = $this->db->get('entitas_ayam')->result_array();
		$data['kriteria'] = $this->db->get('kriteria')->result_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/tambah_indikator_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_edit_indikator_ayam($id)	{
		$data['title'] = 'Admin | Tambah Indikator Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['entitas'] = $this->db->get('entitas_ayam')->result_array();
		$data['kriteria'] = $this->db->get('kriteria')->result_array();
		$data['indikator'] = $this->db->get_where('indikator_ayam', ['id_a_i' => $id])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/edit_indikator_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_indikator_sapi()	{
		$data['title'] = 'Admin | Indikator Sapi';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/indikator_sapi', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_tambah_indikator_sapi()	{
		$data['title'] = 'Admin | Tambah Indikator Sapi';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['entitas'] = $this->db->get('entitas_sapi')->result_array();
		$data['kriteria'] = $this->db->get('kriteria_sapi')->result_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/tambah_indikator_sapi', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_edit_indikator_sapi($id)	{
		$data['title'] = 'Admin | Tambah Indikator Sapi';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		$data['entitas'] = $this->db->get('entitas_sapi')->result_array();
		$data['kriteria'] = $this->db->get('kriteria_sapi')->result_array();
		$data['indikator'] = $this->db->get_where('indikator_sapi', ['id_s_i' => $id])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/edit_indikator_sapi', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_skala_sapi()	{
		$data['title'] = 'Admin | Skala Sapi';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/skala_sapi', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_edit_skala_sapi($id)	{
		$data['title'] = 'Admin | Edit Skala Sapi';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$data['skala'] = $this->db->get_where('opsi_skala_sapi', ['id' => $id])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/edit_skala_sapi', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_skala_ayam()	{
		$data['title'] = 'Admin | Skala Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/skala_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_edit_skala_ayam($id)	{
		$data['title'] = 'Admin | Edit Skala Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		$data['skala'] = $this->db->get_where('opsi_skala_ayam', ['id_indikator' => $id])->result_array();
		$data['indikator'] = $this->db->get_where('indikator_ayam', ['id_a_i' => $id])->row_array();
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/edit_skala_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	public function page_add_skala_ayam($id)	{
		$data['title'] = 'Admin | Tambah Skala Ayam';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

		// $data['skala'] = $this->db->get_where('opsi_skala_ayam', ['id_indikator' => $id])->result_array();
		$data['indikator'] = $this->db->get_where('indikator_ayam', ['id_a_i' => $id])->row_array();

		$data['keterangan'] = array('Sangat Buruk', 'Buruk', 'Cukup', 'Baik', 'Sangat Baik');
		
		$this->load->view('admin/templates/header', $data);
		$this->load->view('admin/templates/sidebar', $data);
		$this->load->view('admin/templates/topbar', $data);
		$this->load->view('admin/tambah_skala_ayam', $data);
		$this->load->view('admin/templates/footer');
	}

	// FUNGSI

	// public function get_kriteria() {
	// 	$data = $this->db->get('kriteria')->result_array();
		
	// 	echo json_encode($data);
	// }

	public function get_skala_ayam() {
		$data = $this->db->get('indikator_ayam')->result_array();
		
		echo json_encode($data);
	}

	public function get_skala_sapi() {
		$data = $this->db->get('opsi_skala_sapi')->result_array();
		
		echo json_encode($data);
	}

	public function get_indikator_sapi() {
		$data = $this->db->get('indikator_sapi')->result_array();
		
		echo json_encode($data);
	}

	public function get_users() {
		$data = $this->db->get('user')->result_array();
		
		echo json_encode($data);
	}
	
	public function set_user_role($val, $id)
	{
		if(!$id) return redirect(base_url('admin'));
		if($val == 3) {
			$data['role_id'] = 3;
			$this->db->where('id', $id);
			$this->db->update('user', $data);
		} else if($val == 1) {
			$data['role_id'] = 1;
			$this->db->where('id', $id);
			$this->db->update('user', $data);
		} else if ($val == 2) {
			$data['role_id'] = 2;
			$this->db->where('id', $id);
			$this->db->update('user', $data);
		}

		redirect(base_url('admin/page_users'));
	}
	
	public function set_active($val, $id)
	{
		if(!$id) return redirect(base_url('admin'));
		if($val == 1) {
			$data['is_active'] = 1;
			$this->db->where('id', $id);
			$this->db->update('user', $data);
		} else if($val == 0) {
			$data['is_active'] = 0;
			$this->db->where('id', $id);
			$this->db->update('user', $data);
		}
		redirect(base_url('admin/page_users'));
	}

	public function delete_indikator_sapi($id) {
		try {
			$this->db->where('id_s_i', $id);
			$this->db->delete('indikator_sapi');
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Indikator!</div>');
		} catch (\Throwable $th) {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Terjadi Kesalahan: </div>'.$th);
		}

		redirect(base_url('admin/indikator_sapi'));
	}

	public function tambah_indikator_sapi()	{
		$rules = [
			[
				'field' => 'id_s_e',
				'label' => 'Entitas',
				'rules' => 'required',
			],
			[
				'field' => 'nama_kriteria',
				'label' => 'Nama Kriteria',
				'rules' => 'required',
			],
			[
				'field' => 'kode_s_i',
				'label' => 'Kode Indikator',
				'rules' => 'required',
			],
			[
				'field' => 'ket_s_i',
				'label' => 'Keterangan Indikator',
				'rules' => 'required',
			],
		];

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_tambah_indikator_sapi();
		} else {
			$data = [
				'entitas' => $_POST['id_s_e'],
				'nama_kriteria' => $_POST['nama_kriteria'],
				'kode_s_i' => $_POST['kode_s_i'],
				'ket_s_i' => $_POST['ket_s_i'],
			];

			// die(print_r($data));
	
			try {
				$this->db->insert('indikator_sapi', $data);
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Indikator!</div>');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Terjadi Kesalahan: </div>'.$th);
			}
	
			redirect(base_url('admin/indikator_sapi'));
		}

	}

	public function edit_indikator_sapi()	{
		$rules = [
			[
				'field' => 'id_s_e',
				'label' => 'Entitas',
				'rules' => 'required',
			],
			[
				'field' => 'id_s_i',
				'label' => 'ID indikator',
				'rules' => 'required',
			],
			[
				'field' => 'nama_kriteria',
				'label' => 'Nama Kriteria',
				'rules' => 'required',
			],
			[
				'field' => 'kode_s_i',
				'label' => 'Kode Indikator',
				'rules' => 'required',
			],
			[
				'field' => 'ket_s_i',
				'label' => 'Keterangan Indikator',
				'rules' => 'required',
			],
		];

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_edit_indikator_sapi();
		} else {
			$data['entitas'] = $_POST['id_s_e'];
			$data['nama_kriteria'] = $_POST['nama_kriteria'];
			$data['kode_s_i'] = $_POST['kode_s_i'];
			$data['ket_s_i'] = $_POST['ket_s_i'];
			
			try {
				$this->db->where('id_s_i', $_POST['id_s_i']);
				$this->db->update('indikator_sapi', $data);
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Edit Indikator!</div>');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Terjadi Kesalahan: </div>'.$th);
			}
		}


		redirect(base_url('admin/indikator_sapi'));
	}

	public function get_indikator_ayam() {
		$data = $this->db->get('indikator_ayam')->result_array();
		
		echo json_encode($data);
	}
	
	public function delete_indikator_ayam($id) {
		$data = $this->db->get_where('indikator_ayam', ['id_a_i' => $id])->row_array();
		try {
			$this->db->where('id_a_i', $id);
			$this->db->delete('indikator_ayam');
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Hapus Indikator!</div>');

			// Delete nilai di responden, bobot_indikator, hasil_skala_ayam
			$this->db->where('kriteria_1', $data['kode_a_i']);
			$this->db->or_where('kriteria_2', $data['kode_a_i']);
			$this->db->delete('responden');

			$this->db->where('kriteria', $data['kode_a_i']);
			$this->db->delete('bobot_indikator');

			$this->db->where('indikator', $data['kode_a_i']);
			$this->db->delete('hasil_skala_ayam');

		} catch (\Throwable $th) {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Terjadi Kesalahan: </div>'.$th);
		}

		redirect(base_url('admin/indikator_ayam'));
	}

	public function tambah_indikator_ayam()	{
		$rules = [
			[
				'field' => 'id_a_e',
				'label' => 'Entitas',
				'rules' => 'required',
			],
			[
				'field' => 'nama_kriteria',
				'label' => 'Nama Kriteria',
				'rules' => 'required',
			],
			[
				'field' => 'kode_a_i',
				'label' => 'Kode Indikator',
				'rules' => 'required',
			],
			[
				'field' => 'ket_a_i',
				'label' => 'Keterangan Indikator',
				'rules' => 'required',
			],
		];

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_tambah_indikator_ayam();
		} else {
			$data = [
				'entitas' => $_POST['id_a_e'],
				'nama_kriteria' => $_POST['nama_kriteria'],
				'kode_a_i' => $_POST['kode_a_i'],
				'ket_a_i' => $_POST['ket_a_i'],
			];
			try {
				$this->db->insert('indikator_ayam', $data);

				// Tambah nilai di hasil_skala_ayam, bobot normalisasi dengan nilai 0 semua (kalo memungkinkan)

				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Tambah Indikator!</div>');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Terjadi Kesalahan: </div>'.$th);
			}
	
			redirect(base_url('admin/indikator_ayam'));
		}

	}

	public function edit_indikator_ayam()	{
		$rules = [
			[
				'field' => 'id_a_e',
				'label' => 'Entitas',
				'rules' => 'required',
			],
			[
				'field' => 'id_a_i',
				'label' => 'ID indikator',
				'rules' => 'required',
			],
			[
				'field' => 'nama_kriteria',
				'label' => 'Nama Kriteria',
				'rules' => 'required',
			],
			[
				'field' => 'kode_a_i',
				'label' => 'Kode Indikator',
				'rules' => 'required',
			],
			[
				'field' => 'ket_a_i',
				'label' => 'Keterangan Indikator',
				'rules' => 'required',
			],
		];

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_edit_indikator_ayam();
		} else {
			$data['entitas'] = $_POST['id_a_e'];
			$data['nama_kriteria'] = $_POST['nama_kriteria'];
			$data['kode_a_i'] = $_POST['kode_a_i'];
			$data['ket_a_i'] = $_POST['ket_a_i'];
			
			try {
				$this->db->where('id_a_i', $_POST['id_a_i']);
				$this->db->update('indikator_ayam', $data);
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Edit Indikator!</div>');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Terjadi Kesalahan: </div>'.$th);
			}
		}


		redirect(base_url('admin/indikator_ayam'));
	}

	public function edit_skala_sapi()	{
		$rules = [
			[
				'field' => 'id',
				'label' => 'ID',
				'rules' => 'required',
			],
			[
				'field' => 'pertanyaan',
				'label' => 'Pertanyaan Skala',
				'rules' => 'required',
			],
		];

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_edit_skala_sapi();
		} else {
			$data['pertanyaan'] = $_POST['pertanyaan'];
			
			try {
				$this->db->where('id', $_POST['id']);
				$this->db->update('opsi_skala_sapi', $data);
				$this->session->set_flashdata('message', 'Berhasil edit skala');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', 'Terjadi kesalahan '.$th);
			}
		}


		redirect(base_url('admin/skala_sapi'));
	}

	public function edit_pilihan_skala_sapi() {
		if(!isset($_POST['kode_s_i'])) die(400);

		for($i=1; $i<=6; $i++) {
			$data['pilihan_skala_'.$i] = $_POST['pilihan_skala_'.$i];
		}

		try {
			$this->db->where('kode_s_i', $_POST['kode_s_i']);
			$this->db->update('indikator_sapi', $data);
			$this->session->set_flashdata('message', 'Berhasil edit pilihan skala '.$_POST['kode_s_i']);
		} catch (\Throwable $th) {
			$this->session->set_flashdata('message', 'Terjadi kesalahan '.$th);
		}

		redirect(base_url('admin/skala_sapi'));

	}

	public function edit_skala_ayam(){

		$rules = [];
		// Loop index 1 - 5
		for ($i=1; $i < 6; $i++) { 
			$input = [
				'field' => 'id'.$i,
				'label' => 'ID',
				'rules' => 'required',
			];
			$input2 = [
				'field' => 'pertanyaan'.$i,
				'label' => 'Deskripsi Skala',
				'rules' => 'required',
			];
			array_push($rules, $input);
			array_push($rules, $input2);
		}

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_edit_skala_ayam();
		} else {
			
			try {
				// Loop index 1 - 5
				for ($i=1; $i < 6; $i++) { 
					$data['deskripsi_skala'] = $_POST['pertanyaan'.$i];
					$this->db->where('id', $_POST['id'.$i]);
					$this->db->update('opsi_skala_ayam', $data);
				}
				$this->session->set_flashdata('message', 'Berhasil edit skala');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', 'Terjadi kesalahan '.$th);
			}
		}

		redirect(base_url('admin/skala_ayam/edit/'.$_POST['indikator']));
	}

	public function add_skala_ayam(){

		$rules = [];
		// Loop index 1 - 5
		for ($i=1; $i < 6; $i++) { 
			$input = [
				'field' => 'deskripsi'.$i,
				'label' => 'Deskripsi Skala',
				'rules' => 'required',
			];
			$input2 = [
				'field' => 'keterangan'.$i,
				'label' => 'Keterangan',
				'rules' => 'required',
			];
			array_push($rules, $input);
			array_push($rules, $input2);
		}

		$this->form_validation->set_rules($rules);

		if($this->form_validation->run() == FALSE) {
			$this->page_add_skala_ayam();
		} else {
			
			try {
				// Loop index 1 - 5
				for ($i=1; $i < 6; $i++) { 
					$data['keterangan'] = $_POST['keterangan'.$i];
					$data['deskripsi_skala'] = $_POST['deskripsi'.$i];
					$data['nilai_skala'] = $i;
					$data['id_indikator'] = $_POST['id_a_i'];
					$this->db->insert('opsi_skala_ayam', $data);
				}
				$this->session->set_flashdata('message', 'Berhasil tambah skala');
			} catch (\Throwable $th) {
				$this->session->set_flashdata('message', 'Terjadi kesalahan '.$th);
			}
		}

		redirect(base_url('admin/skala_ayam/edit/'.$_POST['id_a_i']));
	}

}
