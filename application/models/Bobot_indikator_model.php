<?php
    class Bobot_indikator_model extends CI_Model {
        // Constructor for admin model
        public function __construct(){
            $this->load->database();
        }

        // Deskripsi    : Tampil semua data tabel Bobot
        public function get_all_bobot(){
            $query = $this->db->get('bobot_indikator');
            return $query->result_array();
        }

        // Deskripsi    : Update data tabel Bobot
        public function update_bobot($rpa, $peternak){
            $this->db->where('kriteria', $rpa['kriteria']);
            $this->db->update('bobot_indikator', $rpa);

            $this->db->where('kriteria', $peternak['kriteria']);
            $this->db->update('bobot_indikator', $peternak);
            return true;
        }
    }
?>