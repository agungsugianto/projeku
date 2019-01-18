-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2019 at 01:09 PM
-- Server version: 10.0.36-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.2.11-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boom`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangfotos`
--

CREATE TABLE `barangfotos` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `beli` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `slug`, `kategori_id`, `harga`, `foto`, `deskripsi`, `beli`, `created_at`, `updated_at`) VALUES
(1, 'Sweater Merah', 'sweater-merah-YM943P', 2, '85.000', 'Bb47mX_sweater.jpg', '<p>asasasasasas</p>', 'https://www.tokopedia.com/kezacc/jaket-sweater-1?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=6_catid=1836&lt=/shoppage+-+product+2+-+product+-+Semua+Etalase', '2018-11-25 17:42:44', '2018-11-25 17:45:24'),
(2, 'Sweater Salur-Hitam', 'sweater-salur-hitam-8c5XPf', 2, '85.000', 'Xo66zE_ss.jpg', '<p>asasasasas</p>', 'https://www.tokopedia.com/kezacc/jaket-sweater-salur-1?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=7_catid=1836&lt=/shoppage+-+product+2+-+product+-+Semua+Etalase', '2018-11-25 17:45:12', '2018-11-25 17:45:12'),
(3, 'Sandisk Memory 32GB', 'sandisk-memory-32gb-66jWWz', 6, '190.000', 'PKWOUs_32gb.jpg', '<p>asasasas</p>', 'https://www.tokopedia.com/kezacc/memory-32gb?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=2_catid=606&lt=/shoppage+-+product+1+-+product+-+Semua+Etalase', '2018-11-25 17:47:09', '2018-11-25 17:47:47'),
(4, 'Sandisk Memory 16GB', 'sandisk-memory-16gb-XwMAXG', 6, '120.000', 'Xmms2F_16gb.jpg', '<p>asasasasas</p>', 'https://www.tokopedia.com/kezacc/memory-16gb?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=2_catid=606&lt=/shoppage+-+product+1+-+product+-+Semua+Etalase', '2018-11-25 17:48:27', '2018-11-25 17:48:27'),
(5, 'Sandisk Memory 8GB', 'sandisk-memory-8gb-LyQwXz', 6, '90.000', 'jMMWly_8gb.jpg', '<p>asasasas</p>', 'https://www.tokopedia.com/kezacc/memory-8gb?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=2_catid=606&lt=/shoppage+-+product+1+-+product+-+Semua+Etalase', '2018-11-25 17:49:12', '2018-11-25 17:49:12'),
(6, 'Charger Oppo Vooc Ori', 'charger-oppo-vooc-ori-K2FxrR', 1, '90.000', '4EKW6O_KfRluE_oppo.jpg', '<p>asasasas</p>', 'https://www.tokopedia.com/kezacc/charger-oppo-vooc-ori?trkid=f%3DCa0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Dshop-product_page%3D1_ob%3D23_q%3D_po%3D1_catid%3D70&lt=%2Fshoppage+-+product+1+-+product+-+Semua+Etalase', '2018-11-25 17:51:10', '2018-11-25 17:51:10'),
(7, 'Headphone', 'headphone-bUfDvd', 4, '90.000', '2VwA6G_oIPOLf_h.jpg', '<p>asasasas</p>', 'https://www.tokopedia.com/kezacc/headphone?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=9_catid=564&lt=/shoppage+-+product+2+-+product+-+Semua+Etalase', '2018-11-25 17:52:03', '2018-11-25 17:52:03'),
(8, 'Kepala Charger 2 USB', 'kepala-charger-2-usb-QGByir', 1, '40.000', 'XrigiT_kepalacas.jpg', '<p>asdfghjik</p>', 'https://www.tokopedia.com/kezacc/batok-charger-2-usb?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=3_catid=564&lt=/shoppage+-+product+1+-+product+-+Semua+Etalase', '2018-11-25 17:52:51', '2018-11-25 17:52:51'),
(9, 'Speaker JBL FD-3-Hitam', 'speaker-jbl-fd-3-hitam-4q5MWY', 4, '90.000', 'B4ESZz_speakerbl.jpg', '<p>asdfghjkl;</p>', 'https://www.tokopedia.com/kezacc/speaker-jbl-fd-3?trkid=f=Ca0000L000P0W0S0Sh00Co0Po0Fr0Cb0_src=shop-product_page=1_ob=23_q=_po=2_catid=606&lt=/shoppage+-+product+1+-+product+-+Semua+Etalase', '2018-11-25 17:53:58', '2018-11-25 17:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` int(10) UNSIGNED NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `gambar`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'TwMAWD_YRG4tp_8gTqnK_c.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-11-25 17:55:05', '2018-11-25 17:55:05'),
(2, 'LvvVjj_Xc9pXI_anticrack.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-11-25 17:55:13', '2018-11-25 17:55:13'),
(3, 'huQqxb_Znvnre_1bQpnB_picseye.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-11-25 17:55:20', '2018-11-25 17:55:20'),
(4, 'bjLwh0_Xo66zE_ss.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-11-25 17:55:30', '2018-11-25 17:55:30'),
(5, 'Tl58te_vR2643_3Pvyha_sb.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-11-25 17:55:50', '2018-11-25 17:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Charger', 'casing', '2018-11-25 17:41:51', '2018-11-25 17:43:36'),
(2, 'Fashion', 'fashion', '2018-11-25 17:42:13', '2018-11-25 17:42:13'),
(3, 'Aksesoris', 'aksesoris', '2018-11-25 17:43:41', '2018-11-25 17:43:41'),
(4, 'Audio', 'audio', '2018-11-25 17:43:47', '2018-11-25 17:43:47'),
(6, 'Kartu Memori', 'kartu-memori', '2018-11-25 17:44:12', '2018-11-25 17:44:12'),
(7, 'Kartu Perdana/Kuota', 'kartu-perdanakuota', '2018-11-25 17:44:18', '2018-11-25 17:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2018_09_27_070056_create_kategoris_table', 1),
(20, '2018_09_27_070119_create_barangs_table', 1),
(21, '2018_09_27_070137_create_galeris_table', 1),
(22, '2018_09_27_071352_laratrust_setup_tables', 1),
(23, '2018_10_19_083524_create_promos_table', 1),
(24, '2018_10_24_065153_create_barangfotos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promos`
--

INSERT INTO `promos` (`id`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'dGRuBf_iklan.PNG', '2018-11-25 17:56:01', '2018-11-25 17:56:01'),
(2, 'wNcB6s_00XrVt_FILE1137.JPG', '2018-11-25 22:30:44', '2018-11-25 22:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2018-11-16 20:15:18', '2018-11-16 20:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Aksesoris', 'admin@gmail.com', NULL, '$2y$10$YcNH/Fb1ujWOMODrTY9l2.OYpdVqIPlsphWGMnnbecRJYfOaaonym', '1Ql2oj4SLNUn89VveLMQKJVbKAQ446cZTEsonkeVjEV4dGt0qaZjKPP2B4pJ', '2018-11-16 20:15:19', '2018-11-16 20:15:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangfotos`
--
ALTER TABLE `barangfotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangfotos_barang_id_foreign` (`barang_id`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangs_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `barangfotos`
--
ALTER TABLE `barangfotos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangfotos`
--
ALTER TABLE `barangfotos`
  ADD CONSTRAINT `barangfotos_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `barangs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
