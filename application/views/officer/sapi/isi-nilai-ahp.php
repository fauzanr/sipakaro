<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Sapi</h2>

    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">Perhitungan Bobot Indikator - AHP</h2>
    <br>
    
    <?php echo validation_errors(); ?>
    <?php echo $this->session->flashdata('success'); ?>

    <h2 class="h4 mb-4 text-gray-800"><?= $section['nama_section'] ?></h2>

    <br>

    <form action="<?php echo base_url().'officer/input_data_ahp_sapi' ?>" method="post">

    <?php if(isset($_SESSION['nilai_pengisian_ahp_sapi'])) :?>
        <p>Progress: (<?= count($_SESSION['nilai_pengisian_ahp_sapi']) ?>/<?= count($section_pagination) ?>)</p>
    <?php endif ?>
    <div class="row">
        
        <!-- FORM -->
        <div class="col-md-12">

            <?php if ($level == 0) :?> 
                <input type="hidden" name="entitas_id" value="kosong"> <!-- ambil id identitas -->
                <?php $counter=0 ?>
                <div class="row">

                    <div class="col-2">
                        <h3>Peternak</h3>
                    </div>

                    <div class="row col-8 d-flex justify-content-center">
                        <div class="row">
                            <?php for ($i=1; $i <= $_SESSION['pengisian_ahp_sapi']['responden'] ; $i++) : ?> 
                                <?php $counter++ ?>
                                <div class="form-group mr-4">

                                    <input type="hidden" name="section_id" value="2">
                                    <input type="hidden" name="responden<?= $i ?>" value="<?= $_SESSION['pengisian_ahp_sapi']['nama'.$i] ?>">
                                    <input type="hidden" name="kriteria1_<?= $i ?>" value="Peternak">
                                    <input type="hidden" name="kriteria2_<?= $i ?>" value="RPH">

                                    <label for="pilihan-ahp<?= $i ?>">
                                        <?= $_SESSION['pengisian_ahp_sapi']['nama'.$i] ?>
                                    </label>

                                    <select class="mr-2 form-control" name="nilai-ahp<?= $i ?>" required>
                                        <option value="" disabled selected>Pilih Nilai</option>
                                        <option value="0.33" selected>test</option>
                                        <?php foreach($opsi as $o) : ?>
                                            <option value="<?= $o['opsi'] ?>"
                                                <?= isset($_SESSION['nilai_pengisian_ahp_sapi'][$section_id]) && $_SESSION['nilai_pengisian_ahp_sapi'][$section_id][$counter-1]['nilai_responden'] == $o['opsi'] ? 'selected' : '' ?>
                                            ><?= $o['opsi'] ?></option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                            <?php endfor ?>
                        </div>
                    </div>
                    
                    <div class="col-2">
                        <h3>RPH</h3>
                    </div>
                    
                </div> 

            <?php elseif($level == 1) : ?>
                <input type="hidden" name="entitas_id" value="kosong"> <!-- ambil id identitas -->

                <?php $counter=0 ?>

                <?php for ($i = 0 ; $i < count($kriteria) ; $i++) : ?>
                
                    <?php for ($j = $i+1 ; $j < count($kriteria) ; $j++) : ?>

                        <div class="row">

                            <div class="col-2">
                                <h3><?= $kriteria[$i]['nama_kriteria'] ?></h3>
                            </div>

                            <div class="row col-8 d-flex justify-content-center">

                                <div class="row">

                                    <?php for ($k=1; $k <= $_SESSION['pengisian_ahp_sapi']['responden'] ; $k++) : ?> 

                                        <?php $counter++ ?>

                                        <div class="form-group mr-4">

                                            <input type="hidden" name="section_id" value="<?= $section_id ?>">
                                            <input type="hidden" name="responden<?= $counter ?>" value="<?= $_SESSION['pengisian_ahp_sapi']['nama'.$k] ?>">
                                            <input type="hidden" name="kriteria1_<?= $counter ?>" value="<?= $kriteria[$i]['nama_kriteria'] ?>">
                                            <input type="hidden" name="kriteria2_<?= $counter ?>" value="<?= $kriteria[$j]['nama_kriteria'] ?>">

                                            <label for="pilihan-ahp<?= $k ?>">
                                                <?= $_SESSION['pengisian_ahp_sapi']['nama'.$k] ?>
                                            </label>

                                            <select class="mr-2 form-control" name="nilai-ahp<?= $counter ?>" required>
                                                <option value="" disabled selected>Pilih Nilai</option>
                                                <option value="0.33" selected>test</option>
                                                <?php foreach($opsi as $o) : ?>
                                                    <option value="<?= $o['opsi'] ?>"
                                                        <?= isset($_SESSION['nilai_pengisian_ahp_sapi'][$section_id]) && $_SESSION['nilai_pengisian_ahp_sapi'][$section_id][$counter-1]['nilai_responden'] == $o['opsi'] ? 'selected' : '' ?>
                                                    ><?= $o['opsi'] ?></option>
                                                <?php endforeach ?>
                                            </select>

                                        </div>

                                    <?php endfor ?>

                                </div>

                            </div>

                            <div class="col-2">
                                <h3><?= $kriteria[$j]['nama_kriteria'] ?></h3>
                            </div>

                        </div> 

                    <?php endfor ?>

                <?php endfor ?>

            <?php elseif($level == 2) : ?>
                <input type="hidden" name="entitas_id" value="<?= $indikator[0]['entitas'] ?>"> <!-- ambil id identitas -->

                <?php $counter=0 ?>

                <?php for ($i = 0 ; $i < count($indikator) ; $i++) : ?>
                
                    <?php for ($j = $i+1 ; $j < count($indikator) ; $j++) : ?>

                        <div class="row">

                            <div class="col-2">
                                <h3><?= $indikator[$i]['kode_s_i'] ?></h3>
                            </div>

                            <div class="row col-8 d-flex justify-content-center">

                                <div class="row">

                                    <?php for ($k=1; $k <= $_SESSION['pengisian_ahp_sapi']['responden'] ; $k++) : ?> 

                                        <?php $counter++ ?>

                                        <div class="form-group mr-4">

                                            <input type="hidden" name="section_id" value="<?= $section_id ?>">
                                            <input type="hidden" name="responden<?= $counter ?>" value="<?= $_SESSION['pengisian_ahp_sapi']['nama'.$k] ?>">
                                            <input type="hidden" name="kriteria1_<?= $counter ?>" value="<?= $indikator[$i]['kode_s_i'] ?>">
                                            <input type="hidden" name="kriteria2_<?= $counter ?>" value="<?= $indikator[$j]['kode_s_i'] ?>">

                                            <label for="pilihan-ahp<?= $k ?>">
                                                <?= $_SESSION['pengisian_ahp_sapi']['nama'.$k] ?>
                                            </label>

                                            <select class="mr-2 form-control" name="nilai-ahp<?= $counter ?>" required>
                                                <option value="" disabled selected>Pilih Nilai</option>
                                                <?php foreach($opsi as $o) : ?>
                                                    <option value="<?= $o['opsi'] ?>"
                                                        <?= isset($_SESSION['nilai_pengisian_ahp_sapi'][$section_id]) && $_SESSION['nilai_pengisian_ahp_sapi'][$section_id][$counter-1]['nilai_responden'] == $o['opsi'] ? 'selected' : '' ?>
                                                    ><?= $o['opsi'] ?></option>
                                                <?php endforeach ?>
                                                <option value="0.33" selected>test</option>
                                            </select>

                                        </div>

                                    <?php endfor ?>

                                </div>

                            </div>

                            <div class="col-2">
                                <h3><?= $indikator[$j]['kode_s_i'] ?></h3>
                            </div>

                        </div> 

                    <?php endfor ?>

                <?php endfor ?>


            <?php endif ?>
            

        </div>
        
    </div>

    <input type="hidden" name="counter" value="<?= $counter ?>">
    <br><br>
    <button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Simpan</button>

    </form>
    
    <a href="<?= base_url('officer/insert_pengisian_ahp_sapi') ?>"><button class="btn btn-warning">Selesai "!"</button></a>
    
</div>