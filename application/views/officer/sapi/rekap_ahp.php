<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Sapi</h2>

    <script>
    function konfirmasi() {
        let result = confirm('hapus data AHP sapi?');
        if (result) {
            window.location = '<?= base_url('officer/hapus_ahp_sapi/'.$_SESSION['id_user']) ?>'
        }
    }
    </script>
    <a onclick="konfirmasi()"><button class="btn btn-danger">Hapus data AHP</button></a>

    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">Hasil Rekapan AHP</h2>
    <br>

    <h5>Total Responden: <?= $jumlah_responden ?></h5>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead class="thead-dark ">
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Entitas</th>
                    <th scope="col">Bobot Lokal Entitas</th>
                    <th scope="col">Dimensi</th>
                    <th scope="col">Bobot Lokal Dimensi</th>
                    <th scope="col">Indikator</th>
                    <th scope="col">Bobot Lokal Indikator</th>
                    <th scope="col">Bobot Global Indikator Terhadap Dimensi</th>
                    <th scope="col">Bobot Global Indikator Terhadap Dimensi dan Entitas</th>
                </tr>
            </thead>
            <tbody>
                <?php $counter = 1 ?>
                <?php foreach($bobot as $b) : ?>
                    <?php if($b['id_section'] == 2) : ?>
                        <?php $level0 = $b['kriteria'] ?>
                        <?php $bobot_lokal_entitas = $b['bobot'] ?>
                        <tr>
                            <th scope="row"><?= $counter ?></th>
                            <td><?= $b['kriteria'] ?></td>
                            <td><?= number_format($b['bobot'], 3) ?></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <?php $counter++ ?>
                        <?php foreach($bobot as $b) : ?>
                            <?php if($b['level1'] == $level0) : ?>
                                <?php $level1 = $b['kriteria'] ?>
                                <?php $bobot_lokal_dimensi = $b['bobot'] ?>
                                <tr>
                                    <th scope="row"><?= $counter ?></th>
                                    <td></td>
                                    <td>-></td>
                                    <td><?= $b['kriteria'] ?></td>
                                    <td><?= number_format($b['bobot'], 3) ?></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <?php $counter++ ?>
                                <?php foreach($bobot as $b) : ?>
                                    <?php if($b['level0'] == $level0 && $b['level1'] == $level1) : ?>
                                        <?php // inisiasi C1 CR
                                            $c1cr[$b['level0'].'-'.$b['level1']]['level0'] = $b['level0'];
                                            $c1cr[$b['level0'].'-'.$b['level1']]['level1'] = $b['level1'];
                                            $c1cr[$b['level0'].'-'.$b['level1']]['C1'] = $b['C1'];
                                            $c1cr[$b['level0'].'-'.$b['level1']]['CR'] = $b['CR'];
                                        ?>
                                        <tr>
                                            <th scope="row"><?= $counter ?></th>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>-></td>
                                            <td><?= $b['kriteria'] ?></td>
                                            <td><?= number_format($b['bobot'], 3) ?></td>
                                            <td><?= number_format($bobot_lokal_dimensi * $b['bobot'], 3) ?></td>
                                            <td><?= number_format($bobot_lokal_entitas * $bobot_lokal_dimensi * $b['bobot'], 3) ?></td>
                                        </tr>
                                        <?php $counter++ ?>
                                    <?php endif ?>
                                <?php endforeach ?>
                            <?php endif ?>
                        <?php endforeach ?>
                    <?php endif ?>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>

    <br>
    <?php
        // print("<pre>".print_r($c1cr,true)."</pre>");
    ?>
    <div class="col-sm-8">
        <div>
            <div class="table-responsive">
                <table class="table table-hover table-sm">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Domain</th>
                            <th scope="col">CI</th>
                            <th scope="col">CR</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if(isset($c1cr)) : ?>
                            <?php foreach($c1cr as $k) :?>
                                <tr>
                                    <th scope="row"><?= $k['level0'] ?></th>
                                    <td><?= $k['level1'] ?></td>
                                    <td><?= number_format($k['C1']) ?></td>
                                    <td><?= number_format($k['CR']) ?></td>
                                </tr>
                            <?php endforeach ?>
                        <?php endif ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <br>
    
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->