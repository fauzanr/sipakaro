<?php
	class Officer extends CI_Controller {

		function __construct(){
			parent::__construct();
			if(!isset($_SESSION['role_id']) || $_SESSION['role_id'] != 3) {
				redirect(base_url('login'));
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
				redirect(base_url().'officer/input_ahp_responden');
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
				redirect(base_url().'officer/input_ahp_responden');
			}
			
			if (!isset($_POST['options'])) { //jika masuk dari url tanpa input
				redirect(base_url().'officer/input-ahp');
			}

			$_SESSION['pengisian_ahp']['responden'] = $this->input->post('options');

			redirect(base_url().'officer/input_ahp_responden');
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
				redirect(base_url().'officer/input_ahp_responden');
			}

			// Validasi
			for($i=1; $i <= $_SESSION['pengisian_ahp']['responden']; $i++){
				$this->form_validation->set_rules('nama'.$i,'Nama','required');
			}

			if($this->form_validation->run() === false){
				redirect(base_url().'officer/input_ahp_responden');
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
				redirect(base_url().'officer/input_ahp_responden');
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

		// Input data ke database
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

				$this->session->unset_userdata('nilai_pengisian_ahp');
				$this->session->unset_userdata('indikator');

				// die('berhasil input '.$data_counter.' data 😛<br>');

				// Ke halaman Skala Ayam
				redirect(base_url('officer/halaman_input_skala_ayam'));
			}

		}

		// --------------------------------- AHP - SAPI ---------------------------------

		public function page_rekap_ahp_sapi()
		{
			$data['title'] = 'Dashboard Officer';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			$this->db->join('bobot_indikator_sapi', 'section_sapi.id = bobot_indikator_sapi.id_section');
			$data['bobot'] = $this->db->get('section_sapi')->result_array();

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
				redirect(base_url().'officer/input_ahp_sapi_responden');
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

			redirect(base_url().'officer/input_ahp_sapi_responden');
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
				redirect(base_url().'officer/input_ahp_sapi_responden');
			}

			// Validasi
			for($i=1; $i <= $_SESSION['pengisian_ahp_sapi']['responden']; $i++){
				$this->form_validation->set_rules('nama'.$i,'Nama','required');
			}

			if($this->form_validation->run() === false){
				redirect(base_url().'officer/input_ahp_sapi_responden');
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
				redirect(base_url().'officer/input_ahp_sapi_responden');
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

				$this->load->model('Ahp_sapi_model');

				foreach($data as $k => $v) {
					$this->Ahp_sapi_model->add_ahp($v);
					
					$data_counter += count($v);
				}

				foreach($data as $k => $v) {
					$this->Ahp_sapi_model->normalisasi_rpa_peternak($k);
				}

				// $this->session->unset_userdata('pengisian_ahp_sapi');
				$this->session->unset_userdata('nilai_pengisian_ahp_sapi');
				$this->session->unset_userdata('indikator_sapi');

				redirect(base_url('officer/skala_sapi'));
			}

		}

		// -------- SKALA AYAM ----------------------------------------------------------------------//
		public function halaman_input_skala_ayam($entitas = 'Peternak', $indikator = NULL){
			if(!isset($_SESSION['pengisian_ahp']['nama1'])) {// jika belum ada responden
				redirect(base_url().'officer/input_ahp_responden');
			}
			
			$data['title'] = 'Perhitungan Skala Ayam - '.$entitas;
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			// Entitas
			$data['entitas'] = $this->db->get_where('entitas_ayam', ['ket_a_e' => $entitas])->row_array();

			// Buat pagination
			$this->db->select('kode_a_i, nama_kriteria, id_a_i');
			$data['pagination'] = $this->db->get_where('indikator_ayam', ['entitas' => $data['entitas']['id_a_e']])->result_array();

			// Indikator
			if($indikator != NULL){
				$data['indikator'] = $this->db->get_where('indikator_ayam', ['entitas' => $data['entitas']['id_a_e'], 'kode_a_i' => $indikator])->row_array();
			}else {
				$data['indikator'] = $this->db->get_where('indikator_ayam', ['entitas' => $data['entitas']['id_a_e'], 'kode_a_i' => $data['pagination'][0]['kode_a_i']] )->row_array();
			}

			// Opsi skala
			$data['opsi'] = $this->db->get_where('opsi_skala_ayam', ['id_indikator' => $data['indikator']['id_a_i'] ])->result_array();
			
			if($data['opsi'] == NULL){
				$data['opsi'] = 'Error, tidak ada opsi untuk kategori ini';
			}

			// Menghitung jumlah entitas peternak
			if($entitas == 'RPA'){
				$id = $this->db->get_where('entitas_ayam', ['ket_a_e' => 'Peternak'])->row_array();
				$jumlah_entitas = $this->db->get_where('indikator_ayam', ['entitas' => $id['id_a_e']])->result_array();
				$data['jumlah_entitas_peternak'] = count($jumlah_entitas);
			}
			
			// die(print("<pre>".print_r($data,true)."</pre>"));
			// $data['opsi'] = $this->db->get('opsi_ahp')->result_array();

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala/skala-ayam-2', $data);
			$this->load->view('templates/footer');
		}


		// INPUT DATA SKALA KE SESSION
		public function input_data_skala_ayam(){

			$_SESSION['nilai_pengisian_skala'][$this->input->post('indikator-id')] = [];
			$_SESSION['progress_pengisian_skala'] = [];

			$this->db->select('id');
			$id_pengisi = $this->db->get_where('user', ['email' => $_SESSION['email']])->row_array();

			for($i=1 ; $i <= $_POST['counter'] ; $i++){
				$nilai = [
					'id_pengisi' => $id_pengisi['id'],
					'nama_responden' => $this->input->post('responden'.$i),
					'nilai_skala' => $this->input->post('nilai-skala'.$i),
					'indikator' => $this->input->post('indikator-id'),
					'entitas' => $this->input->post('entitas-id')
				];
				array_push($_SESSION['nilai_pengisian_skala'][$this->input->post('indikator-id')], $nilai);
			}
			$_SESSION['progress_pengisian_skala'] = ['entitas' => $this->input->post('entitas')];

			$this->session->set_flashdata('success', 'berhasil simpan data');
			
			redirect(base_url('officer/halaman_input_skala_ayam/'.$this->input->post('entitas').'/'.$this->input->post('indikator')));
			
		}

		public function insert_pengisian_skala_ayam() {
			if(!isset($_SESSION['nilai_pengisian_skala']) || !isset($_SESSION['pengisian_ahp'])) {
				echo 'error: empty session';
				return;
			}

			if($_SESSION['progress_pengisian_skala']['entitas'] == 'RPA'){
				$section = $this->db->get('indikator_ayam')->result_array();
			}elseif ($_SESSION['progress_pengisian_skala']['entitas'] == 'Peternak') {
				$id = $this->db->get_where('entitas_ayam', ['ket_a_e' => $_SESSION['progress_pengisian_skala']['entitas']] )->row_array();
				$section = $this->db->get_where('indikator_ayam', ['entitas' => $id['id_a_e']])->result_array();
			}

			// die('session data total = '.count($_SESSION['nilai_pengisian_skala']).'<br>indikator total  = '. count($section));

			if (count($_SESSION['nilai_pengisian_skala']) != count($section)) {
				echo 'gagal: semua data belum terisi. silahkan selesaikan progress';
				return;
			}

			if (count($_SESSION['nilai_pengisian_skala']) == count($section)) {

				if($_SESSION['progress_pengisian_skala']['entitas'] == 'Peternak'){
					
					redirect(base_url('officer/halaman_input_skala_ayam/RPA'));

				}elseif ($_SESSION['progress_pengisian_skala']['entitas'] == 'RPA') {
					$data = $_SESSION['nilai_pengisian_skala'];
					$data_counter = 0;
	
					foreach($data as $k => $v) {
						$this->Ahp_model->input_nilai_skala($v);
						
						$data_counter += count($v);
					}
	
					// Masuk ke fungsi Hitung Skala
					$this->Ahp_model->hitung_nilai_skala();
	
					$this->session->unset_userdata('pengisian_ahp');
					$this->session->unset_userdata('nilai_pengisian_skala');
					$this->session->unset_userdata('progress_pengisian_skala');
	
					echo 'berhasil input '.$data_counter.' data 😛<br>';
					// redirect(base_url('officer'));
				}
			}

		}

		// Rekap Skala ayam
		public function page_rekap_skala_ayam(){
			$data['title'] = 'Hasil Rekapan Skala Ayam';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$data['rekap_peternak'] = $this->db->get_where('hasil_skala_ayam', ['entitas' => 'Peternak'])->result_array();
			$data['rekap_rpa'] = $this->db->get_where('hasil_skala_ayam', ['entitas' => 'RPA'])->result_array();

			// die(print('<pre>'.print_r($data,true).'</pre>'));

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala/skala-ayam-5', $data);
			$this->load->view('templates/footer');
		}
		
		// ===================================== SKALA 🐄🐮 =========================================

		// halaman input skala nominal
		public function skala_sapi($entitas = 1){
			// $this->start_sess();

			if ($entitas != 1 && $entitas != 2) {
				echo '404';return;
			}

			if(!isset($_SESSION['pengisian_ahp_sapi']['nama1'])) {
				redirect(base_url('officer/input-ahp-sapi'));
			}

			$data['title'] = 'Perhitungan Skala Sapi';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$data['entitas'] = $entitas;
			$data['pertanyaan'] = $this->db->get_where('opsi_skala_sapi', ['entitas' => $entitas])->result_array();

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala/skala-sapi-1', $data);
			$this->load->view('templates/footer');
		}

		// input skala nominal ke $_SESSION
		public function input_skala_sapi() {
			$entitas = array_pop($_POST);
			foreach ($_POST as $p => $v) {
				$_SESSION['nilai_skala_sapi'][$p] = $v;
			}

			redirect('officer/skala_sapi_2/'.$entitas);
		}

		// halaman input skala 2
		public function skala_sapi_2($entitas = 1) {
			// $this->start_sess();

			if ($entitas != 1 && $entitas != 2) {
				echo '404';return;
			}

			if(!isset($_SESSION['pengisian_ahp_sapi']['nama1'])) {
				// redirect(base_url('officer/input-ahp-sapi'));
			}

			$data['title'] = 'Perhitungan Skala Sapi';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$data['entitas'] = $entitas;

			$this->db->order_by('kode_s_i', 'ASC');
			$data['indikator'] = $this->db->get_where('indikator_sapi', ['entitas' => $entitas])->result_array();

			$s = $_SESSION['nilai_skala_sapi'];

			foreach($data['indikator'] as $i) {

				switch ($i['kode_s_i']) {

					// PETERNAK
					case $i['kode_s_i'] === 'PE1':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B6'] * $s['B7'] / $s['B8'];
							break;
					case $i['kode_s_i'] === 'PE2':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = ($s['B9'] / $s['B8']) * 1/100;
							break;
					case $i['kode_s_i'] === 'PE3':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = (12 * $s['B10'] * $s['B13']) / ($s['B11'] * $s['B12']);
							break;
					case $i['kode_s_i'] === 'PE4':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B14'] / $s['B6'] * 1/100;
							break;
					case $i['kode_s_i'] === 'PS1':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B15'] / $s['B8'];
							break;
					case $i['kode_s_i'] === 'PS2':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B16'] / $s['B15'];
							break;
					case $i['kode_s_i'] === 'PS3':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B17'] / $s['B15'];
							break;
					case $i['kode_s_i'] === 'PS4':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B18'] / $s['B6'];
							break;
					case $i['kode_s_i'] === 'PL1':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B19'] * $s['B6'] * 12;
							break;
					case $i['kode_s_i'] === 'PL2':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B20'] * $s['B6'];
							break;
					case $i['kode_s_i'] === 'PL3':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = ($s['B21'] / $s['B22']) * $s['B23'];
							break;
					
					// RPH
					case $i['kode_s_i'] === 'RE1':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = ((($s['B31'] * $s['B29']) - $s['B30']) * $s['B28']) / $s['B32'];
							break;
					case $i['kode_s_i'] === 'RE2':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = ($s['B28'] * 12 * $s['B29']) / ($s['B33'] * $s['B34']);
							break;
					case $i['kode_s_i'] === 'RS1':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B32'] / $s['B35'];
							break;
					case $i['kode_s_i'] === 'RS2':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B36'] / $s['B32'];
							break;
					case $i['kode_s_i'] === 'RS3':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = ($s['B37'] / $s['B32']) * 1/100;
							break;
					case $i['kode_s_i'] === 'RS4':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B39'] / ($s['B28'] * 12);
							break;
					case $i['kode_s_i'] === 'RL1':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B40'] * 30 * 12;
							break;
					case $i['kode_s_i'] === 'RL2':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = $s['B41'] * 30 * 12;
							break;
					case $i['kode_s_i'] === 'RL3':
							$_SESSION['output_skala_sapi'][$i['kode_s_i']]['performansi_lapangan'] = ($s['B42'] * $s['B43']) * $s['B44'];
							break;

				}

			}

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala/skala-sapi-2', $data);
			$this->load->view('templates/footer');
		}

		// input skala hasil ke $_SESSION
		public function input_skala_sapi_2() {
			$entitas = array_pop($_POST);
			foreach ($_POST as $p => $v) {
				$_SESSION['output_skala_sapi'][$p]['kode_indikator'] = $p;
				$_SESSION['output_skala_sapi'][$p]['skor_indikator'] = $v;
				$_SESSION['output_skala_sapi'][$p]['nilai_skala'] = 100 / 6 * $v;
				$_SESSION['output_skala_sapi'][$p]['entitas'] = $entitas;
			}

			if($entitas == 1) { // kalau peternak lanjut ke rph

				redirect('officer/skala_sapi/2');

			} else if ($entitas == 2) { // Masukin DB

				if(!isset($_SESSION['pengisian_ahp_sapi']) || !isset($_SESSION['output_skala_sapi'])) {
					echo 'error: empty session';
					return;
				}

				$counter = 0;
				$data = $_SESSION['output_skala_sapi'];

				$this->load->model('Ahp_sapi_model');
				$this->db->empty_table('rekap_skala_sapi');

				foreach ($data as $k => $v) {
					$this->Ahp_sapi_model->insert_skala_sapi($v);
					$counter++;
				}

				$this->session->unset_userdata('pengisian_ahp_sapi');
				$this->session->unset_userdata('nilai_skala_sapi');
				$this->session->unset_userdata('output_skala_sapi');

				echo 'berhasil insert '.$counter.' data';
				redirect(base_url('officer'));
	
			}

			echo '🐔 🐮';
		}
		
		public function page_rekap_skala_sapi(){
			$data['title'] = 'Perhitungan Skala Sapi';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$data['rekap_peternak'] = $this->db->get_where('rekap_skala_sapi', ['entitas' => 1])->result_array();
			$data['rekap_rph'] = $this->db->get_where('rekap_skala_sapi', ['entitas' => 2])->result_array();

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala/skala-sapi-5', $data);
			$this->load->view('templates/footer');
		}

		public function skala_keberlanjutan_sapi()
		{
			$data['title'] = 'Skala Keberlanjutan Sapi';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			$this->db->join('bobot_indikator_sapi', 'section_sapi.id = bobot_indikator_sapi.id_section');
			$this->db->join('rekap_skala_sapi', 'rekap_skala_sapi.kode_indikator = bobot_indikator_sapi.kriteria', 'left');
			$data['bobot_indikator'] = $this->db->get('section_sapi')->result_array();

			// die(print("<pre>".print_r($data['bobot_indikator'],true)."</pre>"));
			
			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/sapi/skala_keberlanjutan', $data);
			$this->load->view('templates/footer');
		}

		private function start_sess() {
			$_SESSION['pengisian_ahp_sapi']['responden'] = 3;
			$_SESSION['pengisian_ahp_sapi']['nama1'] = 'A';
			$_SESSION['pengisian_ahp_sapi']['nama2'] = 'B';
			$_SESSION['pengisian_ahp_sapi']['nama3'] = 'C';
		}

		// HITUNG OUTPUT SKALA KEBERLANJUTAN ------------------------------------------------------//
		public function skala_keberlanjutan(){
			$data['title'] = 'Output skala keberlanjutan Ayam';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			$data['input'] = [];

			// JOIN
			$this->db->join('bobot_indikator', 'section.id = bobot_indikator.id_section');
			$this->db->join('hasil_skala_ayam', 'bobot_indikator.kriteria = hasil_skala_ayam.indikator', 'left');
			// Get skala ayam
			$data['skala_ayam'] = $this->db->get('section')->result_array();

			// die(print('<pre>'.print_r($data['skala_ayam'],true).'</pre>'));

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/skala_keberlanjutan_ayam', $data);
			$this->load->view('templates/footer');

		}
	}
?>