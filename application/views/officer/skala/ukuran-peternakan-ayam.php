<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->

<!-- <h1 class="h3 mb-4 text-gray-800" style="float: right;">Pengisian Kuesioner Skala</h1> -->
<h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>

<br>

<h2 class="h4 mb-4 text-gray-800 d-flex justify-content-center">Silahkan pilih ukuran peternakan yang ingin dihitung</h2>

<h2 class="h6 mb-4">Ukuran Peternakan</h2>

<form action="<?php echo base_url().'officer/input_ukuran_peternakan' ?>" method="post">

    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Kecil</th>
                    <th scope="col">Sedang</th>
                    <th scope="col">Besar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input required type="radio" name="ukuran_peternakan" id="pilihan-skala" value="Kecil" <?= isset($_SESSION['ukuran_peternakan']) && $_SESSION['ukuran_peternakan'] == 'Kecil' ? 'checked' : '' ?>>
                    </td>
                    <td>
                        <input required type="radio" name="ukuran_peternakan" id="pilihan-skala" value="Sedang" <?= isset($_SESSION['ukuran_peternakan']) && $_SESSION['ukuran_peternakan'] == 'Sedang' ? 'checked' : '' ?>>
                    </td>
                    <td>
                        <input required type="radio" name="ukuran_peternakan" id="pilihan-skala" value="Besar" <?= isset($_SESSION['ukuran_peternakan']) && $_SESSION['ukuran_peternakan'] == 'Besar' ? 'checked' : '' ?>>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    
<br>
<br>

<button type="submit" class="btn btn-primary btn-lg col-md-2" style="float: right;">Submit</button>
</form>

</div>


<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->