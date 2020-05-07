<?php
	class Officer extends CI_Controller {

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

			// $input_form = [
			// 	'responden' => $this->input->post('options')
			// ];
			// Mengambil jumlah inputan kedalam session
			$sess = ['pengisian_ahp' => []];
			$this->session->set_userdata($sess);

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
		public function input_data_ahp(){
			$data['title'] = 'Perhitungan Bobot Indikator - AHP';
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			
			$data['section'] = '1';
			$data['level0'] = NULL;
			$data['level1'] = NULL;

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
				// Masukin nilai ke array
				$input = [];
				for($i=1; $i <= $_SESSION['pengisian_ahp']['responden'];$i++){
					array_push($input, array($this->input->post('responden'.$i), $this->input->post('nilai-ahp'.$i) ));
				}

				// Update pengisian ahp
				$this->Pengisian_ahp_model->add_pengisian_ahp($data['user']);
				// Masukkan id pengisian ahp
				$section = $this->Pengisian_ahp_model->get_last_row();
				$_SESSION['pengisian_ahp']['id_pengisian_ahp'] = $section[0]['id'];
				
				// Update nilai dalam session
				$_SESSION['pengisian_ahp']['kriteria1'] = NULL;
				$_SESSION['pengisian_ahp']['kriteria2'] = NULL;

				// Update Section
				$section = $this->Section_model->get_section_by_level($data);
				// Masukkan id section
				$_SESSION['pengisian_ahp']['id_section'] = $section[0]['id'];

				// Masukin nilai ke db
				$this->Ahp_model->add_ahp($input);
				
				// Unset Session
				unset(
					$_SESSION['pengisian_ahp']
				);
				die('Berhasil ditambah/update');
				return redirect('officer');
			}
			
		}
	}
?>