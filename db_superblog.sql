-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 07:00 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_superblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'বাংলাদেশ', '2019-03-15 12:34:43', '2019-03-15 12:34:43'),
(2, 'আন্তর্জাতিক', '2019-03-15 12:39:06', '2019-03-15 12:39:06'),
(6, 'অর্থনীতি', '2019-03-15 17:17:02', '2019-03-15 18:24:03'),
(7, 'খেলা', '2019-03-15 17:35:46', '2019-03-15 18:24:29'),
(8, 'Raj', '2019-03-15 18:22:00', '2019-03-15 18:22:00'),
(9, 'sajib Kumer', '2019-03-15 18:22:37', '2019-03-15 18:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_01_094011_create_categories_table', 1),
(4, '2019_03_01_094229_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `user_id`, `comment_id`, `title`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 10, 'Sint iste maxime at eos fuga. bugui Helo', 'Numquam ducimus aut odio cupiditate velit. Dolorem sequi voluptatem maxime laudantium amet delectus facilis. Unde quia et totam voluptas praesentium quae omnis.', '1553235280.jpeg', '2019-03-15 22:03:48', '2019-03-25 00:47:02'),
(7, 7, 1, 10, 'Impedit ea non libero praesentium quis necessitatibus nam.', 'Explicabo et dolores eveniet velit. Voluptatem tenetur vel distinctio doloremque temporibus omnis itaque. Et quas assumenda non occaecati voluptatem iste.', '1553235314.jpeg', '2019-03-15 22:03:48', '2019-03-22 00:15:15'),
(9, 1, 1, 10, 'Quod quis voluptatem repudiandae quisquam ea ea totam.', 'Quam occaecati minima nihil quo quis et. In ut odit eum et iste sit. Ducimus maxime aut itaque vel facere.', '1553235344.jpeg', '2019-03-15 22:03:48', '2019-03-22 00:15:44'),
(10, 1, 1, 8, 'Ut minima sit qui nobis.', 'Est velit in earum et. Alias qui ut maiores voluptas et. Mollitia quam nemo aspernatur ratione. Recusandae consequatur aliquam rerum non quas iure.', '1553235352.jpeg', '2019-03-15 22:03:48', '2019-03-22 00:15:52'),
(13, 1, 1, NULL, 'শ্যাম ভূমিজের গ্রামে পানি নিয়ে স্বস্তি', 'স্ত্রী রমণী ভূমিজ, দুই সন্তান দেবঙ্কর ভূমিজ (৬ বছর) ও দিপা ভূমিজকে (৮ মাস) নিয়ে শ্যাম ভূমিজের সংসার। পৌনে দুই বছরে ধরে মৌলভীবাজারের রাজারঘাটের টিপাইছড়া চা–বাগানের বসবাস করছেন শ্যাম। ছয় মাস আগেও এ জায়গায় ছিল না কোনো পানি সরবরাহের ব্যবস্থা।\nপানি সংগ্রহের উৎস বলতে ছিল টিলার নিচে, প্রায় আধা মাইল দূরে অবস্থিত একটি কল। যেখানে প্রায় সারা বছরই পানির সরবরাহ থাকত। অন্য ব্যবস্থা না থাকায় এই টিলায় বসবাসরত প্রতিটি পরিবারকেই তখন পানি সংগ্রহের জন্য প্রতিদিন আধা মাইল দূরে নিয়মিত যাতায়াত করতে হতো। যাতায়াতের এ পথও ছিল ঝুঁকিপূর্ণ।', '1553235094.jpeg', '2019-03-21 22:48:35', '2019-03-22 00:11:35'),
(14, 2, 1, NULL, 'সামরিক ধাঁচের আগ্নেয়াস্ত্র নিষিদ্ধ করছে নিউজিল্যান্ড', 'নিউজিল্যান্ড সব ধরনের সেমি-অটোমেটিক আগ্নেয়াস্ত্র নিষিদ্ধ করবে। দেশটির প্রধানমন্ত্রী জাসিন্ডা আহডার্ন এ কথা জানিয়েছেন। আজ বৃহস্পতিবার বিবিসি অনলাইনের প্রতিবেদনে এই তথ্য জানানো হয়।\n\nনিউজিল্যান্ডের ক্রাইস্টচার্চের মসজিদ গত শুক্রবারের ভয়াবহ সন্ত্রাসী হামলায় সেমি-অটোমেটিক আগ্নেয়াস্ত্র ব্যবহার করা হয়েছিল।\nক্রাইস্টচার্চের আল নুর মসজিদ ও লিনউড মসজিদে বন্দুকধারীর ওই হামলায় পাঁচ বাংলাদেশিসহ ৫০ জন নিহত হন। আহত হন ৪২ জন। হামলার পর নিউজিল্যান্ডের অস্ত্র আইন সংশোধনের বিষয়টি আলোচনার কেন্দ্র চলে আসে।', '1553230274.jpeg', '2019-03-21 22:51:14', '2019-03-21 22:51:14'),
(15, 6, 1, NULL, 'সামরিক ধাঁচের আগ্নেয়াস্ত্র নিষিদ্ধ করছে নিউজিল্যান্ড', 'নিউজিল্যান্ডের ক্রাইস্টচার্চের মসজিদ গত শুক্রবারের ভয়াবহ সন্ত্রাসী হামলায় সেমি-অটোমেটিক আগ্নেয়াস্ত্র ব্যবহার করা হয়েছিল।', '1553230983.jpeg', '2019-03-21 23:03:03', '2019-03-21 23:03:03'),
(16, 6, 1, NULL, 'ঢাকা–চট্টগ্রাম–চেন্নাই পথে উড়বে ইউএস–বাংলা', 'ঢাকা থেকে চট্টগ্রাম হয়ে সরাসরি ভারতের চেন্নাই পথে উড়বে বেসরকারি এয়ারলাইনস ইউএস-বাংলার উড়োজাহাজ। ৩১ মার্চ থেকে এই সেবা চালু করবে প্রতিষ্ঠানটি। প্রাথমিকভাবে সপ্তাহে তিন দিন এই পথে উড়োজাহাজ চলবে।\n\nরাজধানীর সোনারগাঁও হোটেলে গতকাল বুধবার এক সংবাদ সম্মেলনে ইউএস-বাংলার পক্ষ থেকে নতুন এই পথে উড়োজাহাজ চালুর ঘোষণা দেওয়া হয়। এতে জানানো হয়, ঢাকা-চেন্নাই পথে একমুখী বা ওয়ানওয়ে টিকিটের মূল্য হবে সর্বনিম্ন ১৫ হাজার ৪৩ টাকা। যাওয়া-আসা বা রিটার্ন টিকিটের মূল্য হবে ২৪ হাজার ২২৩ টাকা। অবশ্য এখন রিটার্ন টিকিটে ২ হাজার টাকা ছাড় দেওয়া হচ্ছে। চট্টগ্রাম-চেন্নাই পথে ওয়ানওয়ের ভাড়া সর্বনিম্ন ১৬ হাজার ৪৫ টাকা। রিটার্ন টিকিটের মূল্য ২৬ হাজার ২২৫ টাকা নির্ধারণ করা হয়েছে।', '1553235208.jpeg', '2019-03-21 23:10:48', '2019-03-22 00:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SB SAJIB', 'sajib60@gmail.com', NULL, '$2y$10$Vj9rqPKcFqaRV/aZ2oHw5uLJerwE6SvL2SZ8kP9KlSeZOTNQq3F4S', NULL, '2019-03-15 12:33:42', '2019-03-15 12:33:42'),
(2, 'Steve Cummings', 'sboehm@example.net', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZNAmqiU2Rg', '2019-03-15 22:03:46', '2019-03-15 22:03:46'),
(3, 'Justina Kub', 'kutch.ford@example.com', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rgSKFPN3pX', '2019-03-15 22:03:46', '2019-03-15 22:03:46'),
(4, 'Makayla Emmerich', 'brett74@example.com', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SNa6YoYQSF', '2019-03-15 22:03:46', '2019-03-15 22:03:46'),
(5, 'Blair Labadie', 'windler.russel@example.net', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wcD0mc0P6D', '2019-03-15 22:03:46', '2019-03-15 22:03:46'),
(6, 'Dr. Kendall Larkin', 'gabbott@example.org', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V6UsdH70RU', '2019-03-15 22:03:46', '2019-03-15 22:03:46'),
(7, 'Oren Bailey', 'kallie39@example.com', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a5Wm05KatY', '2019-03-15 22:03:47', '2019-03-15 22:03:47'),
(8, 'Etha Wuckert', 'daisha79@example.org', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Us3dL81o99', '2019-03-15 22:03:47', '2019-03-15 22:03:47'),
(9, 'Mabelle Blick', 'leuschke.yvonne@example.org', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i8FkbPQMQR', '2019-03-15 22:03:47', '2019-03-15 22:03:47'),
(10, 'Taya Ziemann DDS', 'neil.lakin@example.net', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yzDdTx2co9', '2019-03-15 22:03:47', '2019-03-15 22:03:47'),
(11, 'Miss Melody Kihn DVM', 'merlin94@example.net', '2019-03-15 22:03:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AtpXvJjbbi', '2019-03-15 22:03:47', '2019-03-15 22:03:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
