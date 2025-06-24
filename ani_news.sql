-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2025 pada 05.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ani_news`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) NOT NULL,
  `kategori_id` bigint(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `konten_berita` text NOT NULL,
  `gambar_cover` varchar(255) NOT NULL,
  `lampiran` text NOT NULL,
  `lampiran_nama` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `kategori_id`, `judul_berita`, `konten_berita`, `gambar_cover`, `lampiran`, `lampiran_nama`, `created_at`, `updated_at`) VALUES
(4, 1, 'Anime \"Oshi no Ko\" Mengusung Tema Permasalahan Dalam Adaptasi Live-Action', 'Anime \"Oshi no Ko\" karya Akasaka Aka dan Mengo Yokoyari kembali mengusung tema realistik dalam salah satu bab cerita mereka, yaitu permasalahan dalam penulisan skrip atau naskah yang seringkali memangkas ide-ide karya original author.', '01J2ZS73PGXHTV5CQ5S8VRZZTY.jpg', '[\"01J2ZS73PRFMZHW5YEQEAHTWRA.pdf\"]', '{\"01J2ZS73PRFMZHW5YEQEAHTWRA.pdf\":\"Doc1.pdf\"}', '2024-07-17 07:13:21', '2024-07-17 07:23:57'),
(5, 2, 'Anime Gadis Rusa \"Shikanoko\" Trending di Media Sosial', 'Anime Gadis Rusa \"Shikanoko\" menjadi trending di media sosial, setelah merilis video promosional lagu satu jam, pembawaan anime itu sendiri memiliki keunikan tersendiri, dengan komedi absurd, gaya gambar simplistik, dan pembawaan alur yang santai.', '01J2ZX6EYSP7Q0MCNQRMP5MNMR.jpg', '[\"01J2ZX6EYYB2BB4NY6GM6RJTWB.pdf\"]', '{\"01J2ZX6EYYB2BB4NY6GM6RJTWB.pdf\":\"sknk.pdf\"}', '2024-07-17 08:33:30', '2024-07-17 08:33:30'),
(6, 1, 'Anime \"Jujutsu Kaisen\" Mengambil Berbagai Perspektif Setting Latar Nyata', 'Anime \"Jujutsu Kaisen\" mengambil berbagai perspektif setting latar nyata di Jepang dan dikombinasikan dengan pengaturan layout, komposisi pewarnaan dan cahaya yang selaras dapat menciptakan image realistik.', '01J2ZYRWN10JA1FXWESZ3N7GKG.jpg', '[]', '[]', '2024-07-17 09:01:02', '2024-07-17 09:01:02'),
(7, 2, 'Anime \"Jujutsu Kaisen\" Kembali Trending Dengan Perilisan Blu-Ray Terbaru ', 'Jujutsu Kaisen kembali trending sesaat setelah perilisan bluray episode 41 yang berisi pertarungan epik Sukuna dan Mahoraga yang tidak bisa terselesaikan saat penayangan perdana karena jadwal produksi buruk. Tetapi tim animasi terutama Hakuyu Go (direktur episode) yang memiliki visi besar akan bagiannya episode ini tetap menyelesaikannya, menjadi bukti ketekunan, dan niat kuat dari tim.', '01J33E2ZBTVXX7RS2W1SH5NHEE.jpg', '[]', '[]', '2024-07-18 17:26:24', '2024-07-19 04:38:17'),
(8, 3, 'Anime \"Bocchi The Rock\" Menyuguhkan Konser Dengan Nuansa Estetik', 'Anime \"Bocchi The Rock\" yang diproduksi studio Cloverworks, serta tim produksi dipimpin oleh Keiichiro Saito dan Shota Umehara kembali menyajikan adaptasi anime yang mengaplikasikan kreativitas tinggi dalam pengolahan dan pengarahan konser musik. Perpaduan antara sudut pandang pengambilan kamera unik yang menyoroti performa band, komunikasi antar anggota, dengan  komposisi pencahayaan yang ringan dapat memberikan nuansa unik pada penonton seolah mereka masuk ke dalam dunia para pemain band. ', '01J350RJM9ZKQ2DZ74BK0TKRV5.png', '[\"01J350RJME7XTM6QB4ZNVWD5BA.pdf\"]', '{\"01J350RJME7XTM6QB4ZNVWD5BA.pdf\":\"btrock.pdf\"}', '2024-07-19 08:12:01', '2024-07-19 08:16:41'),
(9, 3, 'Anime Bertema Kerajaan \"Karasu wa Aruji wo Erabanai\"', 'Anime \"Karasu wa Aruji wo Erabanai\" yang diproduksi oleh Studio Pierrot dan dipimpin oleh Yoshiaki Kyougoku membawakan tema nuansa kerajaan dengan sangat baik, detail karakter dan prop desain sangat diperhatikan, sehingga bisa memancarkan energi dari tiap karakter. Seperti \"Penggunaan cahaya remang-remang dan minim pewarnaan\" yang sering identik dengan adegan serius atau \"efek Vignette putih\" yang digunakan untuk menggambarkan kenangan yang indah di masa lalu.', '01J351PWKPDGTRBSCRC5GF1X16.png', '[]', '[]', '2024-07-19 08:28:34', '2024-07-19 08:29:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1721387966),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1721387966;', 1721387966),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1721377747),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1721377747;', 1721377747);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id` bigint(20) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_berita`
--

INSERT INTO `kategori_berita` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Konsep Realistik', '2024-06-26 10:46:57', '2024-06-26 10:46:57'),
(2, 'Trending Topik', '2024-06-26 10:46:57', '2024-06-26 10:46:57'),
(3, 'Estetika Visual', '2024-07-19 08:15:23', '2024-07-19 08:15:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penghargaan`
--

