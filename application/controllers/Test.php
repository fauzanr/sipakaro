<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

	function __construct(){
		parent::__construct();
  }

  public function index()  {
    
    $sess = ['pengisian_ahp' => []];
    $this->session->set_userdata($sess); //untuk db pengisian_ahp

    $_SESSION['pengisian_ahp']['jumlah_responden'] = 2;
    $_SESSION['pengisian_ahp']['nama_pengisi'] = 'Sarah Smith';

    $_SESSION['pengisian_ahp']['nama1'] = 'Trevor';
    $_SESSION['pengisian_ahp']['nama2'] = 'Franklin';
    $_SESSION['pengisian_ahp']['nama3'] = NULL;
    $_SESSION['pengisian_ahp']['nama4'] = NULL;
    $_SESSION['pengisian_ahp']['nama5'] = NULL;

    // -----------------------------------------------------------------

    $ahp = ['nilai_ahp' => []];
    $this->session->set_userdata($ahp); //untuk db nilai_pengisian_ahp

    $data1 = [
      'id_pengisian_ahp' => 666,
      'level0' => '',
      'level1' => '',
      'kriteria1' => 'RPA',
      'kriteria2' => 'Peternakan',
      'responden1' => 1.00,
      'responden2' => 1.00,
      'manual' => '',
      'geomean' => '',
    ];
    array_push($_SESSION['nilai_ahp'], $data1);

    $data2 = [
      'id_pengisian_ahp' => 666,
      'level0' => '',
      'level1' => 'Peternak',
      'kriteria1' => 'Ekonomi',
      'kriteria2' => 'Lingkungan',
      'responden1' => 1.00,
      'responden2' => 1.00,
      'manual' => '',
      'geomean' => '',
    ];
    array_push($_SESSION['nilai_ahp'], $data2);

    $data3 = [
      'id_pengisian_ahp' => 666,
      'level0' => 'Peternak',
      'level1' => 'Ekonomi',
      'kriteria1' => 'E1',
      'kriteria2' => 'E2',
      'responden1' => 1.00,
      'responden2' => 1.00,
      'manual' => '',
      'geomean' => '',
    ];    
    array_push($_SESSION['nilai_ahp'], $data3);

    print("<pre>".print_r($_SESSION,true)."</pre>");

    for ($i=0 ; $i<sizeof($_SESSION['nilai_ahp']) ; $i++) {
      // $this->db->insert('nilai_pengisian_ahp', $_SESSION['nilai_ahp'][$i]);
      print("<pre>".print_r($_SESSION['nilai_ahp'][$i],true)."</pre>");
    }
  }

  public function end()  {
    $this->session->unset_userdata('pengisian_ahp');
    $this->session->unset_userdata('nilai_ahp');
    print("<pre>".print_r($_SESSION,true)."</pre>");
  }

}
?>
