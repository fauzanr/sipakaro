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

        // Deskripsi    : Ambil nilai rasio berdasarkan banyak indikator
        public function get_rasio_by_idikator($indikator) {
            $query = $this->db->get_where('rasio_sapi', array('banyak_indikator' => $indikator));
            return $query->result_array();
        }

        // Deksripsi    : Perhitungan Normalisasi RPA Peternak
        public function normalisasi_rpa_peternak($section_id){
            // Inisialisasi array untuk perhitungan
            $data = array();

            // Masukan indikator / kriteria ke dalam array sesuai section nya
            if($section_id == 2){
                $this->db->select('ket_s_e');
                $data['kriteria_sapi'] = $this->db->get('entitas_sapi')->result_array();
                // Set penamaan dalam array
                $kriteria = 'ket_s_e';
            }
            if($section_id == 3 || $section_id == 7){
                $this->db->select('nama_kriteria');
                $data['kriteria_sapi'] = $this->db->get('kriteria')->result_array();
                // Set penamaan dalam array
                $kriteria = 'nama_kriteria';
            }
            if($section_id == 4 || $section_id == 8){
                
                $this->db->select('kode_s_i');
                $data['kriteria_sapi'] = $this->db->get_where('indikator_sapi', array('nama_kriteria' => 'Ekonomi', 'entitas' => $_SESSION['indikator_sapi'][$section_id][0]['section_id'] ))->result_array();

                // Set penamaan dalam array
                $kriteria = 'kode_s_i';
            }
            if($section_id == 5 || $section_id == 9){
                $this->db->select('kode_s_i');
                $data['kriteria_sapi'] = $this->db->get_where('indikator_sapi', array('nama_kriteria' => 'Lingkungan', 'entitas' => $_SESSION['indikator_sapi'][$section_id][0]['section_id'] ))->result_array();
                // Set penamaan dalam array
                $kriteria = 'kode_s_i';
            }
            if($section_id == 6 || $section_id == 10){
                $this->db->select('kode_s_i');
                $data['kriteria_sapi'] = $this->db->get_where('indikator_sapi', array('nama_kriteria' => 'Sosial', 'entitas' => $_SESSION['indikator_sapi'][$section_id][0]['section_id'] ))->result_array();
                // Set penamaan dalam array
                $kriteria = 'kode_s_i';
            }
            
            // FECTH DATA RESPONDEN SESUAI KRITERIA 1 DAN KRITERIA 2 -------------------------------------------//
            for ($i=0; $i < count($data['kriteria_sapi']); $i++) {
                
                for ($j=$i+1; $j < count($data['kriteria_sapi']); $j++) { 
                    $this->db->select('nilai_responden');
                    
                    $data[ $data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria] ] = $this->db->get_where('responden_sapi', array('id_section' => $section_id, 'kriteria_1' => $data['kriteria_sapi'][$i][$kriteria], 'kriteria_2' => $data['kriteria_sapi'][$j][$kriteria]))->result_array();
                    
                    // Set counter (Jumlah Responden)
                    $counter = count($data[$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]]);
                }
                
            }

            // MENGHITUNG GEOMEAN ------------------------------------------------------------------------------//
            $counter2 = count($data['kriteria_sapi'])-1;
            $hitung = 1;
            for ($i=0; $i < $counter2; $i++) {
                for ($j=$i+1; $j <= $counter2; $j++) { 

                    for ($k=0; $k < $counter; $k++) { 
                        $hitung = $hitung * $data[ $data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria] ][$k]['nilai_responden'];
                    }
                    $hitung = pow($hitung, (1/$counter));
                    
                    $data[$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]]['geomean'] = $hitung; // Rumus Geomean
                    $data[$data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria]]['geomean'] = $hitung; // Rumus Geomean
                    
                    $hitung = 1; //RESET VARIABEL
                    
                }
            }

            // MENGHITUNG TOTAL KRITERIA -------------------------------------------------------------------//
            $total = 0;
            $kesamaan = 0;
            $counter = count($data['kriteria_sapi']);
            for ($i=0; $i < $counter; $i++) {
                
                for ($j=0; $j < $counter; $j++) { 

                    // MENGHITUNG PER KRITERIA
                    if($data['kriteria_sapi'][$i][$kriteria] === $data['kriteria_sapi'][$j][$kriteria]) {
                        $total = $total + 1;
                        
                        // Masukkan ke dalam array, untuk digunakan perhitungan selanjutnya
                        $data['matriks_penilaian'][$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]] = 1;

                        $kesamaan = 1;
                    } elseif($data['kriteria_sapi'][$i][$kriteria] !== $data['kriteria_sapi'][$j][$kriteria]) {
                        if ($kesamaan === 0) {
                            $total = $total + $data[$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]]['geomean'];

                            // Masukkan ke dalam array, untuk digunakan perhitungan selanjutnya
                            $data['matriks_penilaian'][$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]] = $data[$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]]['geomean'];
                        }else{                            
                            $total = $total + (1 / $data[$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]]['geomean']);

                            // Masukkan ke dalam array, untuk digunakan perhitungan selanjutnya
                            $data['matriks_penilaian'][$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]] = 1 / $data[$data['kriteria_sapi'][$i][$kriteria].'-'.$data['kriteria_sapi'][$j][$kriteria]]['geomean'];
                        }
                    }
                    
                }
                $data['matriks_penilaian']['bobot'][$data['kriteria_sapi'][$i][$kriteria]] = $total;
                $total = 0; //RESET NILAI VARIABEL
                $kesamaan = 0;

            }

            // MENGHITUNG BOBOT NORMALISASI---------------------------------------------------------------------//
            $total = 0;
            for ($i=0; $i < $counter; $i++) {
                
                for ($j=0; $j < $counter; $j++) { 
                    
                    if($data['kriteria_sapi'][$i][$kriteria] === $data['kriteria_sapi'][$j][$kriteria]) {
                        $total = $total + ( ($data['matriks_penilaian'][ $data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria] ]) / ( $data['matriks_penilaian']['bobot'][$data['kriteria_sapi'][$j][$kriteria]] ) );
                    }else{
                        $total = $total + ( ($data['matriks_penilaian'][ $data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria] ]) / ( $data['matriks_penilaian']['bobot'][$data['kriteria_sapi'][$j][$kriteria]] ) );
                    }
                    // die('haha<br>'.$data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria].'<br>masok ['.$j.']['.$i.']<br>operasi = '.$data['matriks_penilaian'][ $data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria] ].'<br>hasil = '.$total);
                    
                }
                $total = $total / $counter ;
                $data['bobot_normalisasi'][$data['kriteria_sapi'][$i][$kriteria]] = $total;
                // Masukan nilai bobot normalisasi ke array
                $data['input'][$i]['kriteria'] = $data['kriteria_sapi'][$i][$kriteria];
                $data['input'][$i]['bobot'] = $total;
                // Masukan nilai section_id
                $data['input'][$i]['id_section'] = $section_id;
                $total = 0; // Reset Variabel
                
            }

            // MENGHITUNG EIGEN MAKSIMUM ---------------------------------------------------------------------//
            $total = 0;
            $hitung = 0;
            for ($i=0; $i < $counter; $i++) {
                
                for ($j=0; $j < $counter; $j++) { 

                    $total = $total + ($data['matriks_penilaian'][$data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria]]) * ($data['bobot_normalisasi'][$data['kriteria_sapi'][$j][$kriteria]]);
                    // die('masok di ['.$j.']['.$i.']<br>operasi = '.$data['matriks_penilaian'][ $data['kriteria_sapi'][$j][$kriteria].'-'.$data['kriteria_sapi'][$i][$kriteria] ].'x'.$data['normalisasi'][$data['kriteria_sapi'][$j][$kriteria]].'<br>hasil = '.$total);
                }
                // Masukkan nilai total eigen ke array
                $data['eigen']['total'][$data['kriteria_sapi'][$i][$kriteria]] = $total;
                
                // Hitung nilai eigen ke array
                $data['eigen']['nilai_eigen'][$data['kriteria_sapi'][$i][$kriteria]] = $total / $data['bobot_normalisasi'][$data['kriteria_sapi'][$i][$kriteria]];
                $total = 0;
                
                // Hitung nilai maksimum eigen
                $hitung = $hitung + $data['eigen']['nilai_eigen'][$data['kriteria_sapi'][$i][$kriteria]];
                $data['eigen']['nilai_maksimum'] = $hitung / $counter;

            }

            // Cek Section untuk hitung C1 dan CR ---------------------------------------------------------------------//
            $this->db->select('level0');
            $hitung = $this->db->get_where('section_sapi', array('id' => $section_id))->result_array();

            if($hitung[0]['level0'] != NULL) {  
                // MENGHITUNG KONSISTENSI RASIO 
                if($counter > 2 && $counter < 11){
                    $hitung = $this->get_rasio_by_idikator($counter);
                    // Indikator lebih dari 2
                    for ($i=0; $i < $counter; $i++) { 
                        // Input nilai C1 dan CR ke array input
                        $data['input'][$i]['C1'] = ($data['eigen']['nilai_maksimum'] - $counter) / ($counter - 1);
                        $data['input'][$i]['CR'] = $data['input'][$i]['C1'] / $hitung[0]['nilai_rasio'];
                    }
                }else {
                    // Indikator kurang dari 3
                    for ($i=0; $i < $counter; $i++) { 
                        // Input nilai C1 dan CR ke array input
                        $data['input'][$i]['C1'] = 0;
                        $data['input'][$i]['CR'] = 0;
                    }
                }
                
            }else{
                for ($i=0; $i < $counter; $i++) { 
                    // Input nilai C1 dan CR ke array input 0
                    $data['input'][$i]['C1'] = 0;
                    $data['input'][$i]['CR'] = 0;
                }
            }

            // die(print("Update<br><pre>".print_r($data,true)."</pre>"));
            // Cek apakah sudah ada nilai Bobot sebelumnya di DB
            $hitung = $this->db->get_where('bobot_indikator_sapi', array('id_section' => $section_id))->result_array();
            // die('hitung = '.count($hitung));
            if(count($hitung) < 1){
                // Input
                $this->input_bobot_normalisasi($data['input']);
                return;
            }else{
                //Update
                $this->update_bobot_normalisasi($data['input']);
                return;
            }

        }

        // Deskripsi : Tambah nilai pada tabel bobot
        public function input_bobot_normalisasi($data){
        // die(print("Input<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->insert('bobot_indikator_sapi', $data[$i]);
            };
            return;
        }

        // Deskripsi : Update nilai pada tabel bobot
        public function update_bobot_normalisasi($data){
            // die(print("Update<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->where(['kriteria' => $data[$i]['kriteria'], 'id_section' => $data[$i]['id_section']] );
                $this->db->update('bobot_indikator_sapi', $data[$i]);
            };
            return;
        }

        public function insert_skala_sapi ($data) {
            $this->db->insert('rekap_skala_sapi', $data);
		}

    }
?>