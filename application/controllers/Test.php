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
    $this->session->unset_userdata('nilai_ahp');
    print("<pre>".print_r($_SESSION,true)."</pre>");
  }

  public function sess()  {
    print("<pre>".print_r($_SESSION,true)."</pre>");
  }

}
?>
