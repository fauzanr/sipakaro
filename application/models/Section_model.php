<?php
    class Section_model extends CI_Model{
        // Constructor for admin model
        public function __construct(){
            $this->load->database();
        }

        // Deskripsi    : Tampil semua data tabel Section
        public function get_all(){
            $query = $this->db->get('section');
            return $query->result_array();
        }

        // Deskripsi    : Tampil data terakhir
        public function get_last_row(){
            $query = $this->db->query("SELECT * FROM section ORDER BY id DESC LIMIT 1");
            return $query->result_array();
        }

        // Deskripsi    : Tampil data terakhir
        public function get_section_by_level($input){
            $query = $this->db->get_where('section', array('level0' => $input['level0'], 'level1' => $input['level1']));
            return $query->result_array();
        }        

        // Deskripsi    : Tampil data dengan id terterntu
        public function get_section_by_id($input){
            $query = $this->db->get_where('section', array('id' => $input));
            return $query->row_array(0);
        }        

        // Deskripsi    : Nambah Data Section ke database
        public function add_section($input){
            $data = array(
                'level0' => $input['level0'],
                'level1' => $input['level1']
            );

            // Insert ke db ahp
            $this->db->insert('section', $data);
            return true;
        }

    }
?>