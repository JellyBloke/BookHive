-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2026 at 05:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookhive_db`
--
CREATE DATABASE IF NOT EXISTS `bookhive_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookhive_db`;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pramoedya Ananta Toer', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(2, 'Andrea Hirata', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(3, 'Leila S. Chudori', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(4, 'Eka Kurniawan', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(5, 'Tere Liye', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(6, 'Dee Lestari', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(7, 'Ahmad Fuadi', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(8, 'Pidi Baiq', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(9, 'Ika Natassa', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(10, 'Ratih Kumala', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(11, 'Buya Hamka', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(12, 'Chairil Anwar', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(13, 'Seno Gumira Ajidarma', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(14, 'Habiburrahman El Shirazy', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(15, 'Marah Rusli', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(16, 'J.K. Rowling', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(17, 'J.R.R. Tolkien', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(18, 'George Orwell', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(19, 'Haruki Murakami', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(20, 'James Clear', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(21, 'Morgan Housel', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(22, 'Mark Manson', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(23, 'Robert T. Kiyosaki', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(24, 'Simon Sinek', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(25, 'Yuval Noah Harari', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(26, 'Agatha Christie', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(27, 'Stephen King', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(28, 'Dan Brown', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(29, 'Colleen Hoover', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(30, 'Jane Austen', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(31, 'F. Scott Fitzgerald', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(32, 'Harper Lee', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(33, 'Paulo Coelho', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(34, 'Arthur Conan Doyle', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(35, 'Frank Herbert', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(36, 'Malcolm Gladwell', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(37, 'Dale Carnegie', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(38, 'Napoleon Hill', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(39, 'Albert Camus', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(40, 'Franz Kafka', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(41, 'Fyodor Dostoevsky', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(42, 'Gabriel Garcia Marquez', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(43, 'C.S. Lewis', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(44, 'Rick Riordan', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(45, 'Suzanne Collins', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(46, 'Antoine de Saint-Exupéry', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(47, 'Khaled Hosseini', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(48, 'Gillian Flynn', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(49, 'Michelle Obama', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(50, 'Walter Isaacson', '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(51, 'Hector Garcia', '2026-01-18 07:12:16', '2026-01-18 07:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `author_id`, `title`, `stock`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Bumi Manusia', 15, '2026-01-18 12:18:21', '2026-01-18 09:14:00'),
(2, 6, 1, 'Anak Semua Bangsa', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(3, 6, 1, 'Jejak Langkah', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(4, 6, 1, 'Rumah Kaca', 8, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(5, 1, 2, 'Laskar Pelangi', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(6, 1, 2, 'Sang Pemimpi', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(7, 1, 2, 'Edensor', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(8, 6, 3, 'Laut Bercerita', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(9, 1, 3, 'Pulang', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(10, 1, 4, 'Cantik Itu Luka', 16, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(11, 1, 4, 'Lelaki Harimau', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(12, 3, 5, 'Bumi', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(13, 3, 5, 'Bulan', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(14, 3, 5, 'Matahari', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(15, 1, 5, 'Pulang', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(16, 1, 5, 'Hujan', 22, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(17, 8, 6, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(18, 8, 6, 'Supernova: Akar', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(19, 5, 6, 'Perahu Kertas', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(20, 1, 6, 'Filosofi Kopi', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(21, 1, 7, 'Negeri 5 Menara', 19, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(22, 1, 7, 'Ranah 3 Warna', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(23, 5, 8, 'Dilan: Dia adalah Dilanku Tahun 1990', 30, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(24, 5, 8, 'Dilan: Dia adalah Dilanku Tahun 1991', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(25, 5, 9, 'Antologi Rasa', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(26, 5, 9, 'Critical Eleven', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(27, 6, 10, 'Gadis Kretek', 28, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(28, 5, 11, 'Tenggelamnya Kapal Van der Wijck', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(29, 9, 11, 'Falsafah Hidup', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(30, 1, 12, 'Aku', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(31, 1, 13, 'Sepotong Senja untuk Pacarku', 11, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(32, 5, 14, 'Ayat-Ayat Cinta', 13, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(33, 5, 15, 'Sitti Nurbaya', 8, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(34, 3, 16, 'Harry Potter and the Sorcerer\'s Stone', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(35, 3, 16, 'Harry Potter and the Chamber of Secrets', 22, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(36, 3, 16, 'Harry Potter and the Prisoner of Azkaban', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(37, 3, 16, 'Harry Potter and the Goblet of Fire', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(38, 3, 17, 'The Fellowship of the Ring', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(39, 3, 17, 'The Two Towers', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(40, 3, 17, 'The Return of the King', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(41, 3, 17, 'The Hobbit', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(42, 1, 18, '1984', 30, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(43, 1, 18, 'Animal Farm', 28, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(44, 1, 19, 'Norwegian Wood', 16, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(45, 1, 19, 'Kafka on the Shore', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(46, 1, 19, 'IQ84', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(47, 4, 20, 'Atomic Habits', 50, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(48, 4, 21, 'The Psychology of Money', 45, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(49, 4, 22, 'The Subtle Art of Not Giving a F*ck', 40, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(50, 4, 23, 'Rich Dad Poor Dad', 35, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(51, 4, 24, 'Start with Why', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(52, 6, 25, 'Sapiens: A Brief History of Humankind', 30, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(53, 6, 25, 'Homo Deus: A Brief History of Tomorrow', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(54, 7, 26, 'And Then There Were None', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(55, 7, 26, 'Murder on the Orient Express', 16, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(56, 7, 26, 'The Murder of Roger Ackroyd', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(57, 7, 27, 'It', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(58, 7, 27, 'The Shining', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(59, 7, 28, 'The Da Vinci Code', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(60, 7, 28, 'Angels & Demons', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(61, 5, 29, 'It Ends with Us', 35, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(62, 5, 29, 'Verity', 30, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(63, 5, 30, 'Pride and Prejudice', 22, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(64, 5, 30, 'Sense and Sensibility', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(65, 1, 31, 'The Great Gatsby', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(66, 1, 32, 'To Kill a Mockingbird', 30, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(67, 1, 33, 'The Alchemist', 28, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(68, 7, 34, 'A Study in Scarlet', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(69, 7, 34, 'The Hound of the Baskervilles', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(70, 8, 35, 'Dune', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(71, 2, 36, 'Outliers: The Story of Success', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(72, 2, 36, 'The Tipping Point', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(73, 4, 37, 'How to Win Friends and Influence People', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(74, 4, 38, 'Think and Grow Rich', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(75, 9, 39, 'The Stranger', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(76, 9, 40, 'The Metamorphosis', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(77, 1, 41, 'Crime and Punishment', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(78, 1, 41, 'The Brothers Karamazov', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(79, 1, 42, 'One Hundred Years of Solitude', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(80, 1, 42, 'Love in the Time of Cholera', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(81, 3, 43, 'The Lion, the Witch and the Wardrobe', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(82, 3, 44, 'The Lightning Thief', 22, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(83, 3, 44, 'The Sea of Monsters', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(84, 3, 45, 'The Hunger Games', 25, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(85, 3, 45, 'Catching Fire', 24, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(86, 3, 45, 'Mockingjay', 22, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(87, 1, 46, 'The Little Prince', 30, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(88, 1, 47, 'The Kite Runner', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(89, 1, 47, 'A Thousand Splendid Suns', 18, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(90, 7, 48, 'Gone Girl', 16, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(91, 10, 49, 'Becoming', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(92, 10, 50, 'Steve Jobs', 15, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(93, 4, 20, 'Atomic Habits (Hardcover)', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(94, 6, 1, 'Arok Dedes', 8, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(95, 5, 5, 'Rindu', 17, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(96, 5, 6, 'Aroma Karsa', 14, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(97, 5, 29, 'Ugly Love', 20, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(98, 1, 33, 'Veronika Decides to Die', 12, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(99, 8, 6, 'Gelombang', 9, '2026-01-18 12:18:21', '2026-01-18 12:18:21'),
(100, 8, 35, 'Dune Messiah', 10, '2026-01-18 12:18:21', '2026-01-18 12:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

DROP TABLE IF EXISTS `borrowings`;
CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrower_name` varchar(255) NOT NULL,
  `borrowed_at` date NOT NULL,
  `returned_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`id`, `book_id`, `borrower_name`, `borrowed_at`, `returned_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jonathan Alvindo Fernandi', '2026-01-18', '2026-01-18', '2026-01-18 09:12:13', '2026-01-18 09:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fiction', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(2, 'Non-Fiction', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(3, 'Fantasy', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(4, 'Self-Improvement', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(5, 'Romance', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(6, 'History', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(7, 'Thriller & Mystery', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(8, 'Science Fiction', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(9, 'Philosophy', '2026-01-18 12:18:20', '2026-01-18 12:18:20'),
