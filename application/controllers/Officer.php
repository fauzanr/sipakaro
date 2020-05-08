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

		// Menuju Halaman AHP
		// Berisi Input banyak responden
		public function input_ahp_satu(){
			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			// Inisiasi session
			if (!isset($_SESSION['pengisian_ahp'])) {
				$_SESSION['pengisian_ahp'] = [];
			}
			if (!isset($_SESSION['nilai_pengisian_ahp'])) {
				$_SESSION['nilai_pengisian_ahp'] = [];
			}

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/isi-responden', $data);
			$this->load->view('templates/footer');
		}

		// Input AHP Form
		// Berisi Input nama responden
		public function input_ahp_dua(){
			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			// Mengambil jumlah inputan kedalam session
			$_SESSION['pengisian_ahp']['responden'] = $this->input->post('options');

			$this->load->view('templates/header', $data);
			$this->load->view('templates/sidebar', $data);
			$this->load->view('templates/topbar', $data);
			$this->load->view('officer/isi-nama-responden', $data);
			$this->load->view('templates/footer');
		}

		// Input AHP Form
		// Berisi Input nilai AHP
		public function input_ahp_tiga(){
			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

			// Validasi
			for($i=1; $i <= $_SESSION['pengisian_ahp']['responden']; $i++){
				$this->form_validation->set_rules('nama'.$i,'Nama','required');
			}

			if($this->form_validation->run() === false){
				$this->load->view('templates/header', $data);
				$this->load->view('templates/sidebar', $data);
				$this->load->view('templates/topbar', $data);
				$this->load->view('officer/isi-nama-responden', $data);
				$this->load->view('templates/footer');
			}else{
				
				// Input nama ke session
				for($i=1; $i <= $_SESSION['pengisian_ahp']['responden'];$i++){
					$_SESSION['pengisian_ahp'] += ['nama'.$i =>  $this->input->post('nama'.$i)];
				}

				redirect(base_url().'officer/halaman_input_data_ahp/2');
			}
		}

		public function halaman_input_data_ahp($section_id = NULL){

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
				$data['level'] = 2;
				$data['indikator'] = $this->db->get_where('indikator_ayam', ['nama_kriteria' => $section['level1']])->result_array();
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
				foreach($data as $k => $v) {
					$this->Ahp_model->add_ahp($v);
				}
				$this->session->unset_userdata('pengisian_ahp');
				$this->session->unset_userdata('nilai_pengisian_ahp');

				echo 'berhasil input db!<br>';
				echo("<pre>".print_r($data,true)."</pre>");

				return;
			}

		}

	}
?>