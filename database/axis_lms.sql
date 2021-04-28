-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 11:07 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axis_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `classses`
--

CREATE TABLE `classses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classses`
--

INSERT INTO `classses` (`id`, `course_id`, `subject_id`, `title`, `type`, `banner`, `url_link`, `description`, `date`, `time`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 'nisi', 'previous', 'https://via.placeholder.com/60x60.png/0066aa?text=dolores', 'https://via.placeholder.com/60x60.png/00aa11?text=quidem', 'Aperiam et quis facilis voluptatem unde saepe id est explicabo.', '2010-11-30', '18:48:24', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 6, 7, 'qui', 'previous', 'https://via.placeholder.com/60x60.png/0033ee?text=voluptatem', 'https://via.placeholder.com/60x60.png/00ff66?text=et', 'Odit temporibus a quis qui cupiditate quia repellendus.', '1999-03-16', '16:19:54', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 3, 9, 'nobis', 'live', 'https://via.placeholder.com/60x60.png/001133?text=consequatur', 'https://via.placeholder.com/60x60.png/00eebb?text=aut', 'Sed dolor sed molestiae rem beatae ipsa blanditiis id voluptate porro autem.', '1986-12-20', '08:42:39', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 2, 8, 'provident', 'previous', 'https://via.placeholder.com/60x60.png/00bb11?text=voluptatum', 'https://via.placeholder.com/60x60.png/002266?text=explicabo', 'Dolorum distinctio fugit est ea architecto et id labore beatae quos aut repudiandae.', '2015-10-24', '23:35:48', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 7, 5, 'eos', 'previous', 'https://via.placeholder.com/60x60.png/004433?text=voluptatibus', 'https://via.placeholder.com/60x60.png/00bbff?text=et', 'Excepturi molestiae nostrum fugiat officia ab vel.', '1970-11-06', '12:06:08', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 6, 6, 'tempore', 'upcomming', 'https://via.placeholder.com/60x60.png/00dd77?text=et', 'https://via.placeholder.com/60x60.png/000022?text=similique', 'Unde est molestiae sunt facilis porro reprehenderit.', '1971-08-06', '20:55:17', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 4, 10, 'cum', 'previous', 'https://via.placeholder.com/60x60.png/007788?text=impedit', 'https://via.placeholder.com/60x60.png/00bb77?text=ad', 'Maiores consectetur beatae numquam quia laudantium doloribus ut impedit sint facilis.', '1998-05-30', '01:30:47', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 8, 3, 'exercitationem', 'previous', 'https://via.placeholder.com/60x60.png/00bb33?text=doloribus', 'https://via.placeholder.com/60x60.png/00cc66?text=quo', 'Suscipit voluptatem voluptatum culpa nihil dicta ipsa quibusdam ducimus id rerum et.', '1990-12-19', '09:11:58', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 10, 6, 'aspernatur', 'live', 'https://via.placeholder.com/60x60.png/001188?text=facere', 'https://via.placeholder.com/60x60.png/00aa00?text=aliquid', 'Qui maxime autem ipsum et enim neque sunt.', '1974-04-15', '04:01:19', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 3, 6, 'nisi', 'previous', 'https://via.placeholder.com/60x60.png/00eeaa?text=id', 'https://via.placeholder.com/60x60.png/008844?text=est', 'Mollitia voluptatem illo animi repellat maxime vero error omnis qui.', '2014-03-17', '00:39:07', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `class_comments`
--

CREATE TABLE `class_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_comment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_comments`
--

INSERT INTO `class_comments` (`id`, `class_id`, `user_id`, `comment`, `parent_comment_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 'Magni ipsum eum ea sed est impedit.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 8, 1, 'Veniam architecto repudiandae eius autem voluptatem expedita placeat.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 3, 1, 'Cupiditate vel sint quod laboriosam laudantium aut vel excepturi.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 3, 1, 'Laboriosam aut illo deserunt sint labore non cum repellendus.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 2, 1, 'Voluptas sint voluptas magni incidunt perferendis in aspernatur animi accusantium quidem quis.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 4, 1, 'Temporibus culpa ipsam ratione maxime quos rerum expedita aut molestiae eum doloribus explicabo.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 10, 1, 'Corporis aut dolor saepe qui provident eaque quis veniam vitae praesentium.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 4, 1, 'Cum velit unde maxime exercitationem magni a quis blanditiis dolor eos animi omnis doloremque.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 3, 1, 'Rerum facilis non dolore laborum incidunt eos non.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 9, 1, 'Eos voluptatem pariatur molestiae delectus expedita ea quidem.', NULL, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `class_resources`
--

CREATE TABLE `class_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_resources`
--

INSERT INTO `class_resources` (`id`, `class_id`, `video_url`, `download_url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 4, 'http://gutmann.info/quis-ipsum-explicabo-sunt-voluptates-ut-ipsam', 'http://www.bergnaum.com/ut-nisi-eum-quam.html', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 3, 'http://www.halvorson.com/delectus-aut-error-sed-aliquid', 'http://quitzon.com/magnam-accusantium-neque-mollitia', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 5, 'http://www.thompson.com/possimus-explicabo-consequatur-dolorem-praesentium-voluptatem.html', 'http://www.koepp.org/', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 7, 'http://cormier.com/', 'https://www.spinka.com/laudantium-doloribus-sed-minima-itaque-nihil', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 8, 'http://leffler.org/et-esse-voluptatem-totam-accusantium-ea-labore-labore.html', 'http://balistreri.com/', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 7, 'http://www.jerde.com/exercitationem-aut-sapiente-asperiores-et', 'http://bashirian.com/', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 9, 'http://www.west.com/quibusdam-est-dicta-repellat-rerum-placeat-aperiam-consequatur.html', 'http://www.wiza.org/incidunt-consequuntur-quis-excepturi-facilis.html', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 3, 'https://torphy.org/autem-nihil-autem-distinctio-illo.html', 'http://spencer.com/suscipit-et-laudantium-omnis-dolorum-natus-ut-dolore.html', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 2, 'http://www.ebert.info/', 'http://kling.net/dignissimos-ut-ad-laborum-animi.html', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 10, 'http://eichmann.com/praesentium-quo-voluptatem-exercitationem-accusamus.html', 'http://www.trantow.org/et-ut-a-adipisci-enim-adipisci-occaecati.html', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `complain_boxes`
--

CREATE TABLE `complain_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `subscription_id`, `title`, `banner`, `short_desc`, `description`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1976, 'aperiam', 'https://via.placeholder.com/60x60.png/004422?text=dolores', 'Magnam neque natus ad.', 'Itaque cum reiciendis et sint ut laudantium ab deserunt et.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 3696, 'id', 'https://via.placeholder.com/60x60.png/00ccff?text=modi', 'Deleniti nostrum qui molestiae.', 'Veniam ut nisi laboriosam recusandae quia eligendi sunt eos atque ratione.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 4152, 'dicta', 'https://via.placeholder.com/60x60.png/002288?text=enim', 'Quasi et nihil et corporis consequuntur.', 'Distinctio magnam ex dolor nisi culpa ipsum et dolor.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 1009, 'deleniti', 'https://via.placeholder.com/60x60.png/00cc66?text=quibusdam', 'Consectetur voluptas sit et et velit placeat.', 'Rerum voluptatibus numquam iste quo ad velit perspiciatis minima.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 1931, 'quod', 'https://via.placeholder.com/60x60.png/007733?text=voluptatibus', 'Ut qui officiis maxime est.', 'Aperiam repellat est deleniti architecto error deserunt qui odio qui.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 9869, 'non', 'https://via.placeholder.com/60x60.png/0044bb?text=repellendus', 'Iste minus sapiente vel.', 'Aut eius eos atque nostrum eum recusandae dolore omnis a ut iste.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 1881, 'fugiat', 'https://via.placeholder.com/60x60.png/0066bb?text=aperiam', 'Est ut rem iste aut.', 'Et a est fugit sapiente similique assumenda maiores quos neque non blanditiis ut.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 8197, 'similique', 'https://via.placeholder.com/60x60.png/0044aa?text=sit', 'Quia et aliquam cupiditate quibusdam.', 'Ad excepturi voluptatem necessitatibus nisi at voluptatem.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 2314, 'maiores', 'https://via.placeholder.com/60x60.png/00bb11?text=eaque', 'Dolor est vel deserunt et.', 'Voluptates illum quae aut non magnam sunt et incidunt dolore sit culpa est.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 3052, 'perferendis', 'https://via.placeholder.com/60x60.png/00ee55?text=est', 'Id deserunt est natus ratione debitis velit.', 'Numquam sint soluta accusantium molestias delectus enim.', 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_courses`
--

CREATE TABLE `enroll_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll_courses`
--

INSERT INTO `enroll_courses` (`id`, `user_id`, `course_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 3, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 1, 10, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 1, 4, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 1, 9, 10, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 1, 6, 5, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 1, 3, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 1, 6, 8, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 1, 6, 7, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 1, 9, 4, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 1, 2, 5, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `total_question` int(11) DEFAULT NULL,
  `marks_per_question` int(11) DEFAULT NULL,
  `negative_marks` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `course_id`, `subject_id`, `exam_type`, `title`, `banner`, `duration`, `total_question`, `marks_per_question`, `negative_marks`, `date`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10, 10, NULL, 'quis', 'https://via.placeholder.com/60x60.png/00ff77?text=voluptates', 73, 18, 1, 1, '1997-05-09', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 7, 9, NULL, 'eos', 'https://via.placeholder.com/60x60.png/0066ee?text=est', 31, 45, 1, 1, '1987-08-15', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 8, 5, NULL, 'assumenda', 'https://via.placeholder.com/60x60.png/00ee99?text=consectetur', 73, 46, 2, 1, '2012-04-08', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 3, 8, NULL, 'consequatur', 'https://via.placeholder.com/60x60.png/00ccdd?text=architecto', 54, 81, 2, 1, '2004-09-03', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 1, 4, NULL, 'quia', 'https://via.placeholder.com/60x60.png/0022dd?text=aut', 63, 77, 1, 1, '1987-01-04', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 5, 10, NULL, 'rerum', 'https://via.placeholder.com/60x60.png/001188?text=possimus', 91, 14, 2, 1, '2020-03-21', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 3, 10, NULL, 'nihil', 'https://via.placeholder.com/60x60.png/008822?text=voluptatem', 78, 67, 1, 2, '1992-01-31', 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 5, 1, NULL, 'et', 'https://via.placeholder.com/60x60.png/00ff22?text=ut', 40, 85, 2, 1, '2016-05-02', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 1, 6, NULL, 'aperiam', 'https://via.placeholder.com/60x60.png/0033bb?text=rerum', 93, 76, 1, 1, '2006-06-28', 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 1, 2, NULL, 'et', 'https://via.placeholder.com/60x60.png/007711?text=optio', 85, 46, 1, 2, '2010-10-14', 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_25_045034_create_courses_table', 1),
(5, '2021_04_25_045215_create_subjects_table', 1),
(6, '2021_04_25_045216_create_exams_table', 1),
(7, '2021_04_25_045217_create_questions_table', 1),
(8, '2021_04_25_045337_create_options_table', 1),
(9, '2021_04_26_091046_create_notices_table', 1),
(10, '2021_04_26_091854_create_schedules_table', 1),
(11, '2021_04_26_093405_create_classses_table', 1),
(12, '2021_04_26_094038_create_class_comments_table', 1),
(13, '2021_04_26_094407_create_class_resources_table', 1),
(14, '2021_04_26_095034_create_results_table', 1),
(15, '2021_04_26_095100_create_result_details_table', 1),
(16, '2021_04_26_095500_create_complain_boxes_table', 1),
(17, '2021_04_27_083541_create_enroll_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `course_id`, `subject_id`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 10, 4, 'tenetur', '2D27mJdqJ2jFwpP0TgPX', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 3, 2, 'nobis', 'VKJ9OyZbfooQt2RPXOJu', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 5, 4, 'eos', 'KLtNWwqlhoUlPDfXhHEi', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 2, 5, 'quos', '4Bqor9iFxsOV3h5tRyqf', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 8, 5, 'rerum', 'wPMgPg5aMN0EAEsjK8MX', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 2, 2, 'atque', '1Qqm82sUgMOqyYIMSrJN', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 5, 3, 'sapiente', 'R25pdl1jE9ic78YZ6UZA', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 1, 2, 'amet', '5jZ4QrZL4GOezYOIfSlE', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 2, 1, 'natus', 'nyrd4uCXETRaaTlhykrn', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 3, 6, 'accusantium', 'UkbmIXkwrIWKiQUMwIQU', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_letter`, `option`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'B', 'Assumenda non.', 3, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 5, 'D', 'Voluptates quis.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 10, 'A', 'Aliquam soluta ut.', 1, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 3, 'B', 'Sunt dignissimos non.', 2, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 9, 'B', 'Dolor qui.', 2, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 3, 'A', 'Aliquam deleniti.', 3, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 6, 'D', 'Sunt fugit animi.', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 8, 'D', 'Ipsam doloribus.', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 7, 'A', 'Tempore sed velit.', 3, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 7, 'B', 'Laudantium qui qui.', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(11, 6, 'A', 'Nulla non similique.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(12, 8, 'D', 'Voluptatum ad.', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(13, 9, 'C', 'Dolore et.', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(14, 5, 'D', 'Hic quia.', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(15, 7, 'B', 'Hic modi ea.', 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(16, 7, 'D', 'Cum consequatur.', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(17, 6, 'A', 'Aut facere qui.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(18, 5, 'A', 'Quis officiis non.', 2, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(19, 10, 'C', 'Libero voluptas.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(20, 4, 'A', 'Eius minima.', 3, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(21, 9, 'D', 'Reiciendis et.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(22, 2, 'A', 'Veniam ab sit.', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(23, 7, 'D', 'Quas qui quod.', 3, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(24, 1, 'A', 'Qui similique.', 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(25, 3, 'D', 'Quae quia qui.', 3, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(26, 7, 'C', 'Distinctio ipsam molestiae.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(27, 9, 'A', 'Ab nulla.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(28, 3, 'B', 'Eum quaerat est.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(29, 6, 'D', 'Aliquam velit.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(30, 7, 'A', 'Explicabo voluptatem.', 2, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(31, 2, 'B', 'Ipsa aut optio.', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(32, 2, 'C', 'Aperiam aut.', 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(33, 7, 'C', 'Sequi ut ut.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(34, 2, 'D', 'Rem ipsa libero.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(35, 9, 'C', 'Molestiae fugiat.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(36, 2, 'B', 'Modi aspernatur.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(37, 9, 'A', 'Officiis vitae.', 2, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(38, 3, 'D', 'Fugit maiores.', 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(39, 4, 'C', 'Quia consectetur.', 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(40, 5, 'D', 'Excepturi dolorem quia.', 4, 0, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_ans` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `exam_id`, `question`, `correct_ans`, `order`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 'Aperiam sed sapiente a labore officiis voluptatibus.', 4, 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 9, 'Assumenda doloribus laboriosam neque neque porro.', 4, 4, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 10, 'Deserunt fugiat laudantium rem quia debitis.', 1, 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 2, 'Quia qui corrupti libero.', 3, 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 9, 'Temporibus nihil aliquam minima expedita necessitatibus quibusdam.', 3, 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 5, 'Ea est ut velit similique ea cum.', 3, 2, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 1, 'Ipsam incidunt consectetur architecto alias.', 2, 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 1, 'Rem cupiditate enim minima consectetur rem qui.', 4, 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 6, 'Et aperiam doloribus dolorum.', 4, 3, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 10, 'Reprehenderit et consectetur debitis autem est quidem.', 1, 1, 1, 1, 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `total_question` int(11) DEFAULT NULL,
  `total_correct` int(11) DEFAULT NULL,
  `total_wrong` int(11) DEFAULT NULL,
  `not_answer` int(11) DEFAULT NULL,
  `total_gain_marks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result_details`
--

CREATE TABLE `result_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `user_ans` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `course_id`, `title`, `banner`, `date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 'cumque', 'https://via.placeholder.com/60x60.png/00aa66?text=quos', '1980-03-06', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 3, 'sit', 'https://via.placeholder.com/60x60.png/00ccaa?text=soluta', '1993-10-26', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 6, 'dolorum', 'https://via.placeholder.com/60x60.png/00ffff?text=ut', '1988-04-15', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 9, 'debitis', 'https://via.placeholder.com/60x60.png/0000aa?text=officiis', '1979-05-16', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 5, 'rerum', 'https://via.placeholder.com/60x60.png/00aaff?text=earum', '2009-02-25', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 3, 'sint', 'https://via.placeholder.com/60x60.png/007722?text=cupiditate', '1975-08-06', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 9, 'est', 'https://via.placeholder.com/60x60.png/006644?text=aut', '2011-03-12', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 1, 'vel', 'https://via.placeholder.com/60x60.png/0066ff?text=animi', '1971-01-15', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 9, 'quia', 'https://via.placeholder.com/60x60.png/003333?text=quia', '2020-07-12', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 2, 'id', 'https://via.placeholder.com/60x60.png/000099?text=dolor', '1977-02-03', 1, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `course_id`, `title`, `banner`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 'xJTRhFLQXm64BnR03M9G', 'https://via.placeholder.com/60x60.png/007799?text=iusto', '7z3Nu0NOZ6u7WTuC0yUV', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(2, 9, 'eHdVvuu0n0RD34xDrrnO', 'https://via.placeholder.com/60x60.png/00ffee?text=possimus', 'eQ6tgqY2AKXSmGSzhXVh', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(3, 3, 'MiEvyIXIpu4S2IRSp56j', 'https://via.placeholder.com/60x60.png/00ccbb?text=enim', 'Ny7m9kmNV6BmzJjXDyml', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(4, 5, 'mXVL2BgDZTLmoNRg9Iu3', 'https://via.placeholder.com/60x60.png/008855?text=enim', '6Ks0q27zyBdMy9kocwxz', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(5, 7, 'OYyMkVFQnS52YU1hnoHw', 'https://via.placeholder.com/60x60.png/001133?text=sit', 'KgZnViz9oR9L5W8sH9fe', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(6, 2, 'fo0j5Zxvzn2ys7vyZAYi', 'https://via.placeholder.com/60x60.png/009900?text=voluptas', 'X6Cfj1Ps1lKklk6BvM5K', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(7, 9, '0umNmVqkHRfpENnX8NUG', 'https://via.placeholder.com/60x60.png/00ccaa?text=recusandae', 'R7ZmndHDjKwrJNVOTlTL', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(8, 9, 'c2eXt3tJqP1YPUIMB7aI', 'https://via.placeholder.com/60x60.png/00aa11?text=officiis', 'o7FlaHID6O6nzIGJ01Dm', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(9, 10, '0wsL3LMzZoJ5bSyeSbRw', 'https://via.placeholder.com/60x60.png/008833?text=omnis', '5prVKe7S5CjpYfkj9tJs', '2021-04-28 01:53:46', '2021-04-28 01:53:46'),
(10, 2, 'F70zoj77G1WvauMDpNmC', 'https://via.placeholder.com/60x60.png/003366?text=et', 'lBHlAPJFAx1m7qqXmHHJ', '2021-04-28 01:53:46', '2021-04-28 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$GaUcY6/CiDK8zkeCTQ.iEeNfSY0ikflwHtwPEk8TcK7rkAcxZRC8.', NULL, '2021-04-28 01:53:46', '2021-04-28 01:53:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classses`
--
ALTER TABLE `classses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classses_course_id_foreign` (`course_id`),
  ADD KEY `classses_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `class_comments`
--
ALTER TABLE `class_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_comments_class_id_foreign` (`class_id`),
  ADD KEY `class_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `class_resources`
--
ALTER TABLE `class_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_resources_class_id_foreign` (`class_id`);

--
-- Indexes for table `complain_boxes`
--
ALTER TABLE `complain_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complain_boxes_user_id_foreign` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enroll_courses`
--
ALTER TABLE `enroll_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enroll_courses_user_id_foreign` (`user_id`),
  ADD KEY `enroll_courses_course_id_foreign` (`course_id`),
  ADD KEY `enroll_courses_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_course_id_foreign` (`course_id`),
  ADD KEY `exams_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_course_id_foreign` (`course_id`),
  ADD KEY `notices_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `result_details`
--
ALTER TABLE `result_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_details_user_id_foreign` (`user_id`),
  ADD KEY `result_details_question_id_foreign` (`question_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_course_id_foreign` (`course_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_course_id_foreign` (`course_id`);

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
-- AUTO_INCREMENT for table `classses`
--
ALTER TABLE `classses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class_comments`
--
ALTER TABLE `class_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class_resources`
--
ALTER TABLE `class_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complain_boxes`
--
ALTER TABLE `complain_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enroll_courses`
--
ALTER TABLE `enroll_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result_details`
--
ALTER TABLE `result_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classses`
--
ALTER TABLE `classses`
  ADD CONSTRAINT `classses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classses_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_comments`
--
ALTER TABLE `class_comments`
  ADD CONSTRAINT `class_comments_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_resources`
--
ALTER TABLE `class_resources`
  ADD CONSTRAINT `class_resources_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complain_boxes`
--
ALTER TABLE `complain_boxes`
  ADD CONSTRAINT `complain_boxes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enroll_courses`
--
ALTER TABLE `enroll_courses`
  ADD CONSTRAINT `enroll_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_courses_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enroll_courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `result_details`
--
ALTER TABLE `result_details`
  ADD CONSTRAINT `result_details_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `result_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
