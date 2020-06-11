<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>SIPAKARO (Sistem Pengukuran Status Keberlanjutan Rantai Pasok)</title>

	<!-- Bootstrap core CSS -->
	<link href="<?= base_url('assets/vendor/bootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/vendor/simple-line-icons/css/simple-line-icons.css">

	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

	<!-- Plugin CSS -->
	<link rel="stylesheet" href="<?= base_url(); ?>/assets/device-mockups/device-mockups.min.css">

	<!-- Custom styles for this template -->
	<link href="<?= base_url(); ?>assets/css/new-age.min.css" rel="stylesheet">
	<link href="<?= base_url(); ?>assets/css/login.css" rel="stylesheet">

	<!-- Temporary navbar container fix -->
	<style>
		.navbar-toggler {
			z-index: 1;
		}

		@media (max-width: 576px) {
			nav>.container {
				width: 100%;
			}
		}

	</style>

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-toggleable-md navbar-light" id="mainNav">
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
			data-target="#navbarExample" aria-controls="navbarExample" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fa fa-bars"></i>
		</button>
		<div class="container">
			<a class="navbar-brand mt-3" href="#page-top">Sistem Pengukuran Status Keberlanjutan Rantai Pasok <p> Dinas
					Peternakan dan Kesehatan Provinsi Jawa Tengah </p></a>
			<div class="collapse navbar-collapse" id="navbarExample">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="#download">APLIKASI SIPAKARO</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#features">Tutorial</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#trial">Output</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#contact">Contact</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<header class="masthead">
		<div class="container">
			<div class="row">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

				<center>
					<h1>SISTEM PENGUKURAN STATUS KEBERLANJUTAN RANTAI PASOK DAGING SAPI DAN AYAM PEDAGING <p>
							( SIPAKARO )
						</p>
					</h1>
					<br>
					<a href="#download" class="btn btn-outline btn-xl">Masuk Ke Aplikasi Sekarang!</a>
					<br>
					<br>
				</center>

				<div>
					<br>
					<Center>
						<h5>Jika anda belum mengerti cara penggunaannya silahkan lihat Tutorial/ cara penggunaan
							aplikasi ini. Silahkan klik menu tutorial di atas</h5>
					</Center>
				</div>

				<div class="col-sm-5">
					<div class="device-container">

					</div>
				</div>
			</div>
		</div>
	</header>

	<section class="download bg-primary text-center" id="download">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<h2 class="section-heading">Sistem Pendukung Keputusan</h2>

					<p>Silahkan LOGIN atau REGISTRASI</p>
					<div class="badges">
						<!-- Link dengan SIPAKARO kita -->
						<a href="<?= base_url(); ?>auth" class="btn btn-outline btn-xl ">LOGIN</a>
						<a href="<?= base_url(); ?>auth/register" class="btn btn-outline btn-xl ">Registrasi</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="features" id="features">
		<div class="container">
			<div class="section-heading text-center">
				<h2> Cara Penggunaan Aplikasi SIPAKARO</h2>
				<p class="text-muted">Perhatikan Baik Baik</p>
				<p class="text-muted">Aplikasi Pendukung keputusan Jurusan di Universitas dapat anda gunakan dengan
					menentukan kriteria/ alasan anda memilih jurusan tersebut, lalu menentukan alternatif/ jurusan yang
					anda minati. Silahkan lihat panduan di bawah ini.</p>
				<hr>
			</div>
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="device-container">
						<div class="device-mockup macbook">
							<div class="device">
								<div class="screen">
									<!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
									<img src="<?= base_url(); ?>/assets/img/spk_main.png" class="img-fluid">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<div class="container-fluid">
						<br>
						<div class="row">
							<div class="col-lg-4">
								<div class="feature-item">
									<img src="<?= base_url(); ?>/assets/img/input_data.jpg" class="img-fluid" alt="">
									<br>
									<br>
									<br>
									<br>
									<h3>Input Data Kriteria dan Alternatif</h3>
									<p class="text-muted">Hal pertama yang anda lakukan adalah input data kriteria /
										alasan anda memilih jurusan dan alternatif jurusan anda</p>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="feature-item">
									<!-- <i class="icon-camera text-primary"></i>-->
									<img src="<?= base_url(); ?>/assets/img/analisa_data.jpg" class="img-fluid" alt="">
									<br>
									<br>
									<br>
									<br>
									<h3>Analisis Kriteria dan Alternatif</h3>
									<p class="text-muted">Selanjutnya adalah menganalisais kriteria yang anda sudah buat
										serta menganalisis alternatif berdasarkan hasil perhitungan kriteria yang anda
										sudah hitung.</p>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="feature-item">
									<img src="<?= base_url(); ?>/assets/img/rangking.jpg" class="img-fluid" alt="">
									<br>
									<br>
									<h3>Perangkingan</h3>
									<p class="text-muted">Tahap selanjutnya adalah melakukan perangkingan setalah anda
										melakukan analisis kriteria dan analisis Alternatif. Perangkingan ini agar
										mendapatkan hasil terbaik dari perbandingan yang anda lakukan</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="feature-item">
									<img src="<?= base_url(); ?>/assets/img/hasil.jpg" class="img-fluid" alt="">
									<br>
									<br>
									<br>
									<br>
									<h3>Hasil Perangkingan</h3>
									<p class="text-muted">Setelah anda melakukan proses SPK, akan mendapatkan hasil yang
										sudah di urutkan berdasarkan hasil tertinggi.</p>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="feature-item">
									<img src="<?= base_url(); ?>/assets/img/chart.jpg" class="img-fluid" alt="">
									<br>
									<br>
									<h3>Tampilan Chart</h3>
									<p class="text-muted">Tampilan chart ini akan lebih membuat menarik pengguna dan
										lebih mudah melihat selisih perbandingan.</p>
								</div>
							</div>
						</div>
						<center>

					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="contact bg-primary" id="contact">
		<div class="container">
			<h2>We <i class="fa fa-heart"></i> INDONESIA</h2>
			<h5>CINTAILAH LINGKUNGAN</h5><br />
			<h5> </h5><br />
			<h5>HAI KAMU, IYA KAMU </h5>
		</div>
	</section>

	<footer>
		<div class="container">
			<p>&copy; DINAS PETERNAKAN DAN KESEHATAN PROVINSI JAWA TENGAH.</p>
			<ul class="list-inline">
				<li class="list-inline-item">
					<a href="#">Privacy</a>
				</li>
				<li class="list-inline-item">
					<a href="#">Terms</a>
				</li>
				<li class="list-inline-item">
					<a href="#">FAQ</a>
				</li>
			</ul>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<?= base_url(); ?>/assets/vendor/jquery/jquery.min.js"></script>
	<script src="<?= base_url(); ?>/assets/vendor/tether/tether.min.js"></script>
	<script src="<?= base_url(); ?>/assets/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="<?= base_url(); ?>/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="<?= base_url(); ?>/assets/js/new-age.min.js"></script>
	<script src="<?= base_url(); ?>/assets/js/login.js"></script>


</body>

</html>