CREATE TABLE `penghargaan` (
  `id` bigint(20) NOT NULL,
  `judul_penghargaan` varchar(255) NOT NULL,
  `konten_penghargaan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penghargaan`
--

INSERT INTO `penghargaan` (`id`, `judul_penghargaan`, `konten_penghargaan`, `created_at`, `updated_at`) VALUES
(1, 'Anime \"Kaguya-sama\" dinobatkan sebagai Anime terbaik genre Romance 2023', 'Anime \"Kaguya-sama\" dinobatkan sebagai Anime terbaik genre Romance 2023 dalam penghargaan tahunan Crunchyroll.', '2024-07-18 15:19:18', '2024-07-19 16:40:45'),
(2, 'Anime \"Lycoris Recoil\" dinobatkan sebagai seri anime original terbaik 2023.', 'Anime \"Lycoris Recoil\" dinobatkan sebagai Anime original terbaik 2023 dalam penghargaan tahunan Crunchyroll.', '2024-07-17 07:19:18', '2024-07-17 07:19:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fY5TflteVXxVmvek9zmeQ4lvYZ1XuKoxLritHlGU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUhWN25VSUdZNXZjc1pqYXFta2Y0OGk3MFN6aXB0TlduNGU2M0lYSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750128823);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Farelli Faith A.', '220101088@mhs.udb.ac.id', NULL, '$2y$12$2jCNXnanYMlHqvEAksFcsOk4Q8cpithp3zKaTuRdL25aLNtiO28ZW', NULL, '2024-06-26 02:07:20', '2024-06-26 02:07:20'),
(2, 'Farelli', 'farelliandrianto@gmail.com', NULL, '$2y$12$EWxczr9ziplBWRWyAyuWj.VA.P6AEgiBFd3HOIBH0XgTlvq1qVKji', 'zlrAOwdka3ACwUtrzrxdBF3dBSgjTJHxOPX9LFSHs6gtoWXnZkjUDQbFGkNh', '2024-06-26 02:09:18', '2024-06-26 02:09:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`),
  ADD KEY `tema_id` (`kategori_id`),
  ADD KEY `kategori_id_2` (`kategori_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penghargaan`
--
ALTER TABLE `penghargaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `penghargaan`
--
ALTER TABLE `penghargaan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
