<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">Hasil Rekapan AHP</h2>
    <br>

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
                            <td><?= $b['bobot'] ?></td>
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
                                    <td><?= $b['bobot'] ?></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <?php $counter++ ?>
                                <?php foreach($bobot as $b) : ?>
                                    <?php if($b['level0'] == $level0 && $b['level1'] == $level1) : ?>
                                        <tr>
                                            <th scope="row"><?= $counter ?></th>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>-></td>
                                            <td><?= $b['kriteria'] ?></td>
                                            <td><?= $b['bobot'] ?></td>
                                            <td><?= $bobot_lokal_dimensi * $b['bobot'] ?></td>
                                            <td><?= $bobot_lokal_entitas * $bobot_lokal_entitas * $b['bobot'] ?></td>
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
    <div class="col-sm-2">

    </div>
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
                        <tr>
                            <th scope="row">PETERNAKAN</th>
                            <th scope="row">Ekonomi</th>
                            <td>0,027</td>
                            <td>0,030</td>
                        </tr>
                        <tr>
                            <th scope="row">RPH</th>
                            <td>Sosial</td>
                            <td>0,148</td>
                            <td>0,099</td>
                        </tr>
                            <tr>
                            <th scope="row">RPH</th>
                            <td> Lingkungan</td>
                            <td>0,549</td>
                            <td>0,946</td>
                        </tr>
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