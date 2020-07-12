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
            // $this->Ahp_model->normalisasi_rpa_peternak();
            // return true;
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
        public function normalisasi_rpa_peternak($id_pengisi, $section_id){
            // Inisialisasi array untuk perhitungan
            $data = array();

            // Masukan indikator / kriteria ke dalam array sesuai section nya
            if($section_id == 2){
                $this->db->select('ket_a_e');
                $data['kriteria'] = $this->db->get('entitas_ayam')->result_array();
                // Set penamaan dalam array
                $kriteria = 'ket_a_e';
            }
            if($section_id == 3 || $section_id == 7){
                $this->db->select('nama_kriteria');
                $data['kriteria'] = $this->db->get('kriteria')->result_array();
                // Set penamaan dalam array
                $kriteria = 'nama_kriteria';
            }
            if($section_id == 4 || $section_id == 8){
                
                $this->db->select('kode_a_i');
                $entitas = $section_id == 4 ? 2 : 1;
                $data['kriteria'] = $this->db->get_where('indikator_ayam', array('nama_kriteria' => 'Ekonomi', 'entitas' => $entitas ))->result_array();

                // Set penamaan dalam array
                $kriteria = 'kode_a_i';
            }
            if($section_id == 5 || $section_id == 9){
                $this->db->select('kode_a_i');
                $entitas = $section_id == 5 ? 2 : 1;
                $data['kriteria'] = $this->db->get_where('indikator_ayam', array('nama_kriteria' => 'Lingkungan', 'entitas' => $entitas ))->result_array();
                // Set penamaan dalam array
                $kriteria = 'kode_a_i';
            }
            if($section_id == 6 || $section_id == 10){
                $this->db->select('kode_a_i');
                $entitas = $section_id == 6 ? 2 : 1;
                $data['kriteria'] = $this->db->get_where('indikator_ayam', array('nama_kriteria' => 'Sosial', 'entitas' => $entitas ))->result_array();
                // Set penamaan dalam array
                $kriteria = 'kode_a_i';
            }
            
            // FECTH DATA RESPONDEN SESUAI KRITERIA 1 DAN KRITERIA 2 -------------------------------------------//
            for ($i=0; $i < count($data['kriteria']); $i++) {
                
                for ($j=$i+1; $j < count($data['kriteria']); $j++) { 
                    $this->db->select('nilai_responden');
                    
                    $data[ $data['kriteria'][$i][$kriteria].'-'.$data['kriteria'][$j][$kriteria] ] = $this->db->get_where('responden', array('id_pengisi' => $id_pengisi, 'id_section' => $section_id, 'kriteria_1' => $data['kriteria'][$i][$kriteria], 'kriteria_2' => $data['kriteria'][$j][$kriteria]))->result_array();
                    
                    // Set counter (Jumlah Responden)
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
                    // die('haha<br>'.$data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria].'<br>masok ['.$j.']['.$i.']<br>operasi = '.$data['matriks_penilaian'][ $data['kriteria'][$j][$kriteria].'-'.$data['kriteria'][$i][$kriteria] ].'<br>hasil = '.$total);
                    
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
                if($counter > 2 && $counter < 16){
                    $hitung = $this->Ahp_model->get_rasio_by_idikator($counter);
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

            // SAVE Nilai Bobot Lokal Entitas (RPA dan Peternak) dan Dimensi (Ekonomi, Lingkungan, Sosial) ke dalam SESSION
            $this->db->select(['level0','level1']);
            $hitung = $this->db->get_where('section', array('id' => $section_id))->row_array();
            
            if ($hitung['level0'] == NULL){

                if ($hitung['level1'] == NULL) { // Entitas
                    for ($i=0; $i < $counter; $i++) { 
                        $_SESSION['bobot_lokal_entitas'][$data['kriteria'][$i][$kriteria]] = $data['input'][$i]['bobot'];
                    }
                } else{ // Dimensi
                    for ($i=0; $i < $counter; $i++) { 
                        $_SESSION['bobot_lokal_dimensi'][$hitung['level1']][$data['kriteria'][$i][$kriteria]] = $data['input'][$i]['bobot'];
                    }
                }

            }

            // HITUNG BOBOT GLOBAL INDIKATOR TERHADAP DIMENSI ----------------------------------//
            // Hanya untuk sub indikator

            if ($hitung['level0'] != NULL) {

                for ($i=0; $i < $counter; $i++) { 
                    // Input nilai bobot global indikator dimensi dan entitas
                    $data['input'][$i]['bobot_global_indikator_dimensi'] = $data['input'][$i]['bobot'] * $_SESSION['bobot_lokal_dimensi'][$hitung['level0']][$hitung['level1']];
                    $data['input'][$i]['bobot_global_indikator_dimensi_entitas'] = $data['input'][$i]['bobot_global_indikator_dimensi'] * $_SESSION['bobot_lokal_entitas'][$hitung['level0']];
                }
            } else {
                // Bukan sub indikator
                for ($i=0; $i < $counter; $i++) { 
                    // Input nilai C1 dan CR ke array input 0
                    $data['input'][$i]['bobot_global_indikator_dimensi'] = 0;
                    $data['input'][$i]['bobot_global_indikator_dimensi_entitas'] = 0;
                }
            }
            
            // Cek apakah sudah ada nilai Bobot sebelumnya di DB
            // die(print("Perhitungan Bobot Normalisasi<br><pre>".print_r($data,true)."</pre>"));
            // $hitung = $this->db->get_where('bobot_indikator', array('id_section' => $section_id))->result_array();
            // // die('hitung = '.count($hitung));
            // if(count($hitung) < 1){
            //     // Input
            //     $this->Ahp_model->input_bobot_normalisasi($data['input']);
            //     return;
            // }else{
            //     //Update
            //     $this->Ahp_model->update_bobot_normalisasi($data['input']);
            //     return;
            // }
            
            return $data['input'];
        }

        // Untuk rekap AHP
        public function get_bobot_by_id_pengisi($id_pengisi) {
            if(!isset($id_pengisi)) return [];

            $dummy = [];
            $data = $this->db->get_where('responden', ['id_pengisi' => $id_pengisi])->result_array();

            if(count($data) > 0) { // jika ada data responden

                // buat array berbentuk db bobot_indikator
                for($i=2; $i<=10; $i++) {                    
                    $data_input = $this->normalisasi_rpa_peternak($id_pengisi, $i);
                    foreach ($data_input as $k => $v) {
                        array_push($dummy, $v);
                    }
                }

            }

            // Unset Session Bobot Lokal Dimensi dan Entitas
            $this->session->unset_userdata('bobot_lokal_dimensi');
            $this->session->unset_userdata('bobot_lokal_entitas');

            // print("TEST DUMMY<pre>".print_r($dummy, true)."</pre>");
            return $dummy;

        }

        // Deskripsi : Tambah nilai pada tabel bobot
        public function input_bobot_normalisasi($data){
          // die(print("Input<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->insert('bobot_indikator', $data[$i]);
            };
            return;
        }

        // Deskripsi : Update nilai pada tabel bobot
        public function update_bobot_normalisasi($data){
            // die(print("Update<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->where(['kriteria' => $data[$i]['kriteria'], 'id_section' => $data[$i]['id_section']] );
                $this->db->update('bobot_indikator', $data[$i]);
            };
            return;
        }

        public function input_nilai_skala($data){
            // die(print("Add<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->insert('responden_skala_ayam', $data[$i]);
            };
            return;
        }

        public function add_hasil_skala($data){
            // die(print("Add<br><pre>".print_r($data,true)."</pre>"));
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->insert('hasil_skala_ayam', $data[$i]);
            };
            return;
        }

        public function update_hasil_skala($data){
            for ($i=0 ; $i<sizeof($data) ; $i++) { 
                $this->db->where(['entitas' => $data[$i]['entitas'], 'indikator' => $data[$i]['indikator'], 'id_pengisi' => $_SESSION['id_user']] );
                $this->db->update('hasil_skala_ayam', $data[$i]);
            };
            return;
        }

        public function hitung_nilai_skala(){

            // Set variabel untuk array
            $data = [];
            $data['input'] = [];

            // Set session untuk perhitungan
            $_SESSION['hitung_skala'] = [];


            // Get all indikator ayam
            $data['indikator'] = $this->db->get('indikator_ayam')->result_array();
            // Get all entitas ayam
            $data['entitas'] = $this->db->get('entitas_ayam')->result_array();

            // Fetch Data per entitas
            for ($i=0; $i < sizeof($data['entitas']) ; $i++) { 
                // Fetch data per indikator
                for ($j=0; $j < sizeof($data['indikator']); $j++) { 
                    
                    $this->db->join('indikator_ayam', 'responden_skala_ayam.indikator = indikator_ayam.id_a_i');
                    $fetch = $this->db->get_where('responden_skala_ayam', ['responden_skala_ayam.entitas' => $data['entitas'][$i]['id_a_e'], 'responden_skala_ayam.indikator' => $data['indikator'][$j]['id_a_i'], 'responden_skala_ayam.id_pengisi' => $_SESSION['id_user'] ])->result_array();
                    if($fetch == NULL){
                        continue;
                    }elseif($fetch != NULL){
                        $_SESSION['hitung_skala'][ $data['entitas'][$i]['ket_a_e'] ][ $data['indikator'][$j]['id_a_i'] ] = $fetch;
                    }
                
                }
            }

            $skala = 0; // variabel untuk menjumlah
            // Loop sebayak jumlah entitas
            foreach ($data['entitas'] as $entitas) {
                // Loop sebanayak indikator
                foreach ($_SESSION['hitung_skala'][ $entitas['ket_a_e'] ] as $id => $dt) {
                    // Loop sebanyak responden
                    foreach ($_SESSION['hitung_skala'][ $entitas['ket_a_e'] ][ $id ] as $responden) {
                        $skala = $skala + $responden['nilai_skala'];
                    }

                    // Hitung rata-rata
                    $avg = $skala / sizeof($_SESSION['hitung_skala'][ $entitas['ket_a_e'] ][ $id ]);
                    
                    // Hitung nilai konversi
                    $konversi = $avg * 20;
                    
                    $data_skala = [
                        'entitas' => $entitas['ket_a_e'],
                        'indikator' => $responden['kode_a_i'],
                        'rata_rata' => $avg,
                        'nilai_konversi' => $konversi,
                        'id_pengisi' => $_SESSION['id_user']
                    ];
                    
                    // Input ke session
    				array_push($data['input'], $data_skala);
                    $skala = 0;  // Reset variabel
                }
            }

            // die(print('<pre>'.print_r($data,true).'</pre>'));

            $skala_ayam = $this->db->get_where('hasil_skala_ayam', ['id_pengisi' => $_SESSION['id_user']])->result_array();
            if (count($skala_ayam) > 0) {
                $this->Ahp_model->update_hasil_skala($data['input']);
                return;
            } elseif(count($skala_ayam) < 1) {
                $this->Ahp_model->add_hasil_skala($data['input']);
                return;
            }

        }

        // Deskripsi : Tambah nilai pada tabel ukuran peternakan ayam
        public function add_ukuran_peternakan_ayam($data, $id_user){
            $input = [
                'ukuran_peternakan' => $data,
                'id_user' => $id_user
            ];
            $this->db->insert('ukuran_peternakan_ayam', $input);
              
            return;
          }
  
          // Deskripsi : Update nilai pada tabel ukuran peternakan ayam
          public function update_ukuran_peternakan_ayam($data, $id_user){
            
            $input = [
                'ukuran_peternakan' => $data,
                'id_user' => $id_user
            ];
            $this->db->where(['id_user' => $id_user]);
            $this->db->update('ukuran_peternakan_ayam', $input);
            
            return;
          }
    }
?>