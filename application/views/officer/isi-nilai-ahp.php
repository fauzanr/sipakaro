<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h2 class="h5 mb-4 text-gray-800">Ayam</h2>

    <h2 class="h3 mb-4 text-gray-800 d-flex justify-content-center">Perhitungan Bobot Indikator - AHP</h2>
    <br>

    <h2 class="h4 mb-4 text-gray-800">Entitas</h2>

    <?php // print_r($input) ?>

    <br>
    <div class="row">
        <div class="col-sm-2">
            <h3>RPH</h3>
        </div>
        <div class="row col-md-8 d-flex justify-content-center">

            <?php echo validation_errors(); ?>
            <form action="<?php echo base_url().'officer/input-ahp-4' ?>" method="post">
            <?php for ($i=1; $i <= $_SESSION['responden'] ; $i++) : ?> 
                <!-- <div class="dropdown show mr-2">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink<?= $i ?>"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Isi
                    </a>
    
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink<?= $i ?>">
                        <a class="dropdown-item" href="#">1</a>
                        <a class="dropdown-item" href="#">2</a>
                        <a class="dropdown-item" href="#">3</a>
                        <a class="dropdown-item" href="#">4</a>
                        <a class="dropdown-item" href="#">5</a>
                        <a class="dropdown-item" href="#">6</a>
                        <a class="dropdown-item" href="#">7</a>
                        <a class="dropdown-item" href="#">8</a>
                        <a class="dropdown-item" href="#">9</a>
                        <a class="dropdown-item" href="#">0.55</a>
                        <a class="dropdown-item" href="#">0.33</a>
                        <a class="dropdown-item" href="#">0.25</a>
                        <a class="dropdown-item" href="#">0.20</a>
                        <a class="dropdown-item" href="#">0.17</a>
                        <a class="dropdown-item" href="#">0.14</a>
                        <a class="dropdown-item" href="#">0.13</a>
                        <a class="dropdown-item" href="#">0.11</a>
                    </div>
                </div> -->

                <label for="pilihan-ahp<?= $i ?>">
                    <?= $_SESSION['nama'.$i] ?>
                </label>

                <input type="hidden" name="responden<?= $i ?>" value="<?= $_SESSION['nama'.$i] ?>">

                <select id="pilihan-ahp" class="mr-2" name="nilai-ahp<?= $i ?>">
                    <option value="0.11" disabled selected>Pilih Nilai</option>
                    <option value="0.11">0.11</option>
                    <option value="0.13">0.13</option>
                    <option value="0.14">0.14</option>
                    <option value="0.17">0.17</option>
                    <option value="0.20">0.20</option>
                    <option value="0.25">0.25</option>
                    <option value="0.33">0.33</option>
                    <option value="0.55">0.55</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                </select>
            <?php endfor ?>
            
        </div>
            <h3>Peternakan</h3>
        </div>

        <br>
        <br>
        <button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Next</button>

    </form>
    </div>
</div>