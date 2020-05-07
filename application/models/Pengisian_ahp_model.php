<?php
    class Pengisian_ahp_model extends CI_Model{
        // Constructor for admin model
        public function __construct(){
            $this->load->database();
        }

        // Deskripsi    : Tampil semua data tabel AHP
        public function get_all(){
            $query = $this->db->get('pengisian_ahp');
            return $query->result_array();
        }

        // Deskripsi    : Tampil data terakhir
        public function get_last_row(){
            $query = $this->db->query("SELECT * FROM pengisian_ahp ORDER BY id DESC LIMIT 1");
            return $query->result_array();
        }

        // Deskripsi    : Nambah Data pengisian ahp ke database
        public function add_pengisian_ahp($input){
            $data = array(
                'nama_pengisi' => $input['name'],
                'id_user' => $input['id']
            );

            // Insert ke db ahp
            $this->db->insert('pengisian_ahp', $data);
            return true;
        }
    }
?>