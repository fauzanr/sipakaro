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

			// inisialisasi session
			$sess = [
				'pengisian_ahp' => [],
				'nilai_pengisian_ahp' => []
			];
			$this->session->set_userdata($sess);

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

				$this->load->view('templates/header', $data);
				$this->load->view('templates/sidebar', $data);
				$this->load->view('templates/topbar', $data);
				$this->load->view('officer/isi-nilai-ahp', $data);
				$this->load->view('templates/footer');
			}
		}

		// Restore data ke database AHP
		// SECTION pertama
		public function input_data_ahp(){
			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			// Level Hirarki
			$level['level0'] = NULL;
			$level['level1'] = NULL;

			// Section Id
			$section_id = $this->Section_model->get_section_by_level($level);
			$section_id = $section_id[0]['id'];

			// Validasi
			for($i=1; $i <= $_SESSION['pengisian_ahp']['responden']; $i++){
				$this->form_validation->set_rules('nilai-ahp'.$i,'Nilai-Ahp Ke-'.$i,'required');
			}

			if ($this->form_validation->run() === false) {
				$this->load->view('templates/header', $data);
				$this->load->view('templates/sidebar', $data);
				$this->load->view('templates/topbar', $data);
				$this->load->view('officer/isi-nilai-ahp', $data);
				$this->load->view('templates/footer');

			} else {
				$_SESSION['nilai_pengisian_ahp'] = [];
				// Masukin nilai ke session
				for($i=1; $i <= $_SESSION['pengisian_ahp']['responden'];$i++){
					$nilai = [
						'nama_responden' => $_SESSION['pengisian_ahp']['nama'.$i],
						'nilai_responden' => $this->input->post('nilai-ahp'.$i),
						'kriteria_1' => 'AHP',
						'kriteria_2' => 'Peternak',
						'id_pengisi' => $_SESSION['role_id'],
						'id_section' => $section_id,
					];
					array_push($_SESSION['nilai_pengisian_ahp'], $nilai);
				}

				$this->insert_pengisian_ahp($data);
			}
			
		}

		private function insert_pengisian_ahp() {
			if(!isset($_SESSION['nilai_pengisian_ahp']) || !isset($_SESSION['pengisian_ahp'])) {
				echo 'error: empty session';
			} else {
				$data = $_SESSION['nilai_pengisian_ahp'];
				$this->Ahp_model->add_ahp($data);
				$this->session->unset_userdata('pengisian_ahp');
				$this->session->unset_userdata('nilai_pengisian_ahp');
				echo 'berhasil input db!<br>';
				echo("<pre>".print_r($data,true)."</pre>");
			}
		}

	}
?>