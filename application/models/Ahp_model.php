<?php
    class Ahp_model extends CI_Model{
        // Constructor for admin model
        public function __construct(){
            $this->load->database();
        }

        // Deskripsi    : Tampil semua data tabel AHP
        public function get_all_ahp(){
            $query = $this->db->get('responden');
            return $query->result_array();
        }

        // Deskripsi    : Nambah Nilai AHP ke database
        public function add_ahp($input){
            for ($i=0; $i < $_SESSION['pengisian_ahp']['responden'] ; $i++) { 
                $data = array(
                    'nama_responden' => $input[$i][0],
                    'nilai_responden' => $input[$i][1],
                    'kriteria_1' => $_SESSION['pengisian_ahp']['kriteria1'],
                    'kriteria_2' => $_SESSION['pengisian_ahp']['kriteria2'],
                    'id_section' => $_SESSION['pengisian_ahp']['id_section'],
                    'id_pengisian_ahp' => $_SESSION['pengisian_ahp']['id_pengisian_ahp']
                );

                // Insert ke db ahp
                $this->db->insert('responden', $data);
            };
            // Update Nilai Normalisasi
            $this->Ahp_model->normalisasi_rpa_peternak();
            return true;
        }

        // Deksripsi    : Perhitungan Normalisasi RPA Peternak
        public function normalisasi_rpa_peternak(){
            // Mengambil semua inputan ahp
            $data = $this->Ahp_model->get_all_ahp();

            // Menghitung geoman
            $geoman = 1;
            foreach ($data as $dt) {
                $geoman = $geoman * $dt['nilai_responden'];
            }
            // Rumus Geoman
            $geoman = pow($geoman, (1/count($data)));
            
            // Menghitung Total Kriteria
            $total_peternak = $geoman+1;
            $total_rpa = 1+(1/$geoman);

            // Mulai membuat array bobot untuk dimasukkan ke db
            $bobot_rpa = ['kriteria' => 'RPA'];
            $bobot_peternak = ['kriteria' => 'Peternak'];
            
            // Menghitung Bobot Normalisasi Kriteria dan memasukkan kedalam array
            $bobot_rpa += ['bobot' => ((1/$total_rpa) + ($geoman/$total_peternak))/2];
            $bobot_peternak += ['bobot' => (((1/$geoman)/$total_rpa) + (1/$total_peternak))/2];

            // Memasukkan id_section ke dalam array
            $bobot_rpa += ['id_section' => $_SESSION['pengisian_ahp']['id_section']];
            $bobot_peternak += ['id_section' => $_SESSION['pengisian_ahp']['id_section']];

            // Cek apakah nilai bobot sudah ada / tidak
            // Ambil semua data bobot
            $data = $this->Bobot_indikator_model->get_all_bobot();
            if ($data != NULL) {
                // Jika ada, update nilai ke db
                $data = $this->Bobot_indikator_model->update_bobot($bobot_rpa, $bobot_peternak);
                return true;
            } else {
                // Jika tidak, insert nilai ke db
                $this->db->insert('bobot_indikator', $bobot_rpa);
                $this->db->insert('bobot_indikator', $bobot_peternak);
                return true;
            }
            // die('Berhasil Masukkin data');
            // die('Geoman = '.$geoman.'<br> Total RPA = '.$total_rpa.'<br> Total Peternak = '.$total_peternak.'<br> Bobot RPA = '.$bobot_rpa.'<br> Bobot peternak = '.$bobot_peternak);
        }

        // Deskripsi    : Tampil semua data tabel AHP di Testing table
        public function get_bobot_testing($section){
            // Get Responden by id
            $query = $this->db->get_where('bobot_indikator', array('id_section' => $section));
            return $query->result_array();
        }

        // Deskripsi    : Tampil semua data tabel AHP di Testing table
        public function get_responden_testing($section){
            // Get Responden by id
            $query = $this->db->get_where('responden', array('id_section' => $section));
            return $query->result_array();
        }
    }
?>