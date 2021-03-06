<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

	function __construct(){
		parent::__construct();
  }

  public function index()  {
    echo 'localhost/test/sess -> print semua session<br>';
    echo 'localhost/test/end -> hapus semua session!';
  }

  public function end()  {
    $this->session->unset_userdata('pengisian_ahp');
    $this->session->unset_userdata('nilai_pengisian_ahp');
    $this->session->unset_userdata('indikator');
    
    $this->session->unset_userdata('pengisian_ahp_sapi');
    $this->session->unset_userdata('nilai_pengisian_ahp_sapi');
    $this->session->unset_userdata('indikator_sapi');
    $this->session->unset_userdata('nilai_skala_sapi');
    $this->session->unset_userdata('output_skala_sapi');

    $this->session->unset_userdata('bobot_lokal_dimensi');
    $this->session->unset_userdata('bobot_lokal_entitas');

    $this->session->unset_userdata('ukuran_peternakan');

    print("<pre>".print_r($_SESSION,true)."</pre>");
  }

  public function sess()  {
    print("<pre>".print_r($_SESSION,true)."</pre>");
  }

  public function bobot($id){

    // $_SESSION['indikator'][$id][0]['section_id'] = '1'; // RPA
    // $_SESSION['indikator'][$id][0]['section_id'] = '2'; // Peternak
    $test = $this->Ahp_model->normalisasi_rpa_peternak($_SESSION['id_user'], $id);

    die('berhasil');
    // section 5 gabisa hitung eigen maksimal karena kurang dari 3 indikator

    return;
  }

  public function skala(){
    $this->Ahp_model->hitung_nilai_skala();
    $this->session->unset_userdata('pengisian_ahp');
    $this->session->unset_userdata('nilai_pengisian_skala');
    $this->session->unset_userdata('progress_pengisian_skala');
    echo 'Sudah masuk ke database';
  }

  public function unskala(){
    $this->session->unset_userdata('nilai_pengisian_ahp');
    $this->session->unset_userdata('pengisian_ahp');
    $this->session->unset_userdata('progress_pengisian_skala');
    $this->session->unset_userdata('nilai_pengisian_skala');
    $this->session->unset_userdata('hitung_skala');
    print("<pre>".print_r($_SESSION,true)."</pre>");
  }

  public function ukuran_peternakan(){
    $_SESSION['ukuran_peternakan'] = 'Besar';
    
    // Input nilai ukuran peternakan ke db
    $ukuran_peternakan = $this->db->get('ukuran_peternakan_ayam')->result_array();
    if(count($ukuran_peternakan) < 1){
      // Tambah (Karena masih kosong di DB)
      $this->Ahp_model->add_ukuran_peternakan_ayam($_SESSION['ukuran_peternakan'], $_SESSION['id_user']);
      $this->session->unset_userdata('ukuran_peternakan');
      die('DONE ADD');
    }else{
      // Update (Karena sudah ada di DB)
      $this->Ahp_model->update_ukuran_peternakan_ayam($_SESSION['ukuran_peternakan'], $_SESSION['id_user']);
      $this->session->unset_userdata('ukuran_peternakan');
      die('DONE UPDATE');
    }
  }

}
?>
