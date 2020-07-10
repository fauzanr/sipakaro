<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

    <h2 class="h3 mbcol-sm-2 text-gray-800"><?= $title; ?></h2>
    <br>
    <?php if (isset($_SESSION['nilai_pengisian_skala'])) : ?>
        <?php if ($entitas['ket_a_e'] == 'RPA') : ?>
            <p>Progress: (<?= count($_SESSION['nilai_pengisian_skala'])-$jumlah_entitas_peternak ?>/<?= count($pagination) ?>)</p>
        <?php endif ?>
        <?php if ($entitas['ket_a_e'] == 'Peternak') : ?>
            <p>Progress: (<?= count($_SESSION['nilai_pengisian_skala']) ?>/<?= count($pagination) ?>)</p>
        <?php endif ?>
    <?php endif ?>

    <?php for ($i=0; $i < sizeof($pagination); $i++) : ?>
            <div class="btn-group" style="color: white;">
            <a class="<?= base_url(uri_string()) == (base_url().'officer/halaman_input_skala_ayam/'.$entitas['ket_a_e'].'/'.$pagination[$i]['kode_a_i']) ? 'active' : '' ?>" href="<?= base_url().'officer/halaman_input_skala_ayam/'.$entitas['ket_a_e'].'/'.$pagination[$i]['kode_a_i'] ?>">
            <button class="btn active">
                <?= $pagination[$i]['nama_kriteria'].' ('.$pagination[$i]['kode_a_i'].')' ?><?= isset($_SESSION['nilai_pengisian_skala'][$pagination[$i]['id_a_i']]) ? '<i class="fa fa-check"></i>' : '' ?>
            </button>
            </a>
            </div>
    <?php endfor ?>
    <br>

    <br>

    <h2 class="h3 text-gray-800 d-flex justify-content-center"><?= $indikator['ket_a_i'] ?></h2>

    <br>

    <?php echo validation_errors(); ?>
    <?php echo $this->session->flashdata('success'); ?>

    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Skala</th>
                    <th scope="col">1</th>
                    <th scope="col">2</th>
                    <th scope="col">3</th>
                    <th scope="col">4</th>
                    <th scope="col">5</th>
                </tr>
            </thead>
            <tbody>
                <?php if ($entitas['ket_a_e'] == 'Peternak') : ?>
                    <tr>
                        <td>Keterangan</td>
                        <td>Sangat buruk</td>
                        <td>Buruk</td>
                        <td>Cukup</td>
                        <td>Baik</td>
                        <td>Sangat Baik</td>
                    </tr>
                <?php elseif ($entitas['ket_a_e'] == 'RPA') : ?>
                    <tr>
                        <td>Keterangan</td>
                        <td>Sangat Tinggi</td>
                        <td>Tinggi</td>
                        <td>Cukup</td>
                        <td>Rendah</td>
                        <td>Sangat Rendah</td>
                    </tr>
                <?php endif ?>

                    <tr>
                        <td>Deskripsi</td>
                        <?php if ($opsi == 'Error, tidak ada opsi untuk kategori ini') : ?>
                            <?php for ($i=0; $i < 5; $i++) : ?>
                                <td>Opsi <?= $i+1 ?></td>
                            <?php endfor ?>
                        <?php else : ?>
                            <?php for ($i=0; $i < sizeof($opsi); $i++) : ?>
                                <td><?= $opsi[$i]['deskripsi_skala'] ?></td>
                            <?php endfor ?>
                        <?php endif ?> 
                    </tr>

            <form action="<?php echo base_url().'officer/input_data_skala_ayam' ?>" method="post">
                <?php $counter = 0 ?>
                <input type="hidden" name="indikator-id" value="<?= $indikator['id_a_i'] ?>">
                <input type="hidden" name="entitas-id" value="<?= $indikator['entitas'] ?>">
                <input type="hidden" name="indikator" value="<?= $indikator['kode_a_i'] ?>">
                <input type="hidden" name="entitas" value="<?= $entitas['ket_a_e'] ?>">
                <?php for ($i=1; $i < sizeof($_SESSION['pengisian_ahp']); $i++) : ?> 
                    <?php $counter++ ?>
                    <input type="hidden" name="responden<?= $i ?>" value="<?= $_SESSION['pengisian_ahp']['nama'.$i]; ?>">
                    <tr>
                        <td><?= $_SESSION['pengisian_ahp']['nama'.$i]; ?></td>
                        <td><input required type="radio" name="nilai-skala<?= $i ?>" id="pilihan-skala" value="1" <?= isset($_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']]) && $_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']][$counter-1]['nilai_skala'] == '1' ? 'checked' : '' ?>></td>
                        <td><input required type="radio" name="nilai-skala<?= $i ?>" id="pilihan-skala" value="2" <?= isset($_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']]) && $_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']][$counter-1]['nilai_skala'] == '2' ? 'checked' : '' ?>></td>
                        <td><input required type="radio" name="nilai-skala<?= $i ?>" id="pilihan-skala" value="3" <?= isset($_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']]) && $_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']][$counter-1]['nilai_skala'] == '3' ? 'checked' : '' ?>></td>
                        <td><input required type="radio" name="nilai-skala<?= $i ?>" id="pilihan-skala" value="4" <?= isset($_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']]) && $_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']][$counter-1]['nilai_skala'] == '4' ? 'checked' : '' ?>></td>
                        <td><input required type="radio" name="nilai-skala<?= $i ?>" id="pilihan-skala" value="5" <?= isset($_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']]) && $_SESSION['nilai_pengisian_skala'][$indikator['id_a_i']][$counter-1]['nilai_skala'] == '5' ? 'checked' : '' ?>></td>
                    </tr>
                <?php endfor; ?>
            </tbody>
        </table>
    </div>
    <br>
    <input type="hidden" name="counter" value="<?= $counter ?>">
    <button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Next</button>
    </form>

    <a href="<?= base_url('officer/insert_pengisian_skala_ayam') ?>"><button class="btn btn-warning">Selesai "!"</button></a>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->