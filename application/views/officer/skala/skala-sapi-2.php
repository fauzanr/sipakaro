<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<h1 class="h3 mb-4 text-gray-800" style="float: right;">Pengisian Kuesioner Skala</h1>
<h1 class="h3 mb-4 text-gray-800">Skala</h1>
<h1 class="h4 mb-4 text-gray-800">Skala Sapi - Peternak</h1>
<br>

<div class="table-responsive">
    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col"></th>
                <th scope="col">Indikator</th>
                <th scope="col">Nilai Skala</th>
            </tr>
        </thead>
        <tbody>
            <?php $counter = 0; ?>
            <?php foreach($_SESSION['output_skala_sapi'] as $k => $v) : ?>

                <?php $counter++ ?>
                <tr>
                    <th scope="row"><?= $counter ?></th>
                    <td><?= $k ?></td>
                    <td><?= $v['performansi_lapangan'] ?></td>
                </tr>

            <?php endforeach ?>
        </tbody>
    </table>
</div>

<br>
<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Kriteria Skor Indikator</h2>

<form action="<?php echo base_url().'officer/input_skala_sapi_2' ?>" method="post">

    <table class="table table-hover">
        <thead class="thead-dark ">
            <tr>
                <th scope="col">Indikator</th>
                <th scope="col">1</th>
                <th scope="col">2</th>
                <th scope="col">3</th>
                <th scope="col">4</th>
                <th scope="col">5</th>
                <th scope="col">6</th>
                <th scope="col">Skor Indikator</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($indikator as $i) : ?>
                <?php switch($i['kode_s_i']) {
                    case $i['kode_s_i'] === 'PE1':
                        echo '<tr>
                            <td><label for="pe1"></label>PE1</td>
                            <td>Rp 17.163.215,1 - Rp 27.065.497,96</td>
                            <td>Rp 27.065.497,96 - Rp 36.967.760,84</td>
                            <td>Rp 36.967.760,84 - Rp 46.870.033,71</td>
                            <td>Rp 46.870.033,72 - Rp 56.772.306,59</td>
                            <td>Rp 56.772.306,59 - Rp 66.674.579,46</td>
                            <td>≥ Rp 66.674.579,46</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
                    case $i['kode_s_i'] === 'PE2':
                        echo '<tr>
                            <td><label for="pe2"></label>PE2</td>
                            <td>100%</td>
                            <td>80% - 99%</td>
                            <td>60% - 79%</td>
                            <td>40% - 59%</td>
                            <td>20% - 39%</td>
                            <td>0 - 19%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
                    case $i['kode_s_i'] === 'PE3':
                        echo '<tr>
                            <td><label for="pe3"></label>PE3</td>
                            <td>0 - 19%</td>
                            <td>20% - 39%</td>
                            <td>40% - 59%</td>
                            <td>60% - 79%</td>
                            <td>80% - 99%</td>
                            <td>100%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
                    case $i['kode_s_i'] === 'PE4':
                        echo '<tr>
                            <td><label for="pe4"></label>PE4</td>
                            <td>0 - 19%</td>
                            <td>20% - 39%</td>
                            <td>40% - 59%</td>
                            <td>60% - 79%</td>
                            <td>80% - 99%</td>
                            <td>100%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
                    case $i['kode_s_i'] === 'PS1':
                        echo '<tr>
                            <td><label for="ps1"></label>PS1</td>
                            <td>0,88 - 0,94</td>
                            <td>0,95 - 1,01</td>
                            <td>1,02 - 1,08</td>
                            <td>1,09 - 1,15</td>
                            <td>1,16 - 1,22</td>
                            <td>≥ 1,23</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
                    case $i['kode_s_i'] === 'PS2':
                        echo '<tr>
                            <td><label for="ps2"></label>PS2</td>
                            <td>0 - 19%</td>
                            <td>20% - 39%</td>
                            <td>40% - 59%</td>
                            <td>60% - 79%</td>
                            <td>80% - 99%</td>
                            <td>100%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
                    case $i['kode_s_i'] === 'PS3':
                        echo '<tr>
                            <td><label for="ps3"></label>PS3</td>
                            <td>0 - 9%</td>
                            <td>10% - 19%</td>
                            <td>20% - 29%</td>
                            <td>30% - 39%</td>
                            <td>40% - 49%</td>
                            <td>50%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
					break;
                    case $i['kode_s_i'] === 'PS4':
                        echo '<tr>
                            <td><label for="ps4"></label>PS4</td>
                            <td>100%</td>
                            <td>80% - 99%</td>
                            <td>60% - 79%</td>
                            <td>40% - 59%</td>
                            <td>20% - 39%</td>
                            <td>0 - 19%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
					break;
                    case $i['kode_s_i'] === 'PL1':
                        echo '<tr>
                            <td><label for="pl1"></label>PL1</td>
                            <td>≥ Rp 99.626.390,55</td>
                            <td>Rp 79.701.112,44 - Rp 99.626.390,54</td>
                            <td>Rp 59.775.834,33 - Rp 79.701.112,43</td>
                            <td>Rp 39.850.556,22 - Rp 59.775.834,32 </td>
                            <td>Rp 19.925.278,11 - Rp 39.850.556,21 </td>
                            <td>0 - Rp 19.925.278,1</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
					break;
                    case $i['kode_s_i'] === 'PL2':
                        echo '<tr>
                            <td><label for="pl2"></label>PL2</td>
                            <td>≥ Rp 28.041.145.920 </td>
                            <td>Rp 22.432.916.736 - Rp 28.041.145.919,99 </td>
                            <td>Rp 16.824.687.552 - Rp 22.432.916.735,99 </td>
                            <td>Rp 11.216.458.368 - Rp 16.824.687.551,99</td>
                            <td>Rp 5.608.229.184 - Rp 11.216.458.367,99</td>
                            <td>0 - Rp 5.608.229.183,99</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
					break;
                    case $i['kode_s_i'] === 'PL3':
                        echo '<tr>
                            <td><label for="pl3"></label>PL3</td>
                            <td>≥ Rp 66.509.232,7</td>
                            <td>Rp 53.207.386,16 - Rp 66.509.232,69</td>
                            <td>Rp 39.905.539,62 - Rp 53.207.386,15</td>
                            <td>Rp 26.603.693,08 - Rp 39.905.539,61</td>
                            <td>Rp 13.301.846,54 - Rp 26.603.693,07</td>
                            <td>0 - Rp 13.301.846,53</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
					break;
					
					// RPH
					case $i['kode_s_i'] === 'RE1':
                        echo '<tr>
                            <td><label for=""></label>RE1</td>
                            <td> Rp 13.963.750,68 - Rp 209.451.282,06</td>
                            <td> Rp 209.451.282,07 - Rp 404.938.813,45</td>
                            <td> Rp 404.938.813,46 - Rp 600.426.344,84</td>
                            <td> Rp 600.426.344,84 - Rp 795.913.876,22</td>
                            <td> Rp 795.913.876,23 - Rp 991.401.407,61</td>
                            <td>≥ Rp 991.401.407,62</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RE2':
                        echo '<tr>
                            <td><label for=""></label>RE2</td>
                            <td>0 - 19%</td>
                            <td>20% - 39%</td>
                            <td>40% - 59%</td>
                            <td>60% - 79%</td>
                            <td>80% - 99%</td>
                            <td>100%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RS1':
                        echo '<tr>
                            <td><label for=""></label>RS1</td>
                            <td>0 - 6,71 </td>
                            <td>6,72 - 13,43</td>
                            <td>13,44 - 20,15</td>
                            <td>20,16 - 26,87</td>
                            <td>26,88 - 33,59</td>
                            <td>≥ 33,6</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RS2':
                        echo '<tr>
                            <td><label for=""></label>RS2</td>
                            <td>0 - 19%</td>
                            <td>20% - 39%</td>
                            <td>40% - 59%</td>
                            <td>60% - 79%</td>
                            <td>80% - 99%</td>
                            <td>100%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RS3':
                        echo '<tr>
                            <td><label for=""></label>RS3</td>
                            <td>0 - 9%</td>
                            <td>10% - 19%</td>
                            <td>20% - 29%</td>
                            <td>30% - 39%</td>
                            <td>40% - 49%</td>
                            <td>50%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RS4':
                        echo '<tr>
                            <td><label for=""></label>RS4</td>
                            <td>100%</td>
                            <td>80% - 99%</td>
                            <td>60% - 79%</td>
                            <td>40% - 59%</td>
                            <td>20% - 39%</td>
                            <td>0 - 19%</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RL1':
                        echo '<tr>
                            <td><label for=""></label>RL1</td>
                            <td> ≥ Rp 3.939.610</td>
                            <td> Rp 3.151.688 - Rp 3.939.609</td>
                            <td> Rp 2.363.766 - Rp 3.151.687</td>
                            <td> Rp 1.575.844 - Rp 2.363.765</td>
                            <td> Rp 787.922 - Rp 1.575.843</td>
                            <td> Rp 0 - Rp 787.921</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RL2':
                        echo '<tr>
                            <td><label for=""></label>RL2</td>
                            <td> ≥ Rp 3.893.112</td>
                            <td> Rp 3.114.490 - Rp 3.893.112</td>
                            <td> Rp 2.335.868 - Rp 3.939.608</td>
                            <td> Rp 1.557.245 - Rp 2.335.867</td>
                            <td> Rp 778.623 - Rp 1.557.244</td>
                            <td> Rp 0 - Rp 778.662</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;
					case $i['kode_s_i'] === 'RL3':
                        echo '<tr>
                            <td><label for=""></label>RL3</td>
                            <td> ≥ Rp 6.092.323</td>
                            <td> Rp 5.207.386 - Rp 6.509.232</td>
                            <td> Rp 3.905.540 - Rp 5.207.385</td>
                            <td> Rp 2.603.693 - Rp 3.905.539 </td>
                            <td> Rp 1,301.846 - Rp 2.603.692</td>
                            <td> Rp 0 - Rp 1.301.845</td>
                            <td><input required type="number" class="form-control" min="1" max="6" name="'.$i['kode_s_i'].'" value="1"></td>
                        </tr>';
                    break;							
                } ?>
            <?php endforeach ?>
        </tbody>
    </table>

    <br>
    <br>
    <input type="hidden" name="entitas" value="<?= $entitas ?>">
    <button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Next</button>

</form>


</div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->