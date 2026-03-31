-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2025 at 08:34 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokowebii`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_produk`
--

CREATE TABLE `foto_produk` (
  `id` bigint UNSIGNED NOT NULL,
  `produk_id` bigint UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Brownies'),
(2, 'Combro'),
(3, 'Dawet'),
(4, 'Mochi'),
(5, 'Wingko');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_user_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_09_094445_create_kategori_table', 1),
(6, '2025_01_09_103458_create_produk_table', 1),
(7, '2025_04_21_035557_create_foto_produk_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double NOT NULL,
  `stok` int NOT NULL,
  `berat` double(8,2) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `user_id`, `status`, `nama_produk`, `detail`, `harga`, `stok`, `berat`, `foto`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'Dawet Daun Singkong', '<p>Dawet Daun Singkong Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 8000, 50, 3000.00, '20250221014318_67b7da361ced1.jpeg', '2025-02-19 21:34:18', '2025-02-20 18:43:18'),
(2, 2, 1, 1, 'Comro Frozen isi Oncom', '<p>Comro Frozen isi Oncom + Ikan Cakalang Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 35000, 50, 580.00, '20250220043619_67b6b1438cb09.jpeg', '2025-02-19 21:36:19', '2025-04-20 22:27:05'),
(3, 5, 1, 1, 'Wingko Singkong Cokelat', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 28000, 50, 660.00, '20250221014253_67b7da1d8a7bd.jpeg', '2025-02-19 21:38:25', '2025-02-20 18:42:53'),
(4, 5, 1, 1, 'Wingko Singkong Keju', '<p>Mochi Singkong Keju Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 28000, 100, 3000.00, '20250221014230_67b7da06d8d30.jpeg', '2025-02-19 23:00:23', '2025-02-22 02:26:07'),
(5, 4, 1, 0, 'Mochi Singkong Kacang', '<p>Mochi Singkong Kacang Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 30000, 50, 300.00, '20250221014217_67b7d9f9b16b7.jpg', '2025-02-20 18:42:17', '2025-02-20 18:46:10'),
(6, 4, 1, 1, 'Mochi Singkong Coklas', '<p>Mochi Singkong Coklat Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 30000, 50, 300.00, '20250221014439_67b7da871e300.jpg', '2025-02-20 18:44:39', '2025-02-20 18:44:48'),
(7, 4, 1, 1, 'Mochi Singkong Keju', '<p>Mochi Singkong Keju Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 30000, 50, 300.00, '20250222092216_67b99748cd96d.jpg', '2025-02-22 02:22:17', '2025-02-22 02:22:59'),
(8, 5, 1, 1, 'Singkong Keju Cokelat', '<p>Wingko Singkong Keju Cokelat Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis rerum, odio nulla modi deserunt delectus earum aliquam inventore ducimus, rem vitae totam iure! Dolores, inventore animi nihil totam sit dolor.</p><p>Voluptas commodi deserunt laudantium sunt aut maiores voluptatum illum adipisci repellat ipsam atque magni, saepe tempora quis hic possimus facere quidem. Dicta ea laboriosam illum quos. Sunt non fuga aut.</p><p>Quis aut eveniet corporis quasi quo repellendus ullam porro officia eaque accusantium error inventore tempore iure enim fuga voluptatibus tempora alias officiis, animi quia eius nesciunt nobis! Saepe, officia molestias.</p><p>Ratione vitae quam ducimus consectetur minus, veniam facere necessitatibus explicabo quo temporibus nemo quae hic enim. Numquam voluptatibus itaque aperiam aut, sunt expedita voluptatem delectus ut iusto! Ut, adipisci sequi!</p><p>Vitae blanditiis doloribus a, voluptate suscipit provident odit ut eaque? Doloremque at eligendi itaque reiciendis accusantium fuga, voluptatibus quos consectetur esse sunt neque quis laborum. Et fugiat voluptate quisquam culpa!</p>', 28000, 50, 300.00, '20250222092613_67b9983578a60.jpeg', '2025-02-22 02:26:13', '2025-04-20 22:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `role`, `status`, `password`, `hp`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', '1', 1, '$2y$10$8e/Vh3tr8Jeo5GMGcFue8.S2wH7mZygVF7KkoNgmHcDR2N8QyIlQi', '0812345678901', NULL, '2025-05-26 20:33:49', '2025-05-26 20:33:49'),
(2, 'Sopian Aji', 'sopianaji@admin.com', '0', 1, '$2y$10$8S9O3twp2zhHlzfxhQNcb.py4cZ524qkAWXhGq96H9gp.5U3QCnQS', '0812345678902', NULL, '2025-05-26 20:33:49', '2025-05-26 20:33:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foto_produk`
--
ALTER TABLE `foto_produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foto_produk_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_kategori_id_foreign` (`kategori_id`),
  ADD KEY `produk_user_id_foreign` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foto_produk`
--
ALTER TABLE `foto_produk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foto_produk`
--
ALTER TABLE `foto_produk`
  ADD CONSTRAINT `foto_produk_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `produk_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