(10, 'Biography', '2026-01-18 12:18:20', '2026-01-18 12:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_14_011852_create_categories_table', 1),
(5, '2025_12_15_011903_create_authors_table', 1),
(6, '2025_12_16_011823_create_books_table', 1),
(7, '2025_12_16_011908_create_borrowings_table', 1),
(8, '2026_01_17_053259_add_role_to_users_table', 2),
(9, '2026_01_18_102804_create_wishlist_table', 3),
(10, '2026_01_18_110150_create_reviews_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('jonathan.fernandi@binus.ac.id', '$2y$12$OxT5oAMQ4x6DC87zLieZBuiS2Bbg0GgROMsUUo.hsdrQJ1/QyOwzi', '2026-01-18 08:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `book_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 5, 'So far, this is the best book that I have ever read!', '2026-01-18 09:16:03', '2026-01-18 09:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HxdbAXtPlYmtxjmbjWa8QomP2YKyi2cCtVQCX2FC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR2tZUnZqbTBZNFlsV3RmeDZ6a1BGZDNSOTdSVVJIMDZ6ZnpWTDB4dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoibG9jYWxlIjtzOjI6ImlkIjt9', 1768753359);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'borrower',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'BookHive Administrator', 'admin@bookhive.com', 'admin', NULL, '$2y$12$ORCFbikFm4X2K6OBbRhyzOt3EiltewEyEAK1mBG8R12y6Uj1e2ONW', NULL, '2026-01-16 22:43:00', '2026-01-16 22:43:00'),
(2, 'Muhammad Farras Fadhilah', 'muhammad.fadhilah002@binus.ac.id', 'borrower', NULL, '$2y$12$iXsJml.ZYV86NiyPLH13oeiZEibQZu.oCodqaQu011ZS9BYgg1bOe', NULL, '2026-01-16 22:54:15', '2026-01-16 22:54:15'),
(3, 'Juan Nathan Waraney Tombeng', 'juan.waraney@binus.ac.id', 'borrower', NULL, '$2y$12$rowQNVaRoFl8aV45xj1ZZebFwGoVhezUvUkcpRHAOsCRI267bfbxO', NULL, '2026-01-16 22:55:01', '2026-01-16 22:55:01'),
(4, 'Berlianta Abdussalam', 'berlianta.abdussalam@binus.ac.id', 'borrower', NULL, '$2y$12$dxOLgV8jjec29UnwTxICjuHH8rrepyRAVFmOBiqHqbw4d2fraPYXC', NULL, '2026-01-16 22:56:03', '2026-01-16 22:56:03'),
(5, 'Jonathan Alvindo Fernandi', 'jonathan.fernandi@binus.ac.id', 'borrower', NULL, '$2y$12$fz4wGJzLGf95dB78nGGcGOFXpF0NOH79653B34RxGMyD9DEU5kjZq', NULL, '2026-01-16 22:57:09', '2026-01-16 22:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2026-01-18 09:10:25', '2026-01-18 09:10:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowings_book_id_foreign` (`book_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_user_id_book_id_unique` (`user_id`,`book_id`),
  ADD KEY `reviews_book_id_foreign` (`book_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_user_id_book_id_unique` (`user_id`,`book_id`),
  ADD KEY `wishlists_book_id_foreign` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD CONSTRAINT `borrowings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
