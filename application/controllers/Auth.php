<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
	}

	public function index()
	{
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
		$this->form_validation->set_rules('password', 'Password', 'required|trim');

		if($this->form_validation->run() == false){
			$data['title'] = 'Login SIPAKARO';
			$this->load->view('templates/auth_header', $data);
			$this->load->view('auth/login');
			$this->load->view('templates/auth_footer');
		} else {
			$this->login();
		}
	}

	private function login()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$user = $this->db->get_where('user', ['email' => $email])->row_array();

		if($user){
			// cek password
			if(password_verify($password, $user['password'])){
				$data = [
					'email' => $user['email'],
					'role_id' => $user['role_id'],
					'id_user' => $user['id'],
				];

				if($user['is_active'] == 0) {
					$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Akun ini belum dikonfirmasi Admin</div>');
					return redirect('/login');
				}

				if($user['role_id'] == 1){
					$data['admin_logged_in'] = TRUE;
					$this->session->set_userdata($data);
					redirect('/admin');
					
				} elseif($user['role_id'] == 3){
					$this->session->set_userdata($data);
					redirect('/officer');

				} else {
					redirect('/user');
				}

			} else{
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password salah</div>');
				redirect('/login');	
			}
		}else{
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email belum terdaftar</div>');
			redirect('/login');
		}
	}
	
	public function register()
	{	
		$this->form_validation->set_rules('name', 'Name', 'required|trim');
		$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', ['is_unique' => 'This email has already registered!']);
		$this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', ['matches' => 'password dont match!', 'min_length' => 'Password too short!']);
		$this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

		if($this->form_validation->run() == false){
			$data['title'] = 'Register SIPAKARO';
			$this->load->view('templates/auth_header', $data);
			$this->load->view('auth/register');
			$this->load->view('templates/auth_footer');
		} else {
			$data = [
				'name' => htmlspecialchars($this->input->post('name', true)),
				'email' => htmlspecialchars($this->input->post('email', true)),
				'image' => 'default.jpg',
				'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
				'role_id' => 3, // officer / dinas
				'is_active' => 0,
				'date_created' => time()
			];

			$this->db->insert('user', $data);
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"	>Sukses! Akunmu sudah dibikin. Menunggu konfirmasi admin untuk bisa login</div>');
			redirect('/login');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();

		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"	>Bisa Logout</div>');
		redirect('/login');
	}
}
