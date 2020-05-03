<?php
    class Ahp_model extends CI_Model{
        // Constructor for admin model
        public function __construct(){
            $this->load->database();
        }

        // Deskripsi    : Tampil semua data tabel AHP
        public function get_all_ahp(){
            $query = $this->db->get('ahp');
            return $query->result_array();
        }

        // Deskripsi    : Nambah Nilai AHP ke database
        public function add_ahp($input){
            for ($i=0; $i < $_SESSION['responden'] ; $i++) { 
                $data = array(
                    'nama_responden' => $input[$i][0],
                    'nilai_dipilih' => $input[$i][1]
                );

                // Insert ke db ahp
                $this->db->insert('ahp', $data);
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
                $geoman = $geoman * $dt['nilai_dipilih'];
            }
            // Rumus Geoman
            $geoman = pow($geoman, (1/5));
            
            // Menghitung Total Kriteria
            $total_peternak = $geoman+1;
            $total_rpa = 1+(1/$geoman);

            // Mulai membuat array bobot untuk dimasukkan ke db
            $bobot_rpa = ['kriteria' => 'RPA'];
            $bobot_peternak = ['kriteria' => 'Peternak'];
            
            // Menghitung Bobot Normalisasi Kriteria
            $bobot_rpa += ['bobot' => ((1/$total_rpa) + ($geoman/$total_peternak))/2];
            $bobot_peternak += ['bobot' => (((1/$geoman)/$total_rpa) + (1/$total_peternak))/2];

            // Cek apakah nilai bobot sudah ada / tidak
            // Ambil semua data bobot
            $data = $this->Bobot_kriteria_ayam_model->get_all_bobot();
            if ($data != NULL) {
                // Jika ada, update nilai ke db
                $data = $this->Bobot_kriteria_ayam_model->update_bobot($bobot_rpa, $bobot_peternak);
                return true;
            } else {
                // Jika tidak, insert nilai ke db
                $this->db->insert('bobot_kriteria_ayam', $bobot_rpa);
                $this->db->insert('bobot_kriteria_ayam', $bobot_peternak);
                return true;
            }
            // die(print_r($data).'<br> Gak masok pak eko');
            // die('Geoman = '.$geoman.'<br> Total RPA = '.$total_rpa.'<br> Total Peternak = '.$total_peternak.'<br> Bobot RPA = '.$bobot_rpa.'<br> Bobot peternak = '.$bobot_peternak);
        }
    }
?>