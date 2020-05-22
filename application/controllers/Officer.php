<?php
	class Officer extends CI_Controller {

		function __construct(){
			parent::__construct();
			if(!isset($_SESSION['role_id']) || $_SESSION['role_id'] != 3) {
				redirect(base_url('login'));;
			}
		}

		// Halaman utama untuk Dinas setelah Login
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

// --------------------------------- AHP - AYAM ---------------------------------

		public function page_rekap_ahp()
		{
			$data['title'] = 'Dashboard Officer';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			$this->db->join('bobot_indikator', 'section.id = bobot_indikator.id_section');
			$data['bobot'] = $this->db->get('section')->result_array();

			// die(print("<pre>".print_r($data['bobot'],true)."</pre>"));
			
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/rekap_ahp', $data);
			$this->load->view('templates/footer');
		}

		// Menuju Halaman AHP
		// Berisi Input banyak responden
		public function input_ahp_satu(){
			if(isset($_SESSION['pengisian_ahp']['responden'])) { // jika sudah ada sesi input AHP
				redirect(base_url().'officer/input-ahp-responden');
			}

			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/isi-responden', $data);
			$this->load->view('templates/footer');
		}

		// Input AHP Form
		// Berisi Input nama responden
		public function input_ahp_dua(){
			if(isset($_SESSION['pengisian_ahp']['responden'])) { //jika sudah input jumlah responden
				redirect(base_url().'officer/input-ahp-responden');
			}
			
			if (!isset($_POST['options'])) { //jika masuk dari url tanpa input
				redirect(base_url().'officer/input-ahp');
			}

			$_SESSION['pengisian_ahp']['responden'] = $this->input->post('options');

			redirect(base_url().'officer/input-ahp-responden');
		}

		public function input_ahp_responden()
		{
			if(isset($_SESSION['pengisian_ahp']['nama1'])) {// jika sudah input nama2 responden
				redirect(base_url().'officer/halaman_input_data_ahp');
			}

			if(!isset($_SESSION['pengisian_ahp']['responden'])) {//jika masuk dari url tanpa jumlah responden
				redirect(base_url().'officer/input-ahp');
			}

			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/isi-nama-responden', $data);
			$this->load->view('templates/footer');
		}

		// Berisi Input nilai AHP
		public function input_ahp_tiga(){
			if (!isset($_POST['nama1'])) { //jika masuk dari url tanpa input
				redirect(base_url().'officer/input-ahp-responden');
			}

			// Validasi
			for($i=1; $i <= $_SESSION['pengisian_ahp']['responden']; $i++){
				$this->form_validation->set_rules('nama'.$i,'Nama','required');
			}

			if($this->form_validation->run() === false){
				redirect(base_url().'officer/input-ahp-responden');
			}else{
				
				// Input nama ke session
				for($i=1; $i <= $_SESSION['pengisian_ahp']['responden'];$i++){
					$_SESSION['pengisian_ahp'] += ['nama'.$i =>  $this->input->post('nama'.$i)];
				}

				$_SESSION['nilai_pengisian_ahp'] = [];
				redirect(base_url().'officer/halaman_input_data_ahp');
			}
		}

		public function halaman_input_data_ahp($section_id = 2){
			if(!isset($_SESSION['pengisian_ahp']['nama1'])) {// jika belum ada responden
				redirect(base_url().'officer/input-ahp-responden');
			}

			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			$data['section_id'] = $section_id;
			$section = $this->Section_model->get_section_by_id($section_id);
			$data['section'] = $section;
			$data['section_pagination'] = $this->Section_model->get_all();
			$data['opsi'] = $this->db->get('opsi_ahp')->result_array();

			if ($section['level0'] == NULL && $section['level1'] == NULL) { // LEVEL ENTITAS
				$data['level'] = 0;
			} else if ($section['level0'] == NULL && $section['level1'] != NULL) { // LEVEL ENTITAS-KRITERIA
				$data['level'] = 1;
				$data['kriteria'] = $this->db->get('kriteria')->result_array();
			} else if ($section['level0'] != NULL && $section['level1'] != NULL) { // LEVEL ENTITAS-KRITERIA-INDIKATOR
				// get entitas
				$data['entitas'] = $this->db->get_where('entitas_ayam', ['ket_a_e' => $section['level0']])->result_array();

				$data['level'] = 2;
				$data['indikator'] = $this->db->get_where('indikator_ayam', ['nama_kriteria' => $section['level1'], 'entitas' => $data['entitas'][0]['id_a_e']])->result_array();
			}

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/isi-nilai-ahp', $data);
			$this->load->view('templates/footer');
		}

		// INPUT DATA KE SESSION
		public function input_data_ahp(){

			$_SESSION['nilai_pengisian_ahp'][$this->input->post('section_id')] = [];
			$_SESSION['indikator'][$this->input->post('section_id')] = [];

			for($i=1 ; $i <= $_POST['counter'] ; $i++){
				$nilai = [
					'nama_responden' => $this->input->post('responden'.$i),
					'nilai_responden' => $this->input->post('nilai-ahp'.$i),
					'kriteria_1' => $this->input->post('kriteria1_'.$i),
					'kriteria_2' => $this->input->post('kriteria2_'.$i),
					'id_pengisi' => $_SESSION['role_id'],
					'id_section' => $this->input->post('section_id'),
				];
				array_push($_SESSION['nilai_pengisian_ahp'][$this->input->post('section_id')], $nilai);
			}
			array_push($_SESSION['indikator'][$this->input->post('section_id')], array('section_id' => $this->input->post('entitas_id')) );

			$this->session->set_flashdata('success', 'berhasil simpan data');
			redirect(base_url('officer/halaman_input_data_ahp/'.$this->input->post('section_id')));
			
		}

		public function insert_pengisian_ahp() {
			if(!isset($_SESSION['nilai_pengisian_ahp']) || !isset($_SESSION['pengisian_ahp'])) {
				echo 'error: empty session';
				return;
			}

			$section = $this->Section_model->get_all();

			if (count($_SESSION['nilai_pengisian_ahp']) != count($section)) {
				echo 'gagal: semua data belum terisi. silahkan selesaikan progress';
				return;
			}

			if (count($_SESSION['nilai_pengisian_ahp']) == count($section)) {

				$data = $_SESSION['nilai_pengisian_ahp'];
				$data_counter = 0;

				foreach($data as $k => $v) {
					$this->Ahp_model->add_ahp($v);
					
					$data_counter += count($v);
				}

				foreach($data as $k => $v) {
					$this->Ahp_model->normalisasi_rpa_peternak($k);
				}

				// $this->session->unset_userdata('pengisian_ahp');
				// $this->session->unset_userdata('nilai_pengisian_ahp');
				// $this->session->unset_userdata('indikator');

				echo 'berhasil input '.$data_counter.' data 😛<br>';
				
				redirect(base_url('officer/rekap_ahp'));
			}

		}

// --------------------------------- AHP - SAPI ---------------------------------

public function page_rekap_ahp_sapi()
{
	$data['title'] = 'Dashboard Officer';
	$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
	
	// $this->db->join('bobot_indikator', 'section.id = bobot_indikator.id_section');
	// $data['bobot'] = $this->db->get('section_sapi')->result_array();

	// die(print("<pre>".print_r($data['bobot'],true)."</pre>"));
	
	$this->load->view('templates/header', $data);
	$this->load->view('templates/sidebar', $data);
	$this->load->view('templates/topbar', $data);
	$this->load->view('officer/sapi/rekap_ahp', $data);
	$this->load->view('templates/footer');
}

// Menuju Halaman AHP
// Berisi Input banyak responden
public function input_ahp_sapi_satu(){
	if(isset($_SESSION['pengisian_ahp_sapi']['responden'])) { // jika sudah ada sesi input AHP
		redirect(base_url().'officer/input-ahp-sapi-responden');
	}

	$data['title'] = 'Perhitungan Bobot Indikator - AHP';
	$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

	$this->load->view('templates/header', $data);
	$this->load->view('templates/sidebar', $data);
	$this->load->view('templates/topbar', $data);
	$this->load->view('officer/sapi/isi-responden', $data);
	$this->load->view('templates/footer');
}

// Input AHP Form
// Berisi Input nama responden
public function input_ahp_sapi_dua(){
	if(isset($_SESSION['pengisian_ahp_sapi']['responden'])) { //jika sudah input jumlah responden
		redirect(base_url().'officer/input-ahp-sapi_responden');
	}
	
	if (!isset($_POST['options'])) { //jika masuk dari url tanpa input
		redirect(base_url().'officer/input-ahp-sapi');
	}

	$_SESSION['pengisian_ahp_sapi']['responden'] = $this->input->post('options');

	redirect(base_url().'officer/input-ahp-sapi-responden');
}

public function input_ahp_sapi_responden()
{
	if(isset($_SESSION['pengisian_ahp_sapi']['nama1'])) {// jika sudah input nama2 responden
		redirect(base_url().'officer/halaman_input_data_ahp_sapi');
	}

	if(!isset($_SESSION['pengisian_ahp_sapi']['responden'])) {//jika masuk dari url tanpa jumlah responden
		redirect(base_url().'officer/input-ahp-sapi');
	}

	$data['title'] = 'Perhitungan Bobot Indikator - AHP';
	$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

	$this->load->view('templates/header', $data);
	$this->load->view('templates/sidebar', $data);
	$this->load->view('templates/topbar', $data);
	$this->load->view('officer/sapi/isi-nama-responden', $data);
	$this->load->view('templates/footer');
}

// Berisi Input nilai AHP
public function input_ahp_sapi_tiga(){
	if (!isset($_POST['nama1'])) { //jika masuk dari url tanpa input
		redirect(base_url().'officer/input-ahp-sapi-responden');
	}

	// Validasi
	for($i=1; $i <= $_SESSION['pengisian_ahp_sapi']['responden']; $i++){
		$this->form_validation->set_rules('nama'.$i,'Nama','required');
	}

	if($this->form_validation->run() === false){
		redirect(base_url().'officer/input-ahp-sapi-responden');
	}else{
		
		// Input nama ke session
		for($i=1; $i <= $_SESSION['pengisian_ahp_sapi']['responden'];$i++){
			$_SESSION['pengisian_ahp_sapi'] += ['nama'.$i =>  $this->input->post('nama'.$i)];
		}

		$_SESSION['nilai_pengisian_ahp_sapi'] = [];
		redirect(base_url().'officer/halaman_input_data_ahp_sapi');
	}
}

public function halaman_input_data_ahp_sapi($section_id = 2){
	if(!isset($_SESSION['pengisian_ahp_sapi']['nama1'])) {// jika belum ada responden
		redirect(base_url().'officer/input-ahp-sapi-responden');
	}

	$data['title'] = 'Perhitungan Bobot Indikator - AHP';
	$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
	
	$data['section_id'] = $section_id;
	$section = $this->db->get_where('section_sapi', ['id' => $section_id])->row_array();
	$data['section'] = $section;
	$data['section_pagination'] = $this->db->get('section_sapi')->result_array();
	$data['opsi'] = $this->db->get('opsi_ahp')->result_array();

	// die(print_r($section));

	if ($section['level0'] == NULL && $section['level1'] == NULL) { // LEVEL ENTITAS
		$data['level'] = 0;
	} else if ($section['level0'] == NULL && $section['level1'] != NULL) { // LEVEL ENTITAS-KRITERIA
		$data['level'] = 1;
		$data['kriteria'] = $this->db->get('kriteria_sapi')->result_array();
	} else if ($section['level0'] != NULL && $section['level1'] != NULL) { // LEVEL ENTITAS-KRITERIA-INDIKATOR
		// get entitas
		$data['entitas'] = $this->db->get_where('entitas_sapi', ['ket_s_e' => $section['level0']])->result_array();

		$data['level'] = 2;
		$data['indikator'] = $this->db->get_where('indikator_sapi', ['nama_kriteria' => $section['level1'], 'entitas' => $data['entitas'][0]['id_s_e']])->result_array();
	}

	$this->load->view('templates/header', $data);
	$this->load->view('templates/sidebar', $data);
	$this->load->view('templates/topbar', $data);
	$this->load->view('officer/sapi/isi-nilai-ahp', $data);
	$this->load->view('templates/footer');
}

// INPUT DATA KE SESSION
public function input_data_ahp_sapi(){

	$_SESSION['nilai_pengisian_ahp_sapi'][$this->input->post('section_id')] = [];
	$_SESSION['indikator_sapi'][$this->input->post('section_id')] = [];

	for($i=1 ; $i <= $_POST['counter'] ; $i++){
		$nilai = [
			'nama_responden' => $this->input->post('responden'.$i),
			'nilai_responden' => $this->input->post('nilai-ahp'.$i),
			'kriteria_1' => $this->input->post('kriteria1_'.$i),
			'kriteria_2' => $this->input->post('kriteria2_'.$i),
			'id_pengisi' => $_SESSION['role_id'],
			'id_section' => $this->input->post('section_id'),
		];
		array_push($_SESSION['nilai_pengisian_ahp_sapi'][$this->input->post('section_id')], $nilai);
	}
	array_push($_SESSION['indikator_sapi'][$this->input->post('section_id')], array('section_id' => $this->input->post('entitas_id')) );

	$this->session->set_flashdata('success', 'berhasil simpan data');
	redirect(base_url('officer/halaman_input_data_ahp_sapi/'.$this->input->post('section_id')));
	
}

public function insert_pengisian_ahp_sapi() {
	if(!isset($_SESSION['nilai_pengisian_ahp_sapi']) || !isset($_SESSION['pengisian_ahp_sapi'])) {
		echo 'error: empty session';
		return;
	}

	$section = $this->db->get('section_sapi')->result_array();

	if (count($_SESSION['nilai_pengisian_ahp_sapi']) != count($section)) {
		echo 'gagal: semua data belum terisi. silahkan selesaikan progress';
		return;
	}

	if (count($_SESSION['nilai_pengisian_ahp_sapi']) == count($section)) {

		$data = $_SESSION['nilai_pengisian_ahp_sapi'];
		$data_counter = 0;

		foreach($data as $k => $v) {
			// $this->Ahp_sapi_model->add_ahp($v);
			
			$data_counter += count($v);
		}

		foreach($data as $k => $v) {
			// $this->Ahp_sapi_model->normalisasi_rpa_peternak($k);
		}

		// $this->session->unset_userdata('pengisian_ahp_sapi');
		// $this->session->unset_userdata('nilai_pengisian_ahp_sapi');
		// $this->session->unset_userdata('indikator_sapi');

		echo 'berhasil input '.$data_counter.' data 😛<br>';
		
		redirect(base_url('officer/rekap_ahp_sapi'));
	}

}


		// Bagian Skala
		public function skalaayam(){
			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			// die(base_url(uri_string()));
			// if(base_url(uri_string()) !== 'anjay'){
			// 	die('mantap');
			// }
			// if(base_url(uri_string()) == base_url()'/officer/skalaayam'){
			// 	die(base_url());
			// 	// die('masok');
			// }

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala/skala-sapi-2', $data);
			$this->load->view('templates/footer');
		}
		
	}
?>