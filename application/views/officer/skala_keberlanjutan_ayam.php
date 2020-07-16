<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center"><?= $title; ?></h2>
    <br>

    <div class="table-responsive">
        <table class="table table-hover">
            <thead class="thead-dark ">
                <tr>
                    <th scope="col">Entitas</th>
                    <th scope="col">Dimensi</th>
                    <th scope="col">Indikator</th>
                    <th scope="col">Bobot Indikator</th>
                    <th scope="col">Nilai Skala</th>
                    <th scope="col">Bobot Global * Nilai Skala</th>
                </tr>
            </thead>
            <tbody>
            <?php if(count($skala_ayam) < 1) : ?>
                <tr>
                    <td colspan="6">Data Belum Terisi</td>
                </tr>
            <?php else : ?>
                <?php $hitung = 0; ?>
                <?php $counter = 1 ?>
                <?php foreach($skala_ayam as $s) : ?>
                    <?php if($s['id_section'] == 2) : ?>
                        <?php $level0 = $s['kriteria'] ?>
                        <?php $bobot_lokal_entitas = $s['bobot'] ?>
                        <tr>
                            <td><?= $s['kriteria'] ?></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <?php $counter++ ?>
                        <?php foreach($skala_ayam as $s) : ?>
                            <?php if($s['level1'] == $level0) : ?>
                                <?php $level1 = $s['kriteria'] ?>
                                <?php $bobot_lokal_dimensi = $s['bobot'] ?>
                                <tr>
                                    <td></td>
                                    <td><?= $s['kriteria'] ?></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <?php $counter++ ?>
                                <?php foreach($skala_ayam as $s) : ?>
                                    <?php if($s['level0'] == $level0 && $s['level1'] == $level1) : ?>
                                        <?php $bobot_global = $s['bobot'] * $bobot_lokal_dimensi * $bobot_lokal_entitas ?>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td><?= $s['kriteria'] ?></td>
                                            <td><?= $bobot_global ?></td>
                                            <td><?= $s['nilai_konversi'] ?></td>
                                            <td><?= $s['nilai_konversi'] * $bobot_global ?></td>
                                        </tr>
                                        <?php $counter++ ?>
                                        <?php $hitung = $hitung + $s['nilai_konversi'] * $bobot_global; ?>
                                    <?php endif ?>
                                <?php endforeach ?>
                            <?php endif ?>
                        <?php endforeach ?>
                    <?php endif ?>
                <?php endforeach ?>
                <tr>
                    <td colspan="5">Total Nilai Keberlanjutan Akhir</td>
                    <td><?= $hitung ?></td>
                </tr>
            <?php  endif; ?>
            </tbody>
        </table>
    </div>

    <br>
    <div class="col-sm-2">

    </div>

    <br>
    
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->