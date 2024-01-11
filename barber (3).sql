-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 12:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barber`
--

-- --------------------------------------------------------

--
-- Table structure for table `barber`
--

CREATE TABLE `barber` (
  `barber_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `job_desk` varchar(50) NOT NULL,
  `img_file` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barber`
--

INSERT INTO `barber` (`barber_id`, `nama`, `job_desk`, `img_file`, `nomor_telepon`, `email`, `alamat`) VALUES
(1039, 'TraJusst', 'Founder Of Choice Barber', '1704778912522-1.jpg', '123412341234', 'sdfasf@gmail.com', 'jawa'),
(1040, 'Isabela & Aprilia', 'Owners', '1704778999606-2.jpg', '123412341234', 'sdfasf@gmail.com', 'Madura'),
(1041, 'Doma', 'Owner', '1704779043916-3.jpg', '123412341235', 'sfffffffasf@gmail.com', 'Bali'),
(1042, 'Isabela', 'Manage / Owner', '1704779112328-5.jpg', '123412341239', 'GAgggsasf@gmail.com', 'sulawesi'),
(1043, 'Yoga', 'Master Stylist', '1704779159466-6.jpg', '123412341210', 'Yogaf@gmail.com', 'Gianyar'),
(1044, 'Satria', 'Educator | Master Stylist', '1704779187436-7.jpg', '123412341211', 'satria@gmail.com', 'Gianyar,bali'),
(1045, 'Jack D Jack', 'Master Stylist', '1704779252931-11.jpg', '123412341211', 'jack@gmail.com', 'Australia'),
(1046, 'Marco D.Xebex', 'Advenced Stylist', '1704779285446-10.jpg', '123412341212', 'marco@gmail.com', 'brazil');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karir`
--

