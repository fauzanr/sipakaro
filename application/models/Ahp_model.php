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
            for ($i=0 ; $i<sizeof($input) ; $i++) { 
                $this->db->insert('responden', $input[$i]);
            };
            // Update Nilai Normalisasi
            $this->Ahp_model->normalisasi_rpa_peternak();
            return true;
        }

        // Deskripsi    : Tampil semua data tabel bobot indikator berdasarkan id section
        public function get_bobot_testing($section){
            // Get Responden by id
            $query = $this->db->get_where('bobot_indikator', array('id_section' => $section));
            return $query->result_array();
        }

        // Deskripsi    : Tampil semua data tabel AHP berdasarkan id section
        public function get_responden_testing($section){
            // Get Responden by id
            $query = $this->db->get_where('responden', array('id_section' => $section));
            return $query->result_array();
        }

        // Deskripsi    : Ambil nilai rasio berdasarkan banyak indikator
        public function get_rasio_by_idikator($indikator) {
            $query = $this->db->get_where('rasio', array('banyak_indikator' => $indikator));
            return $query->result_array();
        }

        // Deksripsi    : Perhitungan Normalisasi RPA Peternak
        public function normalisasi_rpa_peternak($section_id){
            // Inisialisasi array untuk perhitungan
            $data = array();

            // Masukan indikator / kriteria ke dalam array sesuai section nya
            if($section_id === 2){
                $this->db->select('ket_a_e');
                $data['kriteria'] = $this->db->get('entitas_ayam')->result_array();
                // Set penamaan dalam array
                $kriteria = 'ket_a_e';
            }
            if($section_id === 3){
                $this->db->select('nama_kriteria');
                $data['kriteria'] = $this->db->get('kriteria')->result_array();
                // Set penamaan dalam array
                $kriteria = 'nama_kriteria';
            }
            if($section_id === 4){
                $this->db->select('kode_a_i');
                $data['kriteria'] = $this->db->get_where('indikator_ayam', array('nama_kriteria' => 'Ekonomi'))->result_array();
                // Set penamaan dalam array
                $kriteria = 'kode_a_i';
            }
            if($section_id === 5){
                $this->db->select('kode_a_i');
                $data['kriteria'] = $this->db->get_where('indikator_ayam', array('nama_kriteria' => 'Lingkungan'))->result_array();
                // Set penamaan dalam array
                $kriteria = 'kode_a_i';
            }

            // FECTH DATA RESPONDEN SESUAI KRITERIA 1 DAN KRITERIA 2 -------------------------------------------//
            for ($i=0; $i < count($data['kriteria']); $i++) {
                
                for ($j=$i+1; $j < count($data['kriteria']); $j++) { 
                    $this->db->select('nilai_responden');
                    
                    $data[ $data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria] ] = $this->db->get_where('responden', array('id_section' => $section_id, 'kriteria_1' => $data['kriteria'][$i][$kriteria], 'kriteria_2' => $data['kriteria'][$j][$kriteria]))->result_array();
                    
                    // Set counter
                    $counter = count($data[$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]]);
                }
                
            }

            // MENGHITUNG GEOMEAN ------------------------------------------------------------------------------//
            $counter2 = count($data['kriteria'])-1;
            $hitung = 1;
            for ($i=0; $i < $counter2; $i++) {
                for ($j=$i+1; $j <= $counter2; $j++) { 

                    for ($k=0; $k < $counter; $k++) { 
                        $hitung = $hitung * $data[ $data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria] ][$k]['nilai_responden'];
                    }
                    $hitung = pow($hitung, (1/$counter));
                    
                    $data[$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]]['geomean'] = $hitung; // Rumus Geomean
                    $data[$data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria]]['geomean'] = $hitung; // Rumus Geomean
                    
                    $hitung = 1; //RESET VARIABEL
                    
                }
            }

            // MENGHITUNG TOTAL KRITERIA -------------------------------------------------------------------//
            $total = 0;
            $kesamaan = 0;
            $counter = count($data['kriteria']);
            for ($i=0; $i < $counter; $i++) {
                
                for ($j=0; $j < $counter; $j++) { 

                    // MENGHITUNG PER KRITERIA
                    if($data['kriteria'][$i][$kriteria] === $data['kriteria'][$j][$kriteria]) {
                        $total = $total + 1;
                        
                        // Masukkan ke dalam array, untuk digunakan perhitungan selanjutnya
                        $data['matriks_penilaian'][$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]] = 1;

                        $kesamaan = 1;
                    } elseif($data['kriteria'][$i][$kriteria] !== $data['kriteria'][$j][$kriteria]) {
                        if ($kesamaan === 0) {
                            $total = $total + $data[$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]]['geomean'];

                            // Masukkan ke dalam array, untuk digunakan perhitungan selanjutnya
                            $data['matriks_penilaian'][$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]] = $data[$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]]['geomean'];
                        }else{                            
                            $total = $total + (1 / $data[$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]]['geomean']);

                            // Masukkan ke dalam array, untuk digunakan perhitungan selanjutnya
                            $data['matriks_penilaian'][$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]] = 1 / $data[$data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria]]['geomean'];
                        }
                    }
                    
                }
                $data['matriks_penilaian']['bobot'][$data['kriteria'][$i][$kriteria]] = $total;
                $total = 0; //RESET NILAI VARIABEL
                $kesamaan = 0;

            }

            // MENGHITUNG BOBOT NORMALISASI---------------------------------------------------------------------//
            $total = 0;
            for ($i=0; $i < $counter; $i++) {
                
                for ($j=0; $j < $counter; $j++) { 
                    
                    if($data['kriteria'][$i][$kriteria] === $data['kriteria'][$j][$kriteria]) {
                        $total = $total + ( ($data['matriks_penilaian'][ $data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria] ]) / ( $data['matriks_penilaian']['bobot'][$data['kriteria'][$j][$kriteria]] ) );
                    }else{
                        $total = $total + ( ($data['matriks_penilaian'][ $data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria] ]) / ( $data['matriks_penilaian']['bobot'][$data['kriteria'][$j][$kriteria]] ) );
                    }
                    // die('masok ['.$j.']['.$i.']<br>operasi = '.$data['matriks_penilaian'][ $data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria] ].'<br>hasil = '.$total);
                    
                }
                $total = $total / $counter ;
                $data['bobot_normalisasi'][$data['kriteria'][$i][$kriteria]] = $total;
                // Masukan nilai bobot normalisasi ke array
                $data['input'][$i]['kriteria'] = $data['kriteria'][$i][$kriteria];
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

                    $total = $total + ($data['matriks_penilaian'][$data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria]]) * ($data['bobot_normalisasi'][$data['kriteria'][$j][$kriteria]]);
                    // die('masok di ['.$j.']['.$i.']<br>operasi = '.$data['matriks_penilaian'][ $data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria] ].'x'.$data['normalisasi'][$data['kriteria'][$j][$kriteria]].'<br>hasil = '.$total);
                }
                // Masukkan nilai total eigen ke array
                $data['eigen']['total'][$data['kriteria'][$i][$kriteria]] = $total;
                
                // Hitung nilai eigen ke array
                $data['eigen']['nilai_eigen'][$data['kriteria'][$i][$kriteria]] = $total / $data['bobot_normalisasi'][$data['kriteria'][$i][$kriteria]];
                $total = 0;
                
                // Hitung nilai maksimum eigen
                $hitung = $hitung + $data['eigen']['nilai_eigen'][$data['kriteria'][$i][$kriteria]];
                $data['eigen']['nilai_maksimum'] = $hitung / $counter;

            }

            // Cek Section untuk hitung C1 dan CR ---------------------------------------------------------------------//
            $this->db->select('level0');
            $hitung = $this->db->get_where('section', array('id' => $section_id))->result_array();

            if($hitung[0]['level0'] != NULL) {  
                // MENGHITUNG KONSISTENSI RASIO 
                $hitung = $this->Ahp_model->get_rasio_by_idikator($counter);

                if(count($data['kriteria']) > 2){
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

            // die(print("<pre>".print_r($data,true)."</pre>"));

            // Cek apakah sudah ada nilai Bobot sebelumnya di DB
            $hitung = $this->db->get_where('bobot_indikator', array('id_section' => $section_id))->result_array();
            // die('hitung = '.count($hitung));
            if(count($hitung) < 1){
                // Input
                $this->Ahp_model->input_bobot_normalisasi($data['input']);
                die('berhasil hitung, selesai dan dimasukkan ke db');
                return;
            }else{
                //Update
                $this->Ahp_model->update_bobot_normalisasi($data['input']);
                die('berhasil hitung, selesai dan dimasukkan ke db');
                return;
            }

        }

        // Deskripsi : Tambah nilai pada tabel bobot
        public function input_bobot_normalisasi($data){
          // die(print("Input<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->insert('bobot_indikator', $data[$i]);
            };
        }

        // Deskripsi : Update nilai pada tabel bobot
        public function update_bobot_normalisasi($data){
            // die(print("Update<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->where(['kriteria' => $data[$i]['kriteria'], 'id_section' => $data[$i]['id_section']] );
                $this->db->update('bobot_indikator', $data[$i]);
            };
        }
    }
?>