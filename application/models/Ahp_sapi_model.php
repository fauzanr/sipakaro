<?php
    class Ahp_sapi_model extends CI_Model{
        // Constructor for admin model
        public function __construct(){
            $this->load->database();
        }

        // Deskripsi    : Tampil semua data tabel AHP
        public function get_all_ahp(){
            $query = $this->db->get('responden_sapi');
            return $query->result_array();
        }

        // Deskripsi    : Nambah Nilai AHP ke database
        public function add_ahp($input){
            for ($i=0 ; $i<sizeof($input) ; $i++) { 
                $this->db->insert('responden_sapi', $input[$i]);
            };
        }

    }
?>