CREATE TABLE `karir` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `app_for` enum('Stylist','Assistant','Aesthetician','Receptionist') NOT NULL,
  `about` text DEFAULT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karir`
--

INSERT INTO `karir` (`id`, `name`, `email`, `phone_number`, `app_for`, `about`, `file`) VALUES
(3, 'gasuaaaa', 'salak@gmail.com', '123123123123', 'Aesthetician', 'aku tamatan bahasadfasdfdsdddsssdfdsfadfdsaaaaaaaa', '1704718794307-DENAH_X-J_F[1].doc'),
(4, 'member', 'jkt@gmail.com', '421233421344', 'Aesthetician', 'asdasdasdsa', '1704720627624-OnToday.jpg'),
(5, 'Putu Putra', 'a@gmial.com', '123123123123', 'Aesthetician', 'efefewrfewrqewrwer', '1704722455890-AUDIT-SISTEM-INFORMASI-ABSENSI-MENGGUNAKAN-COBIT-5.docx');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `layanan_id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `nama_layanan` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`layanan_id`, `type`, `nama_layanan`, `deskripsi`, `harga`) VALUES
(12002, 'Reguler', 'Gentlemen Grooming', 'A complete men’s grooming service. Dimulai dengan membersihkan wajah dengan handuk dingin kemudian potong rambut lalu keramas, selanjutnya membersihkan wajah dengan handuk hangat, mendapatkan pijat kepala, leher dan bahu lalu diakhiri dengan pengaplikasian tonic dan pomade untuk styling.', 65),
(12003, 'Reguler', 'Kids Haircut', 'Pengalaman potong rambut yang ramah dan nyaman untuk si kecil.', 65),
(12004, 'Reguler', 'Gentlemen Grooming & Hairspa', 'A complete men’s grooming service with hairspa. Dimulai dengan membersihkan wajah dengan handuk dingin kemudian potong rambut lalu keramas, selanjutnya membersihkan wajah dengan handuk hangat, lalu pengaplikasian masker rambut agar rambut sehat & ternutrisi, mendapatkan pijat kepala dan punggung lalu diakhiri dengan pengaplikasian tonik atau pomade.', 90),
(12005, 'Reguler', 'Gentlemen\'s Premium Package', 'Solusi perawatan rambut & wajah eksklusif. treatment yang kamu dapatkan: grooming, hair spa, sheet mask & hair loss serum.', 130),
(12006, 'Reguler', 'Grooming + Hair Tattoo', 'Untuk kamu yang ingin mencari gaya rambut khas. Biarkan barberman kami yang terampil untuk membentuk dan merancang gaya rambut-mu seperti hasil mahakaryanya.', 140),
(12007, 'Reguler', 'Black Hair Coloring', 'Ubah rambut ubanmu menjadi rambut hitam berkilau', 150),
(12008, 'Reguler', 'Basic Hair Color', 'Warnai rambutmu (tanpa dibleaching) dengan sempurna sesuai dengan warna idaman-mu dengan barberman kami yang sudah berpengalaman.', 300),
(12009, 'Reguler', 'Fashion Hair Color', 'Warnai rambutmu dengan sempurna sesuai dengan warna idaman-mu dengan barberman kami yang sudah berpengalaman.', 800),
(12010, 'Reguler', 'Smoothing', 'Pelurusan rambut dengan hasil yang natural', 350),
(12011, 'Reguler', 'Perm Hair Treatment', 'Pengeritingan rambut dengan hasil yang natural dan trendy', 500),
(12012, 'Reguler', 'Korean Perm', 'Membuat rambut kamu terlihat lebih rata (tidak jigrak) dibagian samping (down perm) dan lebih bervolume juga berbentuk di bagian depan & atas rambut (root lift)', 150),
(12013, 'Reguler', 'Anti-Dandruff Treatment', 'Treatment untuk menghilangkan ketombe', 100),
(12014, 'Reguler', 'Hair Repair Treatment', 'Treatment untuk rambut yang sudah rusak akibat bahan kimia yang berfungsi untuk mengembalikan kesehatan rambutmu', 150),
(12015, 'Reguler', 'Hair Loss Serum Treatment', 'Solusi untuk rambut rontok & tipis. Berguna untuk mengurangi kerontokan rambut', 35),
(12016, 'Reguler', 'Wash, Massage & Hairspa', 'Diawali dengan pemijatan kepala dan punggung , lalu dapatkan rambut kilaumu yang lebih sehat dengan hairspa dan pengaplikasian tonik atau pomade', 50),
(12017, 'Reguler', 'Face Treatment with Gold Mask & Gold Serum', 'Kulit sehat, wajah sehat Treatment untuk mencerahkan & mengencangkan kulit wajah dengan serum emas berkualitas tinggi', 100),
(12018, 'Reguler', 'Black Pore Face Mask', 'Komedo? Jangan khawatir. Treatment masker wajah ini bisa untuk menghilangkan komedo kamu.', 40),
(12019, 'Reguler', 'Gentlemen Shave', 'Dimulai dengan handuk panas untuk merilekskan kulit wajah dan membuka pori-pori wajah lalu diikuti dengan pencukuran yang nyaman.', 35),
(12033, 'Reguler', 'Mohawak Mihawk', 'mangkas asuhhh', 50);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `customer_id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`customer_id`, `nama`, `nomor_telepon`, `email`, `alamat`) VALUES
(1, 'yanto', '08123456789', 'asfafafds@gmial.com', 'jawa barat');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `n_depan` varchar(20) NOT NULL,
  `n_belakang` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `total` varchar(50) DEFAULT NULL,
  `layanan_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `n_depan`, `n_belakang`, `no_telp`, `email`, `alamat`, `kode_pos`, `bank`, `total`, `layanan_id`, `created_at`, `updated_at`) VALUES
(10114, 'nanas', 'masalah', '123123123123', 'Lionel@gmail.com', 'jawa', '12345', 'bca', '350', 12010, '2024-01-09 04:00:07', '2024-01-08 20:00:07'),
(10117, 'sasuke', 'uciha', '123123123123', 'sdfasf@gmail.com', 'canada, bangkok', '12345', 'gopay', '50', 12016, '2024-01-08 20:40:08', '2024-01-08 20:40:08'),
(10118, 'sat', 'dd', '0988', 'Lionel@gmail.com', 'jawa', '12345', 'bca', '50', 12033, '2024-01-09 03:44:42', '2024-01-09 03:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barber`
--
ALTER TABLE `barber`
  ADD PRIMARY KEY (`barber_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `karir`
--
ALTER TABLE `karir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`layanan_id`),
  ADD UNIQUE KEY `nama_layanan` (`nama_layanan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `layanan_id` (`layanan_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barber`
--
ALTER TABLE `barber`
  MODIFY `barber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karir`
--
ALTER TABLE `karir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `layanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12034;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10119;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`layanan_id`) REFERENCES `layanan` (`layanan_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
