<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Sapi</h2>

    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">Skala Keberlanjutan</h2>
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

                <?php 
                    $c = 0;
                    foreach($bobot_indikator as $b){
                        if($b['id_pengisi'] == $_SESSION['id_user']){
                            $c++;
                        }
                    } 
                ?>
                
                <?php if(count($bobot_indikator) < 1) : ?>
                    <tr>
                        <td colspan="6">Data Belum Terisi</td>
                    </tr>
                <?php elseif($c < 1) : ?>
                    <tr>
                        <td colspan="6">Data Skala / AHP masih ada yang belum terisi</td>
                    </tr>
                <?php else : ?>
                    <?php $counter = 1 ?>
                    <?php $total_nilai = 0 ?>
                    <?php foreach($bobot_indikator as $b) : ?>
                        <?php if($b['id_section'] == 2) : ?>
                            <?php $level0 = $b['kriteria'] ?>
                            <?php $bobot_lokal_entitas = $b['bobot'] ?>
                            <tr>
                                <td><?= $b['kriteria'] ?></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <?php $counter++ ?>
                            <?php foreach($bobot_indikator as $b) : ?>
                                <?php if($b['level1'] == $level0) : ?>
                                    <?php $level1 = $b['kriteria'] ?>
                                    <?php $bobot_lokal_dimensi = $b['bobot'] ?>
                                    <tr>
                                        <td></td>
                                        <td><?= $b['kriteria'] ?></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <?php $counter++ ?>
                                    <?php foreach($bobot_indikator as $b) : ?>
                                        <?php if($b['level0'] == $level0 && $b['level1'] == $level1 && $b['id_pengisi'] == $_SESSION['id_user']) : ?>
                                            <?php $bobot_global = $b['bobot'] * $bobot_lokal_dimensi * $bobot_lokal_entitas ?>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td><?= $b['kriteria'] ?></td>
                                                <td><?= number_format($bobot_global, 3)  ?></td>
                                                <td><?= $b['nilai_skala'] ?></td>
                                                <td><?= number_format($b['nilai_skala'] * $bobot_global, 3) ?></td>
                                            </tr>
                                            <?php $counter++ ?>
                                            <?php $total_nilai = $total_nilai + ($b['nilai_skala'] * $bobot_global) ?>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                <?php endif ?>
                            <?php endforeach ?>
                        <?php endif ?>
                    <?php endforeach ?>
                    <tr>
                        <td colspan="5">Total Nilai Keberlanjutan Akhir</td>
                        <td><?= number_format($total_nilai, 3) ?></td>
                    </tr>
                <?php endif; ?>
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