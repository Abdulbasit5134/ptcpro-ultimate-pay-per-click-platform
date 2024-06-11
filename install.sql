-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 09:25 AM
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
-- Database: `ptc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `admin_access` longtext DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `password`, `image`, `phone`, `address`, `admin_access`, `last_login`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2y$10$.sO9kLAurqjCYnUatIQeDuwxOqPC7KWPKEIOy5rYf8sGMm0zkLdZm', '61b9bc2fa66971639562287.png', '+5641 455646', 'TX, USA', '[\"admin.dashboard\",\"admin.staff\",\"admin.storeStaff\",\"admin.updateStaff\",\"admin.identify-form\",\"admin.identify-form.store\",\"admin.identify-form.store\",\"admin.scheduleManage\",\"admin.planList\",\"admin.store.schedule\",\"admin.update.schedule\",\"admin.planCreate\",\"admin.planEdit\",\"admin.plans-active\",\"admin.plans-inactive\",\"admin.referral-commission\",\"admin.referral-commission.store\",\"admin.transaction\",\"admin.transaction.search\",\"admin.investments\",\"admin.investments.search\",\"admin.commissions\",\"admin.commissions.search\",\"admin.users\",\"admin.users.search\",\"admin.email-send\",\"admin.user.transaction\",\"admin.user.fundLog\",\"admin.user.withdrawal\",\"admin.user.commissionLog\",\"admin.user.referralMember\",\"admin.user.plan-purchaseLog\",\"admin.user.userKycHistory\",\"admin.kyc.users.pending\",\"admin.kyc.users\",\"admin.user-edit\",\"admin.user-multiple-active\",\"admin.user-multiple-inactive\",\"admin.send-email\",\"admin.user.userKycHistory\",\"admin.user-balance-update\",\"admin.payment.methods\",\"admin.deposit.manual.index\",\"admin.deposit.manual.create\",\"admin.edit.payment.methods\",\"admin.deposit.manual.edit\",\"admin.payment.pending\",\"admin.payment.log\",\"admin.payment.search\",\"admin.payment.action\",\"admin.payout-method\",\"admin.payout-log\",\"admin.payout-request\",\"admin.payout-log.search\",\"admin.payout-method.create\",\"admin.payout-method.edit\",\"admin.payout-action\",\"admin.ticket\",\"admin.ticket.view\",\"admin.ticket.reply\",\"admin.ticket.delete\",\"admin.subscriber.index\",\"admin.subscriber.sendEmail\",\"admin.subscriber.remove\",\"admin.basic-controls\",\"admin.email-controls\",\"admin.email-template.show\",\"admin.sms.config\",\"admin.sms-template\",\"admin.notify-config\",\"admin.notify-template.show\",\"admin.notify-template.edit\",\"admin.basic-controls.update\",\"admin.email-controls.update\",\"admin.email-template.edit\",\"admin.sms-template.edit\",\"admin.notify-config.update\",\"admin.notify-template.update\",\"admin.language.index\",\"admin.language.create\",\"admin.language.edit\",\"admin.language.keywordEdit\",\"admin.language.delete\",\"admin.manage.theme\",\"admin.logo-seo\",\"admin.breadcrumb\",\"admin.template.show\",\"admin.content.index\",\"admin.content.create\",\"admin.logoUpdate\",\"admin.seoUpdate\",\"admin.breadcrumbUpdate\",\"admin.content.show\",\"admin.content.delete\"]', '2023-04-17 07:08:30', 1, 'Q39FVNQ7wxKc321gp78KLsXOC1rRsaUsWQsMV0bsiev3BUKIWAEooczizDJJ', '2021-12-17 10:00:01', '2023-04-17 01:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `image`, `created_at`, `updated_at`) VALUES
(2, 5, '63c401c9922db1673789897.jpg', '2023-01-15 07:36:25', '2023-01-15 07:38:18'),
(3, 1, '63c4023572e421673790005.jpg', '2023-01-15 07:40:05', '2023-01-15 07:40:05'),
(4, 5, '63c4027891ea21673790072.jpg', '2023-01-15 07:41:12', '2023-01-15 07:41:12'),
(5, 1, '63c4029fc9a971673790111.jpg', '2023-01-15 07:41:51', '2023-01-15 07:41:51'),
(6, 5, '63c402bf776eb1673790143.jpg', '2023-01-15 07:42:23', '2023-01-15 07:42:23'),
(7, 3, '63c402e16d3f81673790177.jpg', '2023-01-15 07:42:57', '2023-01-15 07:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-01-15 07:24:27', '2023-01-15 07:24:27'),
(3, '2023-01-15 07:24:59', '2023-01-15 07:24:59'),
(5, '2023-01-15 07:34:55', '2023-01-15 07:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_details`
--

CREATE TABLE `blog_category_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category_details`
--

INSERT INTO `blog_category_details` (`id`, `blog_category_id`, `language_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bitcoin', '2023-01-15 07:24:27', '2023-01-15 07:24:27'),
(3, 3, 1, 'Blockchain', '2023-01-15 07:24:59', '2023-01-15 07:24:59'),
(5, 1, 18, 'Bitcoin', '2023-01-15 07:30:50', '2023-01-15 07:30:50'),
(6, 3, 18, 'cadena de bloques', '2023-01-15 07:31:04', '2023-01-15 07:31:04'),
(8, 5, 1, 'Crypto Currency', '2023-01-15 07:34:55', '2023-01-15 07:35:08'),
(9, 5, 18, 'Moneda criptográfica', '2023-01-15 07:35:00', '2023-01-15 07:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_details`
--

CREATE TABLE `blog_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_details`
--

INSERT INTO `blog_details` (`id`, `blog_id`, `language_id`, `author`, `title`, `details`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Admin', 'Market Reaction to Exchange Listings of Cryptocurrencies', '\"<p>There are many variations of passages of Lorem Ipsum available, Lorem\\r\\n ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, \\r\\nipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit \\r\\nvel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet\\r\\n consectetur adipisicing elit. Quis, quia cum atque impedit doloribus \\r\\nofficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga \\r\\nipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga\\r\\n ipsam iste est, illo suscipit, dignissimos autem consequuntur \\r\\ndistinctio odio iure! Doloremque expedita delectus voluptatem vero quam \\r\\nab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum \\r\\naliquam repellendus illum molestias minima perspiciatis explicabo \\r\\ntenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit \\r\\nquo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque \\r\\naccusantium, sunt officia quod delectus, fuga doloremque omnis atque \\r\\nquam ullam praesentium odio deleniti culpa est.<\\/p><p>There are many \\r\\nvariations of passages of Lorem Ipsum available, Lorem ipsum dolor sit \\r\\namet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem \\r\\ndebitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure \\r\\nexpedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur \\r\\nadipisicing elit. Quis, quia cum atque impedit doloribus officia \\r\\nnesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam \\r\\nmaxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam\\r\\n iste est, illo suscipit, dignissimos autem consequuntur distinctio odio\\r\\n iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis \\r\\nquaerat facere sequi, dignissimos pariatur enim rerum aliquam \\r\\nrepellendus illum molestias minima perspiciatis explicabo tenetur \\r\\npossimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus\\r\\n accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, \\r\\nsunt officia quod delectus, fuga doloremque omnis atque quam ullam \\r\\npraesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-01-15 07:36:25', '2023-01-15 07:36:25'),
(3, 3, 1, 'Admin', 'How Do OP Return Transactions Impact Bitcoin?', '\"<p>There are many variations of passages of Lorem Ipsum available, Lorem\\r\\n ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, \\r\\nipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit \\r\\nvel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet\\r\\n consectetur adipisicing elit. Quis, quia cum atque impedit doloribus \\r\\nofficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga \\r\\nipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga\\r\\n ipsam iste est, illo suscipit, dignissimos autem consequuntur \\r\\ndistinctio odio iure! Doloremque expedita delectus voluptatem vero quam \\r\\nab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum \\r\\naliquam repellendus illum molestias minima perspiciatis explicabo \\r\\ntenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit \\r\\nquo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque \\r\\naccusantium, sunt officia quod delectus, fuga doloremque omnis atque \\r\\nquam ullam praesentium odio deleniti culpa est.<\\/p><p>There are many \\r\\nvariations of passages of Lorem Ipsum available, Lorem ipsum dolor sit \\r\\namet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem \\r\\ndebitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure \\r\\nexpedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur \\r\\nadipisicing elit. Quis, quia cum atque impedit doloribus officia \\r\\nnesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam \\r\\nmaxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam\\r\\n iste est, illo suscipit, dignissimos autem consequuntur distinctio odio\\r\\n iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis \\r\\nquaerat facere sequi, dignissimos pariatur enim rerum aliquam \\r\\nrepellendus illum molestias minima perspiciatis explicabo tenetur \\r\\npossimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus\\r\\n accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, \\r\\nsunt officia quod delectus, fuga doloremque omnis atque quam ullam \\r\\npraesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-01-15 07:40:05', '2023-01-15 07:40:05'),
(4, 4, 1, 'Admin', 'How do Stablecoin Issuances affect Cryptocurrency Markets?', '\"<p>There are many variations of passages of Lorem Ipsum available, Lorem\\r\\n ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, \\r\\nipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit \\r\\nvel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet\\r\\n consectetur adipisicing elit. Quis, quia cum atque impedit doloribus \\r\\nofficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga \\r\\nipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga\\r\\n ipsam iste est, illo suscipit, dignissimos autem consequuntur \\r\\ndistinctio odio iure! Doloremque expedita delectus voluptatem vero quam \\r\\nab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum \\r\\naliquam repellendus illum molestias minima perspiciatis explicabo \\r\\ntenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit \\r\\nquo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque \\r\\naccusantium, sunt officia quod delectus, fuga doloremque omnis atque \\r\\nquam ullam praesentium odio deleniti culpa est.<\\/p><p>There are many \\r\\nvariations of passages of Lorem Ipsum available, Lorem ipsum dolor sit \\r\\namet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem \\r\\ndebitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure \\r\\nexpedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur \\r\\nadipisicing elit. Quis, quia cum atque impedit doloribus officia \\r\\nnesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam \\r\\nmaxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam\\r\\n iste est, illo suscipit, dignissimos autem consequuntur distinctio odio\\r\\n iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis \\r\\nquaerat facere sequi, dignissimos pariatur enim rerum aliquam \\r\\nrepellendus illum molestias minima perspiciatis explicabo tenetur \\r\\npossimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus\\r\\n accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, \\r\\nsunt officia quod delectus, fuga doloremque omnis atque quam ullam \\r\\npraesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-01-15 07:41:12', '2023-01-15 07:41:12'),
(5, 5, 1, 'Admin', 'Different Types Of Blockchain And Why We Need Them', '\"<p>There are many variations of passages of Lorem Ipsum available, Lorem\\r\\n ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, \\r\\nipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit \\r\\nvel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet\\r\\n consectetur adipisicing elit. Quis, quia cum atque impedit doloribus \\r\\nofficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga \\r\\nipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga\\r\\n ipsam iste est, illo suscipit, dignissimos autem consequuntur \\r\\ndistinctio odio iure! Doloremque expedita delectus voluptatem vero quam \\r\\nab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum \\r\\naliquam repellendus illum molestias minima perspiciatis explicabo \\r\\ntenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit \\r\\nquo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque \\r\\naccusantium, sunt officia quod delectus, fuga doloremque omnis atque \\r\\nquam ullam praesentium odio deleniti culpa est.<\\/p><p>There are many \\r\\nvariations of passages of Lorem Ipsum available, Lorem ipsum dolor sit \\r\\namet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem \\r\\ndebitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure \\r\\nexpedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur \\r\\nadipisicing elit. Quis, quia cum atque impedit doloribus officia \\r\\nnesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam \\r\\nmaxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam\\r\\n iste est, illo suscipit, dignissimos autem consequuntur distinctio odio\\r\\n iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis \\r\\nquaerat facere sequi, dignissimos pariatur enim rerum aliquam \\r\\nrepellendus illum molestias minima perspiciatis explicabo tenetur \\r\\npossimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus\\r\\n accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, \\r\\nsunt officia quod delectus, fuga doloremque omnis atque quam ullam \\r\\npraesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-01-15 07:41:51', '2023-01-15 07:41:51'),
(6, 6, 1, 'Admin', 'What Is Ethereum? A Platform To Decentralize The World', '\"<p>There are many variations of passages of Lorem Ipsum available, Lorem\\r\\n ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, \\r\\nipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit \\r\\nvel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet\\r\\n consectetur adipisicing elit. Quis, quia cum atque impedit doloribus \\r\\nofficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga \\r\\nipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga\\r\\n ipsam iste est, illo suscipit, dignissimos autem consequuntur \\r\\ndistinctio odio iure! Doloremque expedita delectus voluptatem vero quam \\r\\nab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum \\r\\naliquam repellendus illum molestias minima perspiciatis explicabo \\r\\ntenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit \\r\\nquo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque \\r\\naccusantium, sunt officia quod delectus, fuga doloremque omnis atque \\r\\nquam ullam praesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-01-15 07:42:23', '2023-01-15 07:42:23'),
(7, 7, 1, 'Admin', 'Blockchain​.com closes crypto custody for Russians amid EU sanctions', '\"<p>There are many variations of passages of Lorem Ipsum available, Lorem\\r\\n ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, \\r\\nipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit \\r\\nvel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet\\r\\n consectetur adipisicing elit. Quis, quia cum atque impedit doloribus \\r\\nofficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga \\r\\nipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga\\r\\n ipsam iste est, illo suscipit, dignissimos autem consequuntur \\r\\ndistinctio odio iure! Doloremque expedita delectus voluptatem vero quam \\r\\nab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum \\r\\naliquam repellendus illum molestias minima perspiciatis explicabo \\r\\ntenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit \\r\\nquo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque \\r\\naccusantium, sunt officia quod delectus, fuga doloremque omnis atque \\r\\nquam ullam praesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-01-15 07:42:57', '2023-01-15 07:42:57'),
(8, 7, 18, 'Administrador', 'Blockchain.com cierra la criptocustodia para los rusos en medio de las sanciones de la UE', '\"<p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-02-18 00:53:44', '2023-02-18 00:53:44'),
(9, 6, 18, 'Administrador', '¿Qué es Ethereum? Una plataforma para descentralizar el mundo', '\"<p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<br \\/><\\/p>\"', '2023-02-18 00:54:21', '2023-02-18 00:54:21'),
(10, 5, 18, 'Administrador', 'Diferentes tipos de blockchain y por qué los necesitamos', '\"<p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p><p><br \\/><\\/p><p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p>\"', '2023-02-18 00:56:53', '2023-02-18 00:56:53'),
(11, 4, 18, 'Administrador', '¿Cómo afectan las emisiones de Stablecoin a los mercados de criptomonedas?', '\"<p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p><p><br \\/><\\/p><p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p>\"', '2023-02-18 00:57:41', '2023-02-18 00:57:41'),
(12, 3, 18, 'Administrador', '¿Cómo afectan las transacciones de devolución OP a Bitcoin?', '\"<p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p><p><br \\/><\\/p><p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p>\"', '2023-02-18 00:58:22', '2023-02-18 00:58:22'),
(13, 2, 18, 'Administrador', 'Reacción del mercado a los listados de intercambio de criptomonedas', '\"<p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p><p><br \\/><\\/p><p>Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et corrupti quas, ipsa a voluptatem debitis amet accusamus nesciunt ut impedit eos velit vel ea ex iure expedita odit illum incidunt. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis, quia cum atque impedit doloribus oficia nesciunt temporibus odit adipisci, dignissimos itaque ipsa fuga ipsam maxime quaerat amet? Earum deleniti voluptate maxime corporis fuga ipsam iste est, illo suscipit, dignissimos autem consequuntur distintio odio iure! Doloremque expedita delectus voluptatem vero quam ab reiciendis quaerat facere sequi, dignissimos pariatur enim rerum aliquam repellendus illum molestias minima perspiciatis explicabo tenetur possimus nam sapiente. Necessitatibus, sed voluptas fugiat sit quo minus accusamus qui expedita laboriosam. Fuga, voluptas. Cumque accusantium, sunt oficia quod delectus, fuga doloremque omnis atque quam ullam praesentium odio deleniti culpa est.<\\/p>\"', '2023-02-18 00:59:00', '2023-02-18 00:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `configures`
--

CREATE TABLE `configures` (
  `id` int(11) UNSIGNED NOT NULL,
  `site_title` varchar(20) DEFAULT NULL,
  `base_color` varchar(10) DEFAULT NULL,
  `secondary_color` varchar(20) DEFAULT NULL,
  `gradient_color` varchar(20) DEFAULT NULL,
  `time_zone` varchar(30) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `theme` varchar(60) DEFAULT NULL,
  `plan_purchase_commission` tinyint(1) NOT NULL DEFAULT 0,
  `deposit_commission` tinyint(1) NOT NULL DEFAULT 0,
  `ptc_view_commission` tinyint(1) NOT NULL DEFAULT 0,
  `user_ads_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 == off, 1 == on',
  `ads_setting` text DEFAULT NULL,
  `min_transfer` decimal(11,2) NOT NULL DEFAULT 0.00,
  `max_transfer` decimal(11,2) NOT NULL DEFAULT 0.00,
  `transfer_charge` float NOT NULL DEFAULT 0,
  `balance_transfer` tinyint(1) NOT NULL,
  `fraction_number` int(11) DEFAULT NULL,
  `paginate` int(11) DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `email_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_verification` tinyint(1) NOT NULL DEFAULT 0,
  `sms_notification` tinyint(1) NOT NULL DEFAULT 0,
  `sender_email` varchar(60) DEFAULT NULL,
  `sender_email_name` varchar(91) DEFAULT NULL,
  `email_description` longtext DEFAULT NULL,
  `email_configuration` text DEFAULT NULL,
  `push_notification` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error_log` tinyint(1) NOT NULL,
  `strong_password` tinyint(1) NOT NULL,
  `registration` tinyint(1) NOT NULL,
  `address_verification` tinyint(1) NOT NULL,
  `identity_verification` tinyint(1) NOT NULL,
  `maintenance` tinyint(1) NOT NULL,
  `is_active_cron_notification` tinyint(1) NOT NULL DEFAULT 0,
  `tawk_id` varchar(191) DEFAULT NULL,
  `tawk_status` tinyint(1) NOT NULL DEFAULT 0,
  `fb_messenger_status` tinyint(1) NOT NULL DEFAULT 0,
  `fb_app_id` varchar(191) DEFAULT NULL,
  `fb_page_id` varchar(191) DEFAULT NULL,
  `reCaptcha_status_login` tinyint(1) NOT NULL DEFAULT 0,
  `reCaptcha_status_registration` tinyint(1) NOT NULL DEFAULT 0,
  `MEASUREMENT_ID` varchar(255) DEFAULT NULL,
  `analytic_status` tinyint(1) NOT NULL,
  `google_status_login` tinyint(1) NOT NULL DEFAULT 0,
  `google_status_registration` tinyint(1) NOT NULL DEFAULT 0,
  `facebook_status_login` tinyint(1) NOT NULL DEFAULT 0,
  `facebook_status_registration` tinyint(1) NOT NULL DEFAULT 0,
  `github_status_login` tinyint(1) NOT NULL DEFAULT 0,
  `github_status_registration` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configures`
--

INSERT INTO `configures` (`id`, `site_title`, `base_color`, `secondary_color`, `gradient_color`, `time_zone`, `currency`, `currency_symbol`, `theme`, `plan_purchase_commission`, `deposit_commission`, `ptc_view_commission`, `user_ads_status`, `ads_setting`, `min_transfer`, `max_transfer`, `transfer_charge`, `balance_transfer`, `fraction_number`, `paginate`, `email_verification`, `email_notification`, `sms_verification`, `sms_notification`, `sender_email`, `sender_email_name`, `email_description`, `email_configuration`, `push_notification`, `created_at`, `updated_at`, `error_log`, `strong_password`, `registration`, `address_verification`, `identity_verification`, `maintenance`, `is_active_cron_notification`, `tawk_id`, `tawk_status`, `fb_messenger_status`, `fb_app_id`, `fb_page_id`, `reCaptcha_status_login`, `reCaptcha_status_registration`, `MEASUREMENT_ID`, `analytic_status`, `google_status_login`, `google_status_registration`, `facebook_status_login`, `facebook_status_registration`, `github_status_login`, `github_status_registration`) VALUES
(1, 'PTC', '#ff4b82', '#ff8347', '#ff9a61', 'UTC', 'USD', '$', 'linen', 0, 0, 0, 1, '{\"ad_price\":{\"image\":\"0.25\",\"script\":\"0.25\",\"url\":\"0.25\",\"youtube\":\"0.25\"},\"amount_for_user\":{\"image\":\"10\",\"script\":\"10\",\"url\":\"15\",\"youtube\":\"15\"}}', '10.00', '500.00', 0.05, 1, 0, 20, 0, 0, 0, 0, 'support@mail.com', 'Bug Finder', '<p>Hello [[name]],</p><p>\r\n[[message]]</p>', '{\"name\":\"smtp\",\"smtp_host\":\"sandbox.smtp.mailtrap.io\",\"smtp_port\":\"2525\",\"smtp_encryption\":\"tls\",\"smtp_username\":\"ef198ffc28e21c\",\"smtp_password\":\"YOUR_MAIL_PASSWORD\"}', 0, NULL, '2023-04-16 00:59:35', 1, 0, 1, 0, 0, 0, 1, '62d7e2fcb0d10b6f3e7d4766', 0, 0, '1826868866245966', '1826866614245966', 0, 0, 'G-TFQZ8YZ468', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'counter', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(8, 'counter', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(9, 'counter', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(10, 'counter', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(15, 'service', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(16, 'service', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(17, 'service', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(18, 'testimonial', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(23, 'faq', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(24, 'faq', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(25, 'faq', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(27, 'faq', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(33, 'pages', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(34, 'pages', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(37, 'how-it-work', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(38, 'how-it-work', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(39, 'how-it-work', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(40, 'how-it-work', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(56, 'social', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(58, 'social', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(59, 'social', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(60, 'social', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(61, 'blog', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(62, 'blog', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(63, 'blog', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(64, 'feature', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(65, 'feature', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(66, 'feature', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(67, 'why-chose-us', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(68, 'why-chose-us', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(69, 'why-chose-us', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(70, 'why-chose-us', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(71, 'why-chose-us', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(72, 'why-chose-us', '2021-12-17 09:59:33', '2021-12-17 09:59:33'),
(86, 'feature', '2023-01-15 00:15:51', '2023-01-15 00:15:51'),
(87, 'feature', '2023-01-15 00:16:15', '2023-01-15 00:16:15'),
(88, 'feature', '2023-01-15 00:16:30', '2023-01-15 00:16:30'),
(90, 'testimonial', '2023-01-15 00:52:03', '2023-01-15 00:52:03'),
(91, 'testimonial', '2023-01-15 00:52:31', '2023-01-15 00:52:31'),
(92, 'testimonial', '2023-01-15 00:53:26', '2023-01-15 00:53:26'),
(93, 'testimonial', '2023-01-15 00:54:27', '2023-01-15 00:54:27'),
(94, 'faq', '2023-01-15 03:38:17', '2023-01-15 03:38:17'),
(95, 'faq', '2023-01-15 03:44:25', '2023-01-15 03:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `content_details`
--

CREATE TABLE `content_details` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED DEFAULT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_details`
--

INSERT INTO `content_details` (`id`, `content_id`, `language_id`, `description`, `created_at`, `updated_at`) VALUES
(13, 7, 1, '{\"title\":\"ACTIVE CLIENTS\",\"number_of_data\":\"320\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(14, 8, 1, '{\"title\":\"PROJECTS DONE\",\"number_of_data\":\"850\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(15, 9, 1, '{\"title\":\"TEAM ADVISORS\",\"number_of_data\":\"28\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(16, 10, 1, '{\"title\":\"GLORIOUS YEARS\",\"number_of_data\":\"8\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(28, 15, 1, '{\"title\":\"Data Analytics\",\"short_description\":\"Favourite tolerably engrossed. Truth short why she their balls Excellence super powr sed eiusmodsed do eiusmod.\",\"button_name\":\"Read More\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(29, 16, 1, '{\"title\":\"Website Growth\",\"short_description\":\"Favourite tolerably engrossed. Truth short why she their balls Excellence super powr sed eiusmodsed do eiusmod.\",\"button_name\":\"Read More\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(30, 17, 1, '{\"title\":\"Smm Ranking\",\"short_description\":\"Favourite tolerably engrossed. Truth short why she their balls Excellence super powr sed eiusmodsed do eiusmod.\",\"button_name\":\"Read More\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(33, 18, 1, '{\"name\":\"Maria Jacklin\",\"designation\":\"Web Developer\",\"description\":\"I have been adding these to new website builds and it really makes them pop and the clients love it. I\'m really happy with this purchase and it keeps getting better!\"}', '2021-12-17 10:00:13', '2023-01-15 00:36:24'),
(43, 23, 1, '{\"title\":\"How Does the PTC MLM Plan Works?\",\"description\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!\"}', '2021-12-17 10:00:13', '2023-01-15 03:33:15'),
(44, 24, 1, '{\"title\":\"Benefits of Binary MLM Plan\",\"description\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!\"}', '2021-12-17 10:00:13', '2023-01-15 03:36:55'),
(45, 25, 1, '{\"title\":\"What passages of lorem can i contact you?\",\"description\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(47, 27, 1, '{\"title\":\"How to making a Payouts?\",\"description\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!\"}', '2021-12-17 10:00:13', '2023-01-15 03:39:23'),
(63, 33, 1, '{\"title\":\"Terms &amp; Conditions\",\"description\":\"<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<\\/p><p><br \\/><\\/p><p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(64, 34, 1, '{\"title\":\"Privacy Policy\",\"description\":\"<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<\\/p><p><br \\/><\\/p><p> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(71, 37, 1, '{\"title\":\"Register &amp; Log in\",\"short_description\":\"<p>Creating an account is the first step. then you need to log in<\\/p>\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(72, 38, 1, '{\"title\":\"Add Fund\",\"short_description\":\"<p>Next, pick a payment method and add funds to your account<\\/p>\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(73, 39, 1, '{\"title\":\"Select a service\",\"short_description\":\"<p>Select the services you want and get ready to receive more publicity<\\/p>\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(74, 40, 1, '{\"title\":\"Enjoy Super Results\",\"short_description\":\"<p>You can enjoy incredible results when your order is complete<\\/p>\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(95, 56, 1, '{\"name\":\"Facebook\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(99, 58, 1, '{\"name\":\"Twitter\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(101, 59, 1, '{\"name\":\"Linkedin\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(103, 60, 1, '{\"name\":\"Instagram\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(105, 61, 1, '{\"title\":\"Amet pulvinar varius one\",\"description\":\"<p><span>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore is dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliq Ut enim ad minim veniam quis nostrud\\u00a0<\\/span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <\\/span><\\/p><p><span><br \\/><\\/span><\\/p><p><span>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupt atem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia sit voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet sedit consectetur, adipisci velit, sed quia doloremque laudantium.<\\/span><\\/p>\"}', '2021-12-17 10:00:13', '2022-05-10 11:53:16'),
(107, 62, 1, '{\"title\":\"Amet pulvinar varius two\",\"description\":\"<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliqu ip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupt atem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia sit voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet sedit consectetur, adipisci velit, sed quia doloremque laudantium.<\\/span>\"}', '2021-12-17 10:00:13', '2022-05-10 09:37:29'),
(109, 63, 1, '{\"title\":\"Amet pulvinar varius three\",\"description\":\"Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret.Peived determine departure explained no forfeited he something an. Contrasted dissimilar getjoy petual you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence perpetual menorthward as difficult preserved daughters. Continued at up to zealously necessary breakfastshe end literature. Gay direction neglected but supported yet her.\\r\\n\\r\\nNew had happen unable uneasy. Drawings can explained my education. Vulgar as hearts by garret.me Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get detereoy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence meant stnorthward as difficult preserved daughters. Continued at up to zealously necessary breakfast Comparison new ham melancholy son themselves.\"}', '2021-12-17 10:00:13', '2022-05-10 09:29:13'),
(143, 64, 1, '{\"title\":\"Decentralized System\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2021-12-17 10:00:13', '2023-01-15 00:03:54'),
(144, 65, 1, '{\"title\":\"Banks Payment\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2021-12-17 10:00:13', '2023-01-15 00:15:11'),
(145, 66, 1, '{\"title\":\"High Reliability\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et. Ipsum dolor sit amet\"}', '2021-12-17 10:00:13', '2023-01-15 00:15:31'),
(146, 67, 1, '{\"title\":\"Expert Management\",\"information\":\"Replacing a maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create.\"}', '2021-12-17 10:00:13', '2022-05-07 23:28:20'),
(147, 68, 1, '{\"title\":\"Registered Company\",\"information\":\"Replacing a maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create.\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(148, 69, 1, '{\"title\":\"Secure Investment\",\"information\":\"Replacing a maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create.\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(149, 70, 1, '{\"title\":\"Verified Security\",\"information\":\"Replacing a maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create.\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(150, 71, 1, '{\"title\":\"Instant Withdrawal\",\"information\":\"Replacing a maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create.\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(151, 72, 1, '{\"title\":\"Registered Company\",\"information\":\"Replacing a maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create.\"}', '2021-12-17 10:00:13', '2021-12-17 10:00:13'),
(228, 33, 18, '{\"title\":\"T\\u00e9rminos y condiciones\",\"description\":\"<p>Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o.<\\/p><p><br \\/><\\/p><p>El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo).<\\/p>\"}', '2023-01-14 23:48:51', '2023-01-14 23:48:51'),
(229, 34, 18, '{\"title\":\"Pol\\u00edtica de privacidad\",\"description\":\"<p>Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o.<\\/p><p><br \\/><\\/p><p>El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, en lugar de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo).<\\/p>\"}', '2023-01-14 23:49:15', '2023-01-14 23:49:15'),
(230, 86, 1, '{\"title\":\"Earn Extra\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2023-01-15 00:15:51', '2023-01-15 00:15:51'),
(231, 87, 1, '{\"title\":\"Buy &amp; Sell\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2023-01-15 00:16:15', '2023-01-15 00:16:15'),
(232, 88, 1, '{\"title\":\"No Middleman\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et. Ipsum dolor sit amet\"}', '2023-01-15 00:16:30', '2023-01-15 00:16:30'),
(234, 90, 1, '{\"name\":\"Alex Hales\",\"designation\":\"Software Engineer\",\"description\":\"I have been adding these to new website builds and it really makes them pop and the clients love it. I\'m really happy with this purchase and it keeps getting better!\"}', '2023-01-15 00:52:03', '2023-01-15 00:52:03'),
(235, 91, 1, '{\"name\":\"Mitchel Hussy\",\"designation\":\"Crypto Miner\",\"description\":\"<p>I have been adding these to new website builds and it really makes them pop and the clients love it. I\'m really happy with this purchase and it keeps getting better!<br \\/><\\/p>\"}', '2023-01-15 00:52:31', '2023-01-15 00:52:31'),
(236, 92, 1, '{\"name\":\"Henry Nicholes\",\"designation\":\"Data Expert\",\"description\":\"<p>I have been adding these to new website builds and it really makes them pop and the clients love it. I\'m really happy with this purchase and it keeps getting better!<br \\/><\\/p>\"}', '2023-01-15 00:53:26', '2023-01-15 00:53:26'),
(237, 93, 1, '{\"name\":\"Aleana Fernandez\",\"designation\":\"Bitcoin Mining Expert\",\"description\":\"<p>I have been adding these to new website builds and it really makes them pop and the clients love it. I\'m really happy with this purchase and it keeps getting better!<br \\/><\\/p>\"}', '2023-01-15 00:54:27', '2023-01-15 00:54:27'),
(238, 94, 1, '{\"title\":\"I have not received my withdrawal\",\"description\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet voluptatum minima nam quia qui expedita enim aut temporibus, non in provident dolores nisi praesentium cupiditate, numquam, ratione exercitationem at doloribus.<br \\/><\\/p>\"}', '2023-01-15 03:38:17', '2023-01-15 03:38:17'),
(239, 95, 1, '{\"title\":\"How do I benefit from the PTC?\",\"description\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet voluptatum minima nam quia qui expedita enim aut temporibus, non in provident dolores nisi praesentium cupiditate, numquam, ratione exercitationem at doloribus.<br \\/><\\/p>\"}', '2023-01-15 03:44:25', '2023-01-15 03:44:25'),
(240, 23, 18, '{\"title\":\"\\u00bfC\\u00f3mo funciona el plan PTC MLM?\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!<br \\/><\\/p>\"}', '2023-01-15 03:58:14', '2023-02-18 01:16:15'),
(244, 64, 18, '{\"title\":\"Sistema Descentralizado\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2023-02-18 01:10:57', '2023-02-18 01:10:57'),
(245, 65, 18, '{\"title\":\"Pago de bancos\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2023-02-18 01:11:59', '2023-02-18 01:11:59'),
(246, 66, 18, '{\"title\":\"Alta fiabilidad\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et. Ipsum dolor sit amet\"}', '2023-02-18 01:12:16', '2023-02-18 01:12:16'),
(247, 86, 18, '{\"title\":\"gana extra\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2023-02-18 01:12:36', '2023-02-18 01:12:36'),
(248, 87, 18, '{\"title\":\"Compra venta\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et.L Ipsum dolor sit amet\"}', '2023-02-18 01:12:52', '2023-02-18 01:12:52'),
(249, 88, 18, '{\"title\":\"sin intermediarios\",\"information\":\"Lorem ipsum consectetur adipi-sicing elit, sed do eiusmod tempor incididunt ut labore et. Ipsum dolor sit amet\"}', '2023-02-18 01:13:14', '2023-02-18 01:13:14'),
(250, 18, 18, '{\"name\":\"Mar\\u00eda Jacklin\",\"designation\":\"Desarrolladora web\",\"description\":\"<p>Los he estado agregando a las nuevas construcciones de sitios web y realmente los hace destacar y a los clientes les encanta. \\u00a1Estoy muy contento con esta compra y sigue mejorando!<br \\/><\\/p>\"}', '2023-02-18 01:13:48', '2023-02-18 01:13:48'),
(251, 90, 18, '{\"name\":\"Alex Hales\",\"designation\":\"Ingeniero de software\",\"description\":\"<p>Los he estado agregando a las nuevas construcciones de sitios web y realmente los hace destacar y a los clientes les encanta. \\u00a1Estoy muy contento con esta compra y sigue mejorando!<br \\/><\\/p>\"}', '2023-02-18 01:14:18', '2023-02-18 01:14:18'),
(252, 91, 18, '{\"name\":\"michel desvergonzado\",\"designation\":\"Cripto minero\",\"description\":\"<p>Los he estado agregando a las nuevas construcciones de sitios web y realmente los hace destacar y a los clientes les encanta. \\u00a1Estoy muy contento con esta compra y sigue mejorando!<br \\/><\\/p>\"}', '2023-02-18 01:14:49', '2023-02-18 01:14:49'),
(253, 92, 18, '{\"name\":\"Enrique Nicol\\u00e1s\",\"designation\":\"Experta en datos\",\"description\":\"<p>Los he estado agregando a las nuevas construcciones de sitios web y realmente los hace destacar y a los clientes les encanta. \\u00a1Estoy muy contento con esta compra y sigue mejorando!<br \\/><\\/p>\"}', '2023-02-18 01:15:20', '2023-02-18 01:15:20'),
(254, 93, 18, '{\"name\":\"aleana fernandez\",\"designation\":\"Experta en miner\\u00eda de bitcoin\",\"description\":\"<p>Los he estado agregando a las nuevas construcciones de sitios web y realmente los hace destacar y a los clientes les encanta. \\u00a1Estoy muy contento con esta compra y sigue mejorando!<br \\/><\\/p>\"}', '2023-02-18 01:15:52', '2023-02-18 01:15:52'),
(255, 24, 18, '{\"title\":\"Beneficios del Plan MLM Binario\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!<br \\/><\\/p>\"}', '2023-02-18 01:16:47', '2023-02-18 01:16:47'),
(256, 25, 18, '{\"title\":\"\\u00bfEn qu\\u00e9 pasajes de lorem puedo contactarte?\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!<br \\/><\\/p>\"}', '2023-02-18 01:17:05', '2023-02-18 01:17:05'),
(257, 27, 18, '{\"title\":\"\\u00bfC\\u00f3mo hacer un Pago?\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!<br \\/><\\/p>\"}', '2023-02-18 01:17:25', '2023-02-18 01:17:25'),
(258, 94, 18, '{\"title\":\"no he recibido mi retiro\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!<br \\/><\\/p>\"}', '2023-02-18 01:17:46', '2023-02-18 01:17:46'),
(259, 95, 18, '{\"title\":\"\\u00bfC\\u00f3mo me beneficio del PTC?\",\"description\":\"<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Temporibus adipisci ullam quos voluptate officiis ab exercitationem? Molestiae deserunt incidunt, inventore cumque explicabo rerum accusantium dolor natus quas eveniet ad molestias!<br \\/><\\/p>\"}', '2023-02-18 01:18:06', '2023-02-18 01:18:06'),
(260, 56, 18, '{\"name\":\"Facebook\"}', '2023-02-18 01:18:25', '2023-02-18 01:18:25'),
(261, 58, 18, '{\"name\":\"Gorjeo\"}', '2023-02-18 01:18:38', '2023-02-18 01:18:38'),
(262, 59, 18, '{\"name\":\"LinkedIn\"}', '2023-02-18 01:18:49', '2023-02-18 01:18:49'),
(263, 60, 18, '{\"name\":\"Instagram\"}', '2023-02-18 01:19:07', '2023-02-18 01:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `content_media`
--

CREATE TABLE `content_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `content_id` int(11) UNSIGNED DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_media`
--

INSERT INTO `content_media` (`id`, `content_id`, `description`, `created_at`, `updated_at`) VALUES
(11, 15, '{\"image\":\"6017b7984e39a1612167064.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(12, 16, '{\"image\":\"6017b7b3451ce1612167091.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(13, 17, '{\"image\":\"6017b7c0aa29f1612167104.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(14, 18, '{\"image\":\"63c3a29b6d25a1673765531.jpg\"}', '2021-12-17 10:00:20', '2023-01-15 00:52:11'),
(20, 37, '{\"image\":\"627b5ce62b2241652251878.png\",\"icon\":\"far fa-address-book\"}', '2021-12-17 10:00:20', '2022-05-11 00:51:18'),
(25, 38, '{\"image\":\"627b5d2a4fe051652251946.png\",\"icon\":\"fas fa-hand-holding-usd\"}', '2021-12-17 10:00:20', '2022-05-11 00:52:26'),
(26, 39, '{\"image\":\"627b5d32ab8091652251954.png\",\"icon\":\"far fa-paper-plane\"}', '2021-12-17 10:00:20', '2022-05-11 00:52:34'),
(27, 40, '{\"image\":\"627b5ec1a5c5d1652252353.png\",\"icon\":\"fab fa-angellist\"}', '2021-12-17 10:00:20', '2022-05-11 00:59:13'),
(34, 56, '{\"link\":\"https:\\/\\/www.facebook.com\\/\",\"icon\":\"fab fa-facebook-f\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(36, 58, '{\"link\":\"https:\\/\\/twitter.com\\/\",\"icon\":\"fab fa-twitter\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(37, 59, '{\"link\":\"https:\\/\\/bd.linkedin.com\\/\",\"icon\":\"fab fa-linkedin-in\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(38, 60, '{\"link\":\"https:\\/\\/www.instagram.com\\/\",\"icon\":\"fab fa-instagram\"}', '2021-12-17 10:00:20', '2021-12-17 10:00:20'),
(39, 61, '{\"image\":\"62778d5884c451652002136.jpg\"}', '2021-12-17 10:00:20', '2022-05-08 03:28:56'),
(40, 62, '{\"image\":\"62778d6b47d661652002155.jpg\"}', '2021-12-17 10:00:20', '2022-05-08 03:29:15'),
(41, 63, '{\"image\":\"62778d7d29b3a1652002173.jpg\"}', '2021-12-17 10:00:20', '2022-05-08 03:29:33'),
(42, 64, '{\"image\":\"63c3974ae308b1673762634.gif\"}', '2021-12-17 10:00:20', '2023-01-15 00:03:55'),
(43, 65, '{\"image\":\"63c399efa5bdf1673763311.gif\"}', '2021-12-17 10:00:20', '2023-01-15 00:15:11'),
(44, 66, '{\"image\":\"63c39a037b5791673763331.gif\"}', '2021-12-17 10:00:20', '2023-01-15 00:15:31'),
(45, 67, '{\"image\":\"62778b2410ed91652001572.png\"}', '2021-12-17 10:00:20', '2022-05-08 03:19:32'),
(46, 68, '{\"image\":\"62778b32be6671652001586.png\"}', '2021-12-17 10:00:20', '2022-05-08 03:19:46'),
(47, 69, '{\"image\":\"62778b44d5d3b1652001604.png\"}', '2021-12-17 10:00:20', '2022-05-08 03:20:04'),
(48, 70, '{\"image\":\"62778b4d64d651652001613.png\"}', '2021-12-17 10:00:20', '2022-05-08 03:20:13'),
(49, 71, '{\"image\":\"62778b6116c9b1652001633.png\"}', '2021-12-17 10:00:20', '2022-05-08 03:20:33'),
(50, 72, '{\"image\":\"628e2e55809db1653485141.png\"}', '2021-12-17 10:00:20', '2022-05-25 07:25:41'),
(60, 86, '{\"image\":\"63c39a17c1e681673763351.gif\"}', '2023-01-15 00:15:51', '2023-01-15 00:15:51'),
(61, 87, '{\"image\":\"63c39a2f3daa41673763375.gif\"}', '2023-01-15 00:16:15', '2023-01-15 00:16:15'),
(62, 88, '{\"image\":\"63c39a3ede1791673763390.gif\"}', '2023-01-15 00:16:30', '2023-01-15 00:16:30'),
(64, 90, '{\"image\":\"63c3a293515101673765523.jpg\"}', '2023-01-15 00:52:03', '2023-01-15 00:52:03'),
(65, 91, '{\"image\":\"63c3a2afb95071673765551.jpg\"}', '2023-01-15 00:52:31', '2023-01-15 00:52:31'),
(66, 92, '{\"image\":\"63c3a2e65f2f61673765606.jpg\"}', '2023-01-15 00:53:26', '2023-01-15 00:53:26'),
(67, 93, '{\"image\":\"63c3a323839b61673765667.jpg\"}', '2023-01-15 00:54:27', '2023-01-15 00:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `template_key` varchar(120) DEFAULT NULL,
  `email_from` varchar(191) DEFAULT 'support@exampl.com',
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `template` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `short_keys` text DEFAULT NULL,
  `mail_status` tinyint(1) NOT NULL DEFAULT 0,
  `sms_status` tinyint(1) NOT NULL DEFAULT 0,
  `lang_code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `language_id`, `template_key`, `email_from`, `name`, `subject`, `template`, `sms_body`, `short_keys`, `mail_status`, `sms_status`, `lang_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'PROFILE_UPDATE', 'support@mail.com', 'Profile has been updated', 'Profile has been updated', 'Your first name [[firstname]]\r\n\r\nlast name [[lastname]]\r\n\r\nemail [[email]]\r\n\r\nphone number [[phone]]\r\n', 'Your first name [[firstname]]\r\n\r\nlast name [[lastname]]\r\n\r\nemail [[email]]\r\n\r\nphone number [[phone]]\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(2, 1, 'ADMIN_SUPPORT_REPLY', 'support@mail.com', 'Support Ticket Reply ', 'Support Ticket Reply', '<p>Ticket ID [[ticket_id]]\r\n</p><p><span><br /></span></p><p><span>Subject [[ticket_subject]]\r\n</span></p><p><span>-----Replied------</span></p><p><span>\r\n[[reply]]</span><br /></p>', 'Ticket ID [[ticket_id]]\r\n\r\n\r\n\r\nSubject [[ticket_subject]]\r\n\r\n-----Replied------\r\n\r\n[[reply]]', '{\"ticket_id\":\"Support Ticket ID\",\"ticket_subject\":\"Subject Of Support Ticket\",\"reply\":\"Reply from Staff\\/Admin\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(3, 1, 'PASSWORD_CHANGED', 'support@mail.com', 'PASSWORD CHANGED ', 'Your password changed ', 'Your password changed \r\n\r\nNew password [[password]]\r\n\r\n', 'Your password changed\r\n\r\nNew password [[password]]\r\n\r\n\r\nNews [[test]]', '{\"password\":\"password\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(4, 1, 'ADD_BALANCE', 'support@mail.com', 'Balance Add by Admin', 'Your Account has been credited', '<p>[[amount]] [[currency]] credited in your account.\r\n</p><p>\r\nYour Current Balance : [[main_balance]] [[currency]]\r\n</p><p>\r\nTransaction : #[[transaction]]</p>', '[[amount]] [[currency]] credited in your account. \r\n\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"main_balance\":\"Users Balance After this operation\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2023-01-23 05:14:57'),
(6, 1, 'DEDUCTED_BALANCE', 'support@mail.com', 'Balance deducted by Admin', 'Your Account has been debited', '<p>[[amount]] [[currency]] debited in your account.\r\n</p><p>\r\nYour Current Balance : [[main_balance]][[currency]]\r\n</p><p>\r\nTransaction : #[[transaction]]</p>', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"main_balance\":\"Users Balance After this operation\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2023-01-23 05:15:35'),
(9, 1, 'ADD_FUND_PAYMENT_COMPLETE', 'support@mail.com', 'Add Fund Payment Completed', 'Your Add Fund Has Been Completed', '<p>[[amount]] [[currency]] Payment Has Been Successful Via [[gateway_name]].</p><p>Charge: [[charge]] [[currency]]. </p><p>Tranaction: [[transaction]]. </p><p>Your Main Balance: [[remaining_balance]] [[currency]]\r\n\r\n</p>', '<p>[[amount]] [[currency]] Payment Has Been Successful Via [[gateway_name]].</p><p>Charge: [[charge]] [[currency]]. </p><p>Tranaction: [[transaction]]. </p><p>Your Main Balance: [[remaining_balance]] [[currency]]\r\n\r\n</p>', '{\"gateway_name\":\"gateway name\",\"amount\":\"amount\",\"charge\":\"charge\", \"currency\":\"currency\",\"transaction\":\"transaction\",\"remaining_balance\":\"remaining balance\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(11, 1, 'PASSWORD_RESET', 'support@mail.com', 'Reset Password Notification', 'Reset Password Notification', 'You are receiving this email because we received a password reset request for your account.[[message]]\r\n\r\n\r\nThis password reset link will expire in 60 minutes.\r\n\r\nIf you did not request a password reset, no further action is required.', 'You are receiving this email because we received a password reset request for your account. [[message]]', '{\"message\":\"message\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(12, 1, 'VERIFICATION_CODE', 'support@mail.com', 'Verification Code', 'Verify Your Email ', 'Your Email verification Code  [[code]]', 'Your SMS verification Code  [[code]]', '{\"code\":\"code\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(21, 1, 'TWO_STEP_ENABLED', 'support@mail.com', 'TWO STEP ENABLED', 'TWO STEP ENABLED', 'Your verification code is: [[code]]', 'Your verification code is: [[code]]', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\",\"code\":\"code\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(22, 1, 'TWO_STEP_DISABLED', 'support@mail.com', 'TWO STEP DISABLED', 'TWO STEP DISABLED', 'Google two factor verification is disabled', 'Google two factor verification is disabled', '{\"action\":\"Enabled Or Disable\",\"ip\":\"Device Ip\",\"browser\":\"browser and Operating System \",\"time\":\"Time\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(24, 1, 'PAYOUT_REQUEST', 'support@mail.com', 'Withdraw request has been sent', 'Withdraw request has been sent', '<p>[[amount]] [[currency]] withdraw requested by [[method_name]].</p><p>Charge<span> </span><span>:</span><span> [[charge]] [[currency]].</span></p><p>Transaction<span> </span><span>:</span><span> [[trx]]</span></p>', '[[amount]] [[currency]] withdraw requested by [[method_name]]\r\n\r\n\r\nCharge [[charge]] [[currency]]\r\n\r\nTransaction [[trx]]\r\n', '{\"method_name\":\"method name\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"trx\":\"transaction\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2023-01-23 23:59:29'),
(27, 1, 'PAYOUT_REJECTED', 'support@mail.com', 'Withdraw request has been rejected', 'Withdraw request has been rejected', '<p>[[amount]] [[currency]] withdraw has been rejected.</p><p>Payout Method<span> </span><span>:</span><span> [[method]]</span></p><p>Charge<span> </span><span>:</span><span> [[charge]] [[currency]]</span></p><p>Transaction<span> </span><span>:</span><span> [[transaction]]</span></p><p>Admin feedback<span> </span><span>:</span><span> [[feedback]]</span></p>', '[[amount]] [[currency]] withdraw has been rejeced\r\n\r\nPayout Method [[method]]\r\nCharge [[charge]] [[currency]]\r\nTransaction [[transaction]]\r\n\r\n\r\nAdmin feedback [[feedback]]\r\n\r\n', '{\"method\":\"Payout method\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"feedback\":\"Admin feedback\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2023-01-23 23:58:45'),
(28, 1, 'PAYOUT_APPROVE ', 'support@mail.com', 'Withdraw request has been approved', 'Withdraw request has been approved', '<p>[[amount]] [[currency]] withdraw has been approved.</p><p>Payout Method<span> </span><span>:</span><span> [[method]].</span></p><p>Charge<span> </span><span>:</span><span> [[charge]] [[currency]]</span></p><p>Transaction : [[transaction]]</p><p>Admin feedback<span> </span><span>:</span><span> [[feedback]]</span></p>', '[[amount]] [[currency]] withdraw has been approved\n\nPayout Method [[method]]\nCharge [[charge]] [[currency]]\nTransaction [[transaction]]\n\n\nAdmin feedback [[feedback]]\n\n', '{\"method\":\"Payout method\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"feedback\":\"Admin feedback\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2023-01-23 23:58:04'),
(40, 1, 'KYC_APPROVED', 'support@mail.com', 'KYC has been approved', 'KYC has been approved', '[[kyc_type]] has been approved\r\n\r\n', '[[kyc_type]] has been approved\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(41, 1, 'KYC_REJECTED', 'support@mail.com', 'KYC has been rejected', 'KYC has been rejected', '[[kyc_type]] has been rejected\r\n\r\n', '[[kyc_type]] has been rejected\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 1, 'en', '2021-12-17 10:00:26', '2022-09-25 02:48:42'),
(42, 18, 'ADD_BALANCE', 'support@mail.com', 'Balance Add by Admin', 'Your Account has been credited', '[[amount]] [[currency]] credited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '[[amount]] [[currency]] credited in your account. \r\n\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\",\"main_balance\":\"Users Balance After this operation\"}', 0, 1, 'ES', '2023-01-23 05:13:57', '2023-01-23 05:13:57'),
(43, 18, 'DEDUCTED_BALANCE', 'support@mail.com', 'Balance deducted by Admin', 'Your Account has been debited', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\",\"main_balance\":\"Users Balance After this operation\"}', 1, 1, 'ES', '2023-01-23 05:15:17', '2023-01-23 05:15:17'),
(44, 1, 'REFFERAL_BONUS_COMMISSION', 'support@mail.com', 'Referral Bonus Commission', 'Referral Bonus Commission', '<p>You have received [[amount]] [[currency]] Referral Bonus Commission from [[referral_from]].\r\n</p><p>\r\nTransaction : [[transaction]]</p><p>Level Commission : [[level]] </p><p>Your Main Balance : [[current_balance]] [[currency]] </p>', 'You have received [[amount]] [[currency]] Referral Bonus Commission from [[referral_from]].\r\n\r\nTransaction: [[transaction]]\r\n\r\nLevel Commission [[level]]\r\n\r\nYour Main Balance: [[current_balance]] [[currency]] ', '{\"amount\":\"amount\",\"currency\":\"currency\",\"referral_from\":\"referral received from\",\"level\":\"level\",\"transaction\":\"transaction\",\"current_balance\":\"current balance\"}', 1, 1, 'en', '2023-01-23 13:17:17', '2023-02-18 01:31:09'),
(45, 18, 'PAYOUT_APPROVE ', 'support@mail.com', 'Withdraw request has been approved', 'Withdraw request has been approved', '[[amount]] [[currency]] withdraw has been approved\r\n\r\nPayout Method [[method]]\r\nCharge [[charge]] [[currency]]\r\nTransaction [[transaction]]\r\n\r\n\r\nAdmin feedback [[feedback]]\r\n\r\n', '[[amount]] [[currency]] withdraw has been approved\n\nPayout Method [[method]]\nCharge [[charge]] [[currency]]\nTransaction [[transaction]]\n\n\nAdmin feedback [[feedback]]\n\n', '{\"method\":\"Payout method\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"feedback\":\"Admin feedback\"}', 1, 1, 'ES', '2023-01-23 23:57:18', '2023-01-23 23:57:18'),
(46, 18, 'PAYOUT_REJECTED', 'support@mail.com', 'Withdraw request has been rejected', 'Withdraw request has been rejected', '[[amount]] [[currency]] withdraw has been rejeced\n\nPayout Method [[method]]\nCharge [[charge]] [[currency]]\nTransaction [[transaction]]\n\n\nAdmin feedback [[feedback]]\n\n', '[[amount]] [[currency]] withdraw has been rejeced\r\n\r\nPayout Method [[method]]\r\nCharge [[charge]] [[currency]]\r\nTransaction [[transaction]]\r\n\r\n\r\nAdmin feedback [[feedback]]\r\n\r\n', '{\"method\":\"Payout method\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"feedback\":\"Admin feedback\"}', 1, 1, 'ES', '2023-01-23 23:58:10', '2023-01-23 23:58:10'),
(47, 18, 'PAYOUT_REQUEST', 'support@mail.com', 'Withdraw request has been sent', 'Withdraw request has been sent', '[[amount]] [[currency]] withdraw requested by [[method_name]]\r\n\r\n\r\nCharge [[charge]] [[currency]]\r\n\r\nTransaction [[trx]]\r\n', '[[amount]] [[currency]] withdraw requested by [[method_name]]\r\n\r\n\r\nCharge [[charge]] [[currency]]\r\n\r\nTransaction [[trx]]\r\n', '{\"method_name\":\"method name\",\"amount\":\"amount\",\"charge\":\"charge\",\"currency\":\"currency\",\"trx\":\"transaction\"}', 1, 1, 'ES', '2023-01-23 23:58:54', '2023-01-23 23:58:54'),
(48, 18, 'REFFERAL_BONUS_COMMISSION', 'support@mail.com', 'Referral Bonus Commission', 'Referral Bonus Commission', '<p>You have received [[amount]] [[currency]] Referral Bonus Commission from [[referral_from]].\r\n</p><p>\r\nTransaction: [[transaction]]</p><p>Level Commission: [[level]] </p><p>Your Main Balance: [[current_balance]] [[currency]] </p>', 'You have received [[amount]] [[currency]] Referral Bonus Commission from [[referral_from]].\r\n\r\nTransaction: [[transaction]]\r\n\r\nLevel Commission [[level]]\r\n\r\nYour Main Balance: [[current_balance]] [[currency]] ', '{\"amount\":\"amount\",\"currency\":\"currency\",\"referral_from\":\"referral received from\",\"level\":\"level\",\"transaction\":\"transaction\",\"current_balance\":\"current balance\"}', 1, 1, 'ES', '2023-01-23 23:59:37', '2023-02-18 01:31:09'),
(49, 1, 'PLAN_PURCHASED', 'support@mail.com', 'Plan Purchased', 'Plan Purchased Successfull', '<p>You have purchased [[plan_name]] plan by [[price]] [[currency]].</p><p><span>Transaction Number: [[transaction]]</span></p><p><span>Your current Fund Balance is:  [[currentFundBalance]] [[currency]]</span></p>', '<p>You have purchased [[plan_name]] plan by [[price]] [[currency]].</p><p><br /></p><p><span>Transaction Number: [[transaction]]</span></p><p><span><br /></span></p><p><span>Your current Fund Balance is:  [[currentFundBalance]] [[currency]]</span></p>', '{\"plan_name\":\"plan name\",\"price\":\"price\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"currentFundBalance\":\"current fund balance\"}', 1, 1, 'en', '2023-01-25 13:33:45', '2023-02-18 01:31:09'),
(50, 18, 'PLAN_PURCHASED', 'support@mail.com', 'Plan Purchased', 'Plan Purchased Successful', '<p>You have purchased [[plan_name]] plan by [[price]] [[currency]].</p><p><br /></p><p><span>Transaction Number: [[transaction]]</span></p><p><span><br /></span></p><p><span>Your current Fund Balance is:  [[currentFundBalance]] [[currency]]</span></p>', '<p>You have purchased [[plan_name]] plan by [[price]] [[currency]].</p><p><br /></p><p><span>Transaction Number: [[transaction]]</span></p><p><span><br /></span></p><p><span>Your current Fund Balance is:  [[currentFundBalance]] [[currency]]</span></p>', '{\"plan_name\":\"plan name\",\"price\":\"price\",\"currency\":\"currency\",\"transaction\":\"transaction\",\"currentFundBalance\":\"current fund balance\"}', 1, 1, 'ES', '2023-01-28 05:46:25', '2023-02-18 01:31:09'),
(51, 1, 'FUND_TRANSFER_FROM_USER', 'support@mail.com', 'Fund Transfer From User', 'Fund Transfer has been Successfull', '<p>You\'ve transferred [[amount]] [[currency]] to [[receiver_username]].</p><p>Transfer Amount: [[amount]] <span>[[currency]]</span></p><p>Charge: [[charge]]  <span>[[currency]]</span></p><p>Total Amount with Charge: [[amountWithCharge]] [[currency]]</p><p>Transaction Number: [[trx]]</p><p><span>Your Current Fund Balance is:  [[final_balance]] [[currency]]</span></p><p>Receiver Username: [[receiver_username]]</p><p>Receiver Email: [[receiver_email]]</p>', 'You\'ve transferred [[amount]] [[currency]] to [[receiver_username]]. Transfer Amount: [[amount]]. Charge: [[charge]]. Total Amount with charge: [[amountWithCharge]] [[currency]]. Transaction Number: [[trx]].<p><span>Your current Fund Balance is:  [[final_balance]] [[currency]]</span></p>. Receiver Username: [[receiver_username]]. Receiver Email: [[receiver_email]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"receiver_username\":\"receiver username\",\"charge\":\"charge\",\"amountWithCharge\":\"total amount with charge\",\"trx\":\"transaction number\",\"final_balance\":\"current fund balance\",\"receiver_username\":\"receiver username\",\"receiver_email\":\"receiver email\"}', 1, 1, 'en', '2023-02-11 13:47:20', '2023-02-18 01:31:09'),
(52, 1, 'FUND_TRANSFER_TO_RECEIVER', 'support@mail.com', 'Fund Transfer To Receiver', 'Fund Transfer Received Successfull', '<p>You\'ve received [[amount]] [[currency]] from [[sender_username]].</p><p>Transfer Amount: [[amount]] <span>[[currency]]</span><span>.</span></p><p>Transaction Number: [[trx]].</p><p><span>Your Current Fund Balance is:  [[final_balance]] [[currency]]</span></p><p><span>Sender Username: [[sender_username]].</span></p>', 'You\'ve received [[amount]] [[currency]] from [[sender_username]]. Transfer Amount: [[amount]]. Transaction Number: [[trx]].<p><span>Your current Fund Balance is:  [[final_balance]] [[currency]]</span></p>. Sender Username: [[sender_username]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"sender_username\":\"sender username\",\"trx\":\"transaction number\",\"final_balance\":\"current fund balance\",\"sender_username\":\"sender username\"}', 1, 1, 'en', '2023-02-11 14:00:04', '2023-02-18 01:31:09'),
(53, 18, 'FUND_TRANSFER_FROM_USER', 'support@mail.com', 'Fund Transfer From User', 'Fund Transfer has been Successfull', 'You\'ve transferred [[amount]] [[currency]] to [[receiver_username]]. Transfer Amount: [[amount]]. Charge: [[charge]]. Total Amount with charge: [[amountWithCharge]] [[currency]]. Transaction Number: [[trx]].<p><span>Your current Fund Balance is:  [[final_balance]] [[currency]]</span></p>. Receiver Username: [[receiver_username]]. Receiver Email: [[receiver_email]].', 'You\'ve transferred [[amount]] [[currency]] to [[receiver_username]]. Transfer Amount: [[amount]]. Charge: [[charge]]. Total Amount with charge: [[amountWithCharge]] [[currency]]. Transaction Number: [[trx]].<p><span>Your current Fund Balance is:  [[final_balance]] [[currency]]</span></p>. Receiver Username: [[receiver_username]]. Receiver Email: [[receiver_email]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"receiver_username\":\"receiver username\",\"charge\":\"charge\",\"amountWithCharge\":\"total amount with charge\",\"trx\":\"transaction number\",\"final_balance\":\"current fund balance\",\"receiver_email\":\"receiver email\"}', 1, 1, 'ES', '2023-02-11 08:17:24', '2023-02-18 01:31:09'),
(54, 18, 'FUND_TRANSFER_TO_RECEIVER', 'support@mail.com', 'Fund Transfer To Receiver', 'Fund Transfer Received Successfull', 'You\'ve received [[amount]] [[currency]] from [[sender_username]]. Transfer Amount: [[amount]]. Transaction Number: [[trx]].<p><span>Your current Fund Balance is:  [[final_balance]] [[currency]]</span></p>. Sender Username: [[sender_username]].', 'You\'ve received [[amount]] [[currency]] from [[sender_username]]. Transfer Amount: [[amount]]. Transaction Number: [[trx]].<p><span>Your current Fund Balance is:  [[final_balance]] [[currency]]</span></p>. Sender Username: [[sender_username]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"sender_username\":\"sender username\",\"trx\":\"transaction number\",\"final_balance\":\"current fund balance\"}', 1, 1, 'ES', '2023-02-11 08:18:42', '2023-02-18 01:31:09');

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
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `gateway_id` int(11) UNSIGNED DEFAULT NULL,
  `gateway_currency` varchar(191) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `final_amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `btc_amount` decimal(18,8) DEFAULT NULL,
  `btc_wallet` varchar(191) DEFAULT NULL,
  `transaction` varchar(25) DEFAULT NULL,
  `try` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=> Complete, 2=> Pending, 3 => Cancel',
  `detail` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `parameters` text DEFAULT NULL,
  `extra_parameters` text DEFAULT NULL,
  `convention_rate` decimal(18,8) NOT NULL DEFAULT 1.00000000,
  `currencies` text DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percentage_charge` decimal(8,4) NOT NULL DEFAULT 0.0000,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: inactive, 1: active',
  `note` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `sort_by` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `name`, `code`, `currency`, `symbol`, `parameters`, `extra_parameters`, `convention_rate`, `currencies`, `min_amount`, `max_amount`, `percentage_charge`, `fixed_charge`, `status`, `note`, `image`, `sort_by`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'paypal', 'USD', 'USD', '{\"cleint_id\":\"\",\"secret\":\"\"}', NULL, '0.01200000', '{\"0\":{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '1.0000', '0.50000000', 1, '', '5f637b5622d23.jpg', 27, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(2, 'Stripe ', 'stripe', 'USD', 'USD', '{\"secret_key\":\"\",\"publishable_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f645d432b9c0.jpg', 36, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(3, 'Skrill', 'skrill', 'USD', 'USD', '{\"pay_to_email\":\"\",\"secret_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637c7fcb9ef.jpg', 35, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(4, 'Perfect Money', 'perfectmoney', 'USD', 'USD', '{\"passphrase\":\"\",\"payee_account\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f64d522d8bea.jpg', 31, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(5, 'PayTM', 'paytm', 'INR', 'INR', '{\"MID\":\"\",\"merchant_key\":\"\",\"WEBSITE\":\"\",\"INDUSTRY_TYPE_ID\":\"\",\"CHANNEL_ID\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637cbfb4d4c.jpg', 29, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(6, 'Payeer', 'payeer', 'RUB', 'USD', '{\"merchant_id\":\"\",\"secret_key\":\"\"}', '{\"status\":\"ipn\"}', '1.00000000', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f64d52d09e13.jpg', 26, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(7, 'PayStack', 'paystack', 'NGN', 'NGN', '{\"public_key\":\"\",\"secret_key\":\"\"}', '{\"callback\":\"ipn\",\"webhook\":\"ipn\"}\r\n', '1.00000000', '{\"0\":{\"USD\":\"USD\",\"NGN\":\"NGN\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637d069177e.jpg', 28, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(8, 'VoguePay', 'voguepay', 'USD', 'USD', '{\"merchant_id\":\"\"}', NULL, '1.00000000', '{\"0\":{\"NGN\":\"NGN\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"ZAR\":\"ZAR\",\"JPY\":\"JPY\",\"INR\":\"INR\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PLN\":\"PLN\"}}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637d53da3e7.jpg', 34, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(9, 'Flutterwave', 'flutterwave', 'USD', 'USD', '{\"public_key\":\"\",\"secret_key\":\"\",\"encryption_key\":\"\"}', NULL, '0.01200000', '{\"0\":{\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637d6a0b22d.jpg', 17, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(10, 'RazorPay', 'razorpay', 'INR', 'INR', '{\"key_id\":\"\",\"key_secret\":\"\"}', NULL, '1.00000000', '{\"0\": {\"INR\": \"INR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637d80b68e0.jpg', 32, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(11, 'instamojo', 'instamojo', 'INR', 'INR', '{\"api_key\":\"\",\"auth_token\":\"\",\"salt\":\"\"}', NULL, '73.51000000', '{\"0\":{\"INR\":\"INR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637da3c44d2.jpg', 19, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(12, 'Mollie', 'mollie', 'USD', 'USD', '{\"api_key\":\"\"}', NULL, '0.01200000', '{\"0\":{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637db537958.jpg', 23, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(13, '2checkout', 'twocheckout', 'USD', 'USD', '{\"merchant_code\":\"\",\"secret_key\":\"\"}', '{\"approved_url\":\"ipn\"}', '1.00000000', '{\"0\":{\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"DZD\":\"DZD\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AZN\":\"AZN\",\"BSD\":\"BSD\",\"BDT\":\"BDT\",\"BBD\":\"BBD\",\"BZD\":\"BZD\",\"BMD\":\"BMD\",\"BOB\":\"BOB\",\"BWP\":\"BWP\",\"BRL\":\"BRL\",\"GBP\":\"GBP\",\"BND\":\"BND\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"XCD\":\"XCD\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"GTQ\":\"GTQ\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JMD\":\"JMD\",\"JPY\":\"JPY\",\"KZT\":\"KZT\",\"KES\":\"KES\",\"LAK\":\"LAK\",\"MMK\":\"MMK\",\"LBP\":\"LBP\",\"LRD\":\"LRD\",\"MOP\":\"MOP\",\"MYR\":\"MYR\",\"MVR\":\"MVR\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PGK\":\"PGK\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"WST\":\"WST\",\"SAR\":\"SAR\",\"SCR\":\"SCR\",\"SGD\":\"SGD\",\"SBD\":\"SBD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"SYP\":\"SYP\",\"THB\":\"THB\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TRY\":\"TRY\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"USD\":\"USD\",\"VUV\":\"VUV\",\"VND\":\"VND\",\"XOF\":\"XOF\",\"YER\":\"YER\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637e7eae68b.jpg', 37, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(14, 'Authorize.Net', 'authorizenet', 'USD', 'USD', '{\"login_id\":\"\",\"current_transaction_key\":\"\"}', NULL, '0.01200000', '{\"0\":{\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637de6d9fef.jpg', 2, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(15, 'SecurionPay', 'securionpay', 'USD', 'USD', '{\"public_key\":\"\",\"secret_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AFN\":\"AFN\", \"DZD\":\"DZD\", \"ARS\":\"ARS\", \"AUD\":\"AUD\", \"BHD\":\"BHD\", \"BDT\":\"BDT\", \"BYR\":\"BYR\", \"BAM\":\"BAM\", \"BWP\":\"BWP\", \"BRL\":\"BRL\", \"BND\":\"BND\", \"BGN\":\"BGN\", \"CAD\":\"CAD\", \"CLP\":\"CLP\", \"CNY\":\"CNY\", \"COP\":\"COP\", \"KMF\":\"KMF\", \"HRK\":\"HRK\", \"CZK\":\"CZK\", \"DKK\":\"DKK\", \"DJF\":\"DJF\", \"DOP\":\"DOP\", \"EGP\":\"EGP\", \"ETB\":\"ETB\", \"ERN\":\"ERN\", \"EUR\":\"EUR\", \"GEL\":\"GEL\", \"HKD\":\"HKD\", \"HUF\":\"HUF\", \"ISK\":\"ISK\", \"INR\":\"INR\", \"IDR\":\"IDR\", \"IRR\":\"IRR\", \"IQD\":\"IQD\", \"ILS\":\"ILS\", \"JMD\":\"JMD\", \"JPY\":\"JPY\", \"JOD\":\"JOD\", \"KZT\":\"KZT\", \"KES\":\"KES\", \"KWD\":\"KWD\", \"KGS\":\"KGS\", \"LVL\":\"LVL\", \"LBP\":\"LBP\", \"LTL\":\"LTL\", \"MOP\":\"MOP\", \"MKD\":\"MKD\", \"MGA\":\"MGA\", \"MWK\":\"MWK\", \"MYR\":\"MYR\", \"MUR\":\"MUR\", \"MXN\":\"MXN\", \"MDL\":\"MDL\", \"MAD\":\"MAD\", \"MZN\":\"MZN\", \"NAD\":\"NAD\", \"NPR\":\"NPR\", \"ANG\":\"ANG\", \"NZD\":\"NZD\", \"NOK\":\"NOK\", \"OMR\":\"OMR\", \"PKR\":\"PKR\", \"PEN\":\"PEN\", \"PHP\":\"PHP\", \"PLN\":\"PLN\", \"QAR\":\"QAR\", \"RON\":\"RON\", \"RUB\":\"RUB\", \"SAR\":\"SAR\", \"RSD\":\"RSD\", \"SGD\":\"SGD\", \"ZAR\":\"ZAR\", \"KRW\":\"KRW\", \"IKR\":\"IKR\", \"LKR\":\"LKR\", \"SEK\":\"SEK\", \"CHF\":\"CHF\", \"SYP\":\"SYP\", \"TWD\":\"TWD\", \"TZS\":\"TZS\", \"THB\":\"THB\", \"TND\":\"TND\", \"TRY\":\"TRY\", \"UAH\":\"UAH\", \"AED\":\"AED\", \"GBP\":\"GBP\", \"USD\":\"USD\", \"VEB\":\"VEB\", \"VEF\":\"VEF\", \"VND\":\"VND\", \"XOF\":\"XOF\", \"YER\":\"YER\", \"ZMK\":\"ZMK\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f637e002d11b.jpg', 33, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(16, 'PayUmoney', 'payumoney', 'INR', 'INR', '{\"merchant_key\":\"\",\"salt\":\"\"}', NULL, '0.87000000', '{\"0\":{\"INR\":\"INR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f6390dbaa6ff.jpg', 30, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(17, 'Mercado Pago', 'mercadopago', 'BRL', 'BRL', '{\"access_token\":\"\"}', NULL, '0.06300000', '{\"0\":{\"ARS\":\"ARS\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"DOP\":\"DOP\",\"EUR\":\"EUR\",\"GTQ\":\"GTQ\",\"HNL\":\"HNL\",\"MXN\":\"MXN\",\"NIO\":\"NIO\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PYG\":\"PYG\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"VEF\":\"VEF\",\"VES\":\"VES\"}}', '3715.12000000', '371500000.12000000', '0.0000', '0.50000000', 1, '', '5f645d1bc1f24.jpg', 21, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(18, 'Coingate', 'coingate', 'USD', 'USD', '{\"api_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\",\"EUR\":\"EUR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f659e5355859.jpg', 15, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(19, 'Coinbase Commerce', 'coinbasecommerce', 'USD', 'USD', '{\"api_key\":\"\",\"secret\":\"\"}', '{\"webhook\":\"ipn\"}', '1.00000000', '{\"0\":{\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5f6703145a5ca.jpg', 9, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(20, 'Monnify', 'monnify', 'NGN', 'NGN', '{\"api_key\":\"\",\"secret_key\":\"\",\"contract_code\":\"\"}', NULL, '4.52000000', '{\"0\":{\"NGN\":\"NGN\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5fbca5d05057f.jpg', 25, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(21, 'Block.io', 'blockio', 'BTC', 'BTC', '{\"api_key\":\"\",\"api_pin\":\"\"}', '{\"cron\":\"ipn\"}', '0.00004200', '{\"1\":{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}}', '10.10004200', '10000.00000000', '0.0000', '0.50000000', 1, '', '5fe038332ad52.jpg', 8, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(22, 'CoinPayments', 'coinpayments', 'BTC', 'BTC', '{\"merchant_id\":\"\",\"private_key\":\"\",\"public_key\":\"\"}', '{\"callback\":\"ipn\"}', '0.00000000', '{\"0\":{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"},\"1\":{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}}', '10.00000000', '99999.00000000', '1.0000', '0.50000000', 1, '', '5ffd7d962985e1610448278.jpg', 14, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(23, 'Blockchain', 'blockchain', 'BTC', 'BTC', '{\"api_key\":\"\",\"xpub_code\":\"\"}', NULL, '0.00000000', '{\"1\":{\"BTC\":\"BTC\"}}', '100.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '5fe439f477bb7.jpg', 10, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(25, 'cashmaal', 'cashmaal', 'PKR', 'PKR', '{\"web_id\":\"\",\"ipn_key\":\"\"}', '{\"ipn_url\":\"ipn\"}', '0.85000000', '{\"0\":{\"PKR\":\"PKR\",\"USD\":\"USD\"}}', '100.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', 'cashmaal.jpg', 12, '2020-09-10 09:05:02', '2023-04-16 05:04:57'),
(26, 'Midtrans', 'midtrans', 'IDR', 'IDR', '{\"client_key\":\"\",\"server_key\":\"\"}', '{\"payment_notification_url\":\"ipn\", \"finish redirect_url\":\"ipn\", \"unfinish redirect_url\":\"failed\",\"error redirect_url\":\"failed\"}', '14835.20000000', '{\"0\":{\"IDR\":\"IDR\"}}', '1.00000000', '10000.00000000', '0.0000', '0.05000000', 1, '', '63e346c234f5e1675839170.png', 1, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(27, 'peachpayments', 'peachpayments', 'USD', 'USD', '{\"Authorization_Bearer\":\"\",\"Entity_ID\":\"\",\"Recur_Channel\":\"\"}', NULL, '1.00000000', '{\"0\":{\"AED\":\"AED\",\"AFA\":\"AFA\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"AWG\":\"AWG\",\"AZM\":\"AZM\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYR\":\"BYR\",\"BZD\":\"BZD\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CYP\":\"CYP\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EEK\":\"EEK\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"EUR\":\"EUR\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GBP\":\"GBP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHC\":\"GHC\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HKD\":\"HKD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"INR\":\"INR\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LTL\":\"LTL\",\"LVL\":\"LVL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MTL\":\"MTL\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"MZM\":\"MZM\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NOK\":\"NOK\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PTS\":\"PTS\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDD\":\"SDD\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"SHP\":\"SHP\",\"SIT\":\"SIT\",\"SKK\":\"SKK\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SPL\":\"SPL\",\"SRD\":\"SRD\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMM\":\"TMM\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TRL\":\"TRL\",\"TRY\":\"TRY\",\"TTD\":\"TTD\",\"TVD\":\"TVD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZAR\":\"ZAR\",\"ZMK\":\"ZMK\",\"ZWD\":\"ZWD\"}}', '100.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '63e0b543ef3461675670851.png', 24, '2020-09-09 15:05:02', '2023-04-16 05:04:57'),
(28, 'Nowpayments', 'nowpayments', 'BTC', 'BTC', '{\"api_key\":\"\"}', '{\"cron\":\"ipn\"}', '1.00000000', '{\"1\":{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}}', '10.10000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '63e0b44aa1dac1675670602.jpg', 16, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(29, 'Khalti Payment', 'khalti', 'NPR', 'NPR', '{\"secret_key\":\"\",\"public_key\":\"\"}', NULL, '132.04000000', '{\"0\":{\"NPR\":\"NPR\"}}', '100.00000000', '10000.00000000', '0.0000', '0.00000000', 1, '', '63e0b4a473d5b1675670692.webp', 20, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(30, 'MAGUA PAY', 'swagger', 'EUR', 'EUR', '{\"MAGUA_PAY_ACCOUNT\":\"\",\"MerchantKey\":\"\",\"Secret\":\"\"}', NULL, '1.00000000', '{\"0\":{\"EUR\":\"EUR\"}}', '100.00000000', '10000.00000000', '0.0000', '0.00000000', 1, '', '64017cd2019331677819090.jpg', 18, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(31, 'Free kassa', 'freekassa', 'RUB', 'RUB', '{\"merchant_id\":\"\",\"merchant_key\":\"\",\"secret_word\":\"\",\"secret_word2\":\"\"}', '{\"ipn_url\":\"ipn\"}', '1.00000000', '{\"0\":{\"RUB\":\"RUB\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"UAH\":\"UAH\",\"KZT\":\"KZT\"}}', '10.00000000', '10000.00000000', '0.1000', '0.00000000', 1, '', '63c003f413d4d1673528308.jpg', 13, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(32, 'Konnect', 'konnect', 'USD', 'USD', '{\"api_key\":\"\",\"receiver_wallet_Id\":\"\"}', '{\"webhook\":\"ipn\"}', '1.00000000', '{\"0\":{\"TND\":\"TND\",\"EUR\":\"EUR\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.00000000', 1, '', '63e0b3deb4a7d1675670494.jpg', 11, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(33, 'Mypay Np', 'mypay', 'NPR', 'NPR', '{\"merchant_username\":\"\",\"merchant_api_password\":\"\",\"merchant_id\":\"\",\"api_key\":\"\"}', NULL, '1.00000000', '{\"0\":{\"NPR\":\"NPR\"}}', '1.00000000', '100000.00000000', '1.5000', '0.00000000', 1, '', '63e34b53a962a1675840339.png', 22, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(34, 'PayThrow', 'paythrow', 'USD', 'USD', '{\"client_id\":\"\",\"client_secret\":\"\"}', '{\"ipn_url\":\"ipn\"}', '1.00000000', '{\"0\":{\"PKR\":\"PKR\",\"USD\":\"USD\"}}', '1.00000000', '10000.00000000', '0.0000', '0.50000000', 1, '', '63e3471f5f6de1675839263.jpg', 3, '2020-09-09 15:05:02', '2023-04-16 05:04:57'),
(35, 'IME PAY', 'imepay', 'NPR', 'NPR', '{\"MerchantModule\":\"\",\"MerchantCode\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, '1.00000000', '{\"0\":{\"NPR\":\"NPR\"}}', '1.00000000', '100000.00000000', '1.5000', '0.00000000', 1, '', '63e348c93b8ce1675839689.png', 4, '2020-09-09 09:05:02', '2023-04-16 05:04:57'),
(36, 'Cashonex Hosted', 'cashonexHosted', 'USD', 'USD', '{\"idempotency_key\":\"\",\"salt\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\"}}', '1.00000000', '1000.00000000', '0.0000', '0.00000000', 1, NULL, '64017c5d76cff1677818973.jpg', 6, '2023-04-03 06:31:33', '2023-04-16 05:04:57'),
(37, 'cashonex', 'cashonex', 'USD', 'USD', '{\"idempotency_key\":\"\",\"salt\":\"\"}', NULL, '1.00000000', '{\"0\":{\"USD\":\"USD\"}}', '1.00000000', '1000.00000000', '0.0000', '0.00000000', 1, NULL, '64017c5d76cff1677818973.jpg', 7, '2023-04-03 06:34:54', '2023-04-16 05:04:57'),
(38, 'Binance', 'binance', 'USDT', 'USDT', '{\"mercent_api_key\":\"\",\"mercent_secret\":\"\"}', NULL, '1.00000000', '{\"1\":{\"ADA\":\"ADA\",\"ATOM\":\"ATOM\",\"AVA\":\"AVA\",\"BCH\":\"BCH\",\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"BUSD\":\"BUSD\",\"CTSI\":\"CTSI\",\"DASH\":\"DASH\",\"DOGE\":\"DOGE\",\"DOT\":\"DOT\",\"EGLD\":\"EGLD\",\"EOS\":\"EOS\",\"ETC\":\"ETC\",\"ETH\":\"ETH\",\"FIL\":\"FIL\",\"FRONT\":\"FRONT\",\"FTM\":\"FTM\",\"GRS\":\"GRS\",\"HBAR\":\"HBAR\",\"IOTX\":\"IOTX\",\"LINK\":\"LINK\",\"LTC\":\"LTC\",\"MANA\":\"MANA\",\"MATIC\":\"MATIC\",\"NEO\":\"NEO\",\"OM\":\"OM\",\"ONE\":\"ONE\",\"PAX\":\"PAX\",\"QTUM\":\"QTUM\",\"STRAX\":\"STRAX\",\"SXP\":\"SXP\",\"TRX\":\"TRX\",\"TUSD\":\"TUSD\",\"UNI\":\"UNI\",\"USDC\":\"USDC\",\"USDT\":\"USDT\",\"WRX\":\"WRX\",\"XLM\":\"XLM\",\"XMR\":\"XMR\",\"XRP\":\"XRP\",\"XTZ\":\"XTZ\",\"XVS\":\"XVS\",\"ZEC\":\"ZEC\",\"ZIL\":\"ZIL\"}}', '1.00000000', '1000.00000000', '0.0000', '0.00000000', 1, NULL, '63e3483776e411675839543.png', 5, '2023-04-03 07:36:14', '2023-04-16 05:04:57'),
(1000, 'Bank Transfer', 'bank-transfer', 'BDT', 'BDT', '{\"AccountNumber\":{\"field_name\":\"AccountNumber\",\"field_level\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"},\"BeneficiaryName\":{\"field_name\":\"BeneficiaryName\",\"field_level\":\"Beneficiary Name\",\"type\":\"text\",\"validation\":\"required\"},\"NID\":{\"field_name\":\"NID\",\"field_level\":\"NID\",\"type\":\"file\",\"validation\":\"nullable\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"validation\":\"nullable\"}}', NULL, '84.00000000', NULL, '10.00000000', '10000.00000000', '0.0000', '5.00000000', 1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '61d16f5313ee41641115475.jpg', 1, '2022-01-02 03:18:56', '2022-01-02 03:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `identify_forms`
--

CREATE TABLE `identify_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `services_form` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `identify_forms`
--

INSERT INTO `identify_forms` (`id`, `name`, `slug`, `services_form`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Driving License', 'driving-license', '{\"FrontPage\":{\"field_name\":\"FrontPage\",\"field_level\":\"Front Page\",\"type\":\"file\",\"field_length\":\"2500\",\"length_type\":\"max\",\"validation\":\"required\"},\"RearPage\":{\"field_name\":\"RearPage\",\"field_level\":\"Rear Page\",\"type\":\"file\",\"field_length\":\"2500\",\"length_type\":\"max\",\"validation\":\"required\"},\"PassportNumber\":{\"field_name\":\"PassportNumber\",\"field_level\":\"Passport Number\",\"type\":\"text\",\"field_length\":\"20\",\"length_type\":\"max\",\"validation\":\"required\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"field_length\":\"300\",\"length_type\":\"max\",\"validation\":\"required\"}}', 1, '2021-09-30 22:07:40', '2022-05-17 06:29:36'),
(2, 'Passport', 'passport', '{\"PassportNumber\":{\"field_name\":\"PassportNumber\",\"field_level\":\"Passport Number\",\"type\":\"text\",\"field_length\":\"25\",\"length_type\":\"max\",\"validation\":\"required\"},\"PassportImage\":{\"field_name\":\"PassportImage\",\"field_level\":\"Passport Image\",\"type\":\"file\",\"field_length\":\"1040\",\"length_type\":\"max\",\"validation\":\"required\"}}', 1, '2021-09-30 22:16:23', '2022-05-17 06:29:40'),
(4, 'National ID', 'national-id', '{\"FrontPage\":{\"field_name\":\"FrontPage\",\"field_level\":\"Front Page\",\"type\":\"file\",\"field_length\":\"500\",\"length_type\":\"max\",\"validation\":\"required\"},\"RearPage\":{\"field_name\":\"RearPage\",\"field_level\":\"Rear Page\",\"type\":\"file\",\"field_length\":\"500\",\"length_type\":\"max\",\"validation\":\"required\"},\"NidNumber\":{\"field_name\":\"NidNumber\",\"field_level\":\"Nid Number\",\"type\":\"text\",\"field_length\":\"10\",\"length_type\":\"digits\",\"validation\":\"required\"},\"Address\":{\"field_name\":\"Address\",\"field_level\":\"Address\",\"type\":\"textarea\",\"field_length\":\"300\",\"length_type\":\"max\",\"validation\":\"required\"}}', 1, '2021-10-01 07:58:40', '2022-05-17 06:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `kyc_type` varchar(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=> Approved, 2 => Reject',
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `rtl` tinyint(1) NOT NULL DEFAULT 0,
  `default_lang` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `is_active`, `rtl`, `default_lang`, `created_at`, `updated_at`) VALUES
(1, 'English', 'US', NULL, 1, 0, 1, '2021-12-17 10:00:55', '2023-04-14 04:38:21'),
(18, 'Spanish', 'ES', NULL, 1, 0, 0, '2021-12-17 10:00:55', '2023-04-14 04:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2020_09_29_074810_create_jobs_table', 1),
(32, '2020_11_12_075639_create_transactions_table', 6),
(36, '2020_10_14_113046_create_admins_table', 9),
(42, '2020_11_24_064711_create_email_templates_table', 11),
(48, '2014_10_12_000000_create_users_table', 13),
(51, '2020_09_16_103709_create_controls_table', 15),
(59, '2021_01_03_061604_create_tickets_table', 17),
(60, '2021_01_03_061834_create_ticket_messages_table', 18),
(61, '2021_01_03_065607_create_ticket_attachments_table', 18),
(62, '2021_01_07_095019_create_funds_table', 19),
(66, '2021_01_21_050226_create_languages_table', 21),
(69, '2020_12_17_075238_create_sms_controls_table', 23),
(70, '2021_01_26_051716_create_site_notifications_table', 24),
(72, '2021_01_26_075451_create_notify_templates_table', 25),
(73, '2021_01_28_074544_create_contents_table', 26),
(74, '2021_01_28_074705_create_content_details_table', 26),
(75, '2021_01_28_074829_create_content_media_table', 26),
(76, '2021_01_28_074847_create_templates_table', 26),
(77, '2021_01_28_074905_create_template_media_table', 26),
(83, '2021_02_03_100945_create_subscribers_table', 27),
(86, '2021_01_21_101641_add_language_to_email_templates_table', 28),
(87, '2021_02_14_064722_create_manage_plans_table', 28),
(88, '2021_02_14_072251_create_manage_times_table', 29),
(89, '2021_03_09_100340_create_investments_table', 30),
(90, '2021_03_13_132414_create_payout_methods_table', 31),
(91, '2021_03_13_133534_create_payout_logs_table', 32),
(93, '2021_03_18_091710_create_referral_bonuses_table', 33),
(94, '2021_10_25_060950_create_money_transfers_table', 34),
(96, '2021_03_18_091710_create_users_table', 35),
(97, '2023_01_15_131206_create_blog_categories_table', 36),
(98, '2023_01_15_131320_create_blog_category_details_table', 36),
(99, '2023_01_15_131330_create_blogs_table', 36),
(100, '2023_01_15_131337_create_blog_details_table', 36),
(101, '2023_01_17_113102_create_plans_table', 37),
(102, '2023_01_17_113121_create_plan_details_table', 37),
(103, '2023_02_01_044319_create_failed_jobs_table', 38),
(104, '2023_02_01_043725_create_razorpay_contacts_table', 39);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `trx` varchar(20) DEFAULT NULL,
  `send_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notify_templates`
--

CREATE TABLE `notify_templates` (
  `id` int(11) NOT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `template_key` varchar(191) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `short_keys` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `notify_for` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=> Admin, 0=> User',
  `lang_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notify_templates`
--

INSERT INTO `notify_templates` (`id`, `language_id`, `name`, `template_key`, `body`, `short_keys`, `status`, `notify_for`, `lang_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'SUPPORT TICKET CREATE', 'SUPPORT_TICKET_CREATE', '[[username]] create a ticket\r\nTicket : [[ticket_id]]\r\n\r\n', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(2, 1, 'SUPPORT TICKET REPLIED', 'SUPPORT_TICKET_REPLIED', '[[username]] replied  ticket\r\nTicket : [[ticket_id]]\r\n\r\n', '{\"ticket_id\":\"Support Ticket ID\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(3, 1, 'ADMIN REPLIED SUPPORT TICKET ', 'ADMIN_REPLIED_TICKET', 'Admin replied  \r\nTicket : [[ticket_id]]', '{\"ticket_id\":\"Support Ticket ID\"}', 1, 0, 'en', '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(4, 1, 'ADMIN DEPOSIT NOTIFICATION', 'ADD_FUND_PAYMENT_COMPLETE_TO_ADMIN', '[[username]] deposited [[amount]] [[currency]] via [[gateway]]\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(5, 1, 'ADD BALANCE', 'ADD_BALANCE', '[[amount]] [[currency]] credited in your account. \r\n\r\n\r\nYour Current Balance [[main_balance]] [[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"main_balance\":\"Users Balance After this operation\"}', 1, 0, 'en', '2021-12-17 10:01:53', '2023-01-23 05:17:25'),
(6, 1, 'DEDUCTED BALANCE', 'DEDUCTED_BALANCE', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]] [[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"main_balance\":\"Users Balance After this operation\"}', 1, 0, 'en', '2021-12-17 10:01:53', '2023-01-23 05:17:50'),
(7, 1, 'NEW USER ADDED', 'ADDED_USER', '[[username]] has been joined\r\n\r\n', '{\"username\":\"username\"}', 1, 1, 'en', '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(8, 1, 'WITHDRAW REQUEST NOTIFICATION TO ADMIN', 'PAYOUT_REQUEST', '[[username]] withdraw requested by [[amount]] [[currency]] \r\n\r\n', '{\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(9, 1, 'PAYOUT REJECTED ', 'PAYOUT_REJECTED', '[[amount]] [[currency]]  withdraw requested has been rejected\r\n\r\n', '{\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(10, 1, 'PAYOUT APPROVE ', 'PAYOUT_APPROVE ', '[[amount]] [[currency]]  withdraw requested has been approved\r\n\r\n', '{\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(11, 1, 'ADMIN DEPOSIT REQUEST NOTIFICATION', 'PAYMENT_REQUEST', '[[username]] deposit request [[amount]] [[currency]] via [[gateway]]\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\",\"username\":\"username\"}', 1, 1, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(12, 1, 'PAYMENT REJECTED', 'PAYMENT_REJECTED', '[[amount]] [[currency]] payment has been requested \r\n\r\n', '{\"amount\":\"amount\",\"currency\":\"currency\",\"feedback\":\"Admin feedback\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(13, 1, 'KYC APPROVED', 'KYC_APPROVED', '[[kyc_type]] has been approved\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(14, 1, 'KYC REJECTED', 'KYC_REJECTED', '[[kyc_type]] has been rejected\r\n\r\n', '{\"kyc_type\":\"kyc type\"}', 1, 0, NULL, '2021-12-17 10:01:53', '2021-12-17 10:01:53'),
(15, 18, 'ADD BALANCE', 'ADD_BALANCE', '[[amount]] [[currency]] credited in your account. \r\n\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\",\"main_balance\":\"Users Balance After this operation\"}', 1, 0, 'ES', '2023-01-23 05:17:08', '2023-01-23 05:17:08'),
(16, 18, 'DEDUCTED BALANCE', 'DEDUCTED_BALANCE', '[[amount]] [[currency]] debited in your account.\r\n\r\nYour Current Balance [[main_balance]][[currency]]\r\n\r\nTransaction: #[[transaction]]', '{\"transaction\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\",\"main_balance\":\"Users Balance After this operation\"}', 1, 0, 'ES', '2023-01-23 05:17:40', '2023-01-23 05:17:40'),
(17, 1, 'USER DEPOSIT NOTIFICATION', 'ADD_FUND_PAYMENT_COMPLETE_TO_USER', '<p>[[amount]] [[currency]] Deposit Has Been successful via [[gateway]].</p>\r\n', '{\"gateway\":\"gateway\",\"amount\":\"amount\",\"currency\":\"currency\"}', 1, 0, NULL, '2023-01-23 12:37:42', '2023-01-23 12:37:42'),
(18, 1, 'Referral Bonus Commission', 'REFFERAL_BONUS_COMMISSION', 'You have received [[amount]] [[currency]] Referral Bonus Commission from [[referral_from]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"referral_from\":\"referral received from\",\"level\":\"level\"}', 1, 0, 'en', '2023-01-23 13:11:58', '2023-01-23 13:11:58'),
(19, 1, 'PLAN PURCHASED TO ADMIN', 'PLAN_PURCHASED_TO_ADMIN', '[[username]] has purchased [[plan_name]] plan by [[price]] [[currency]]', '{\"username\":\"username\",\"plan_name\":\"plan name\",\"currency\":\"currency\",\"price\":\"price\"}', 1, 1, NULL, '2023-01-25 13:38:34', '2023-01-25 13:38:34'),
(20, 1, 'PLAN PURCHASED TO USER', 'PLAN_PURCHASED_TO_USER', 'You have purchased [[plan_name]] plan by [[price]] [[currency]]', '{\"plan_name\":\"plan name\",\"currency\":\"currency\",\"price\":\"price\"}', 1, 0, NULL, '2023-01-25 13:41:29', '2023-01-25 13:41:29'),
(21, 1, 'FUND TRANSFER FROM USER', 'FUND_TRANSFER_FROM_USER', 'You\'ve transferred [[amount]] [[currency]] to [[receiver_username]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"receiver_username\":\"receiver username\"}', 1, 0, 'en', '2023-02-11 13:34:03', '2023-02-11 13:34:03'),
(22, 1, 'FUND TRANSFER TO RECEIVER', 'FUND_TRANSFER_TO_RECEIVER', 'You\'ve received [[amount]] [[currency]] from [[sender_username]].', '{\"amount\":\"amount\",\"currency\":\"currency\",\"sender_username\":\"sender username\"}', 1, 0, 'en', '2023-02-11 13:39:38', '2023-02-11 13:39:38'),
(24, 18, 'PAYMENT REJECTED', 'PAYMENT_REJECTED', '[[amount]] [[currency]] payment has been requested \r\n\r\n', '{\"amount\":\"amount\",\"currency\":\"currency\",\"feedback\":\"Admin feedback\"}', 1, 0, 'ES', '2023-03-12 01:25:56', '2023-03-12 01:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_logs`
--

CREATE TABLE `payout_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `method_id` int(11) UNSIGNED DEFAULT NULL,
  `response_id` varchar(191) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `net_amount` decimal(11,2) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `meta_field` text DEFAULT NULL,
  `currency_code` varchar(20) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `trx_id` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1=> pending,\r\n2=> success,\r\n3=> cancel,\r\n4=>fail',
  `last_error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_methods`
--

CREATE TABLE `payout_methods` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `banks` text DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  `extra_parameters` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `minimum_amount` decimal(11,2) DEFAULT NULL,
  `maximum_amount` decimal(11,2) DEFAULT NULL,
  `fixed_charge` decimal(11,2) DEFAULT NULL,
  `percent_charge` decimal(11,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `input_form` text NOT NULL,
  `currency_lists` text DEFAULT NULL,
  `supported_currency` text DEFAULT NULL,
  `convert_rate` text DEFAULT NULL,
  `is_automatic` tinyint(4) NOT NULL DEFAULT 0,
  `is_sandbox` tinyint(4) NOT NULL DEFAULT 0,
  `environment` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>test, 1=>live',
  `duration` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_methods`
--

INSERT INTO `payout_methods` (`id`, `name`, `code`, `description`, `bank_name`, `banks`, `parameters`, `extra_parameters`, `image`, `minimum_amount`, `maximum_amount`, `fixed_charge`, `percent_charge`, `status`, `input_form`, `currency_lists`, `supported_currency`, `convert_rate`, `is_automatic`, `is_sandbox`, `environment`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Wire Transfer', NULL, NULL, NULL, NULL, NULL, NULL, '606418e821ad01617172712.jpg', '10.00', '200000.00', '10.00', '0.00', 1, '{\"email\":{\"name\":\"email\",\"label\":\"Email\",\"type\":\"text\",\"validation\":\"required\"},\"nid_number\":{\"name\":\"nid_number\",\"label\":\"NID Number\",\"type\":\"text\",\"validation\":\"required\"},\"passport_number\":{\"name\":\"passport_number\",\"label\":\"Passport Number\",\"type\":\"text\",\"validation\":\"nullable\"}}', NULL, NULL, NULL, 0, 0, 1, '1-2 Hours', '2021-12-17 10:02:14', '2021-12-17 10:02:14'),
(2, 'Bank Transfer', NULL, NULL, NULL, NULL, '[]', NULL, '6064181b137c91617172507.jpg', '10.00', '200000.00', '10.00', '1.00', 1, '{\"Name\":{\"name\":\"Name\",\"label\":\"Name\",\"type\":\"text\",\"validation\":\"required\"},\"AccountNumber\":{\"name\":\"AccountNumber\",\"label\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"}}', NULL, '[]', '[]', 0, 0, 0, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-03-06 08:17:38'),
(3, 'Flutterwave', 'flutterwave', 'Payment will receive within 1 days', '{\"0\":{\"NGN BANK\":\"NGN BANK\",\"NGN DOM\":\"NGN DOM\",\"GHS BANK\":\"GHS BANK\",\"KES BANK\":\"KES BANK\",\"ZAR BANK\":\"ZAR BANK\",\"INTL EUR & GBP\":\"INTL EUR & GBP\",\"INTL USD\":\"INTL USD\",\"INTL OTHERS\":\"INTL OTHERS\",\"FRANCOPGONE\":\"FRANCOPGONE\",\"XAF/XOF MOMO\":\"XAF/XOF MOMO\",\"mPesa\":\"mPesa\",\"Rwanda Momo\":\"Rwanda Momo\",\"Uganda Momo\":\"Uganda Momo\",\"Zambia Momo\":\"Zambia Momo\",\"Barter\":\"Barter\",\"FLW\":\"FLW\"}}', '[\"NGN BANK\",\"NGN DOM\",\"GHS BANK\",\"INTL USD\"]', '{\"Public_Key\":\"\",\"Secret_Key\":\"\",\"Encryption_Key\":\"\"}', NULL, '63df7317aa0e21675588375.jpg', '10.00', '200000.00', '10.00', '1.00', 1, '[]', '{\"USD\":\"USD\",\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"UGX\":\"UGX\",\"TZS\":\"TZS\"}', '{\"USD\":\"USD\",\"KES\":\"KES\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"TZS\":\"TZS\"}', '{\"USD\":\"1\",\"KES\":\"124.1\",\"GHS\":\"12.3\",\"NGN\":\"455.06\",\"GBP\":\"0.81\",\"EUR\":\"0.92\",\"UGX\":\"1\",\"TZS\":\"2335\"}', 1, 0, 1, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05'),
(4, 'Razorpay', 'razorpay', 'Payment will receive within 1 days', '', NULL, '{\"account_number\":\"\",\"Key_Id\":\"\",\"Key_Secret\":\"\"}', '{\"webhook\":\"payout\"}', '63df737bcf63e1675588475.jpg', '10.00', '200000.00', '10.00', '1.00', 1, '{\"name\":{\"name\":\"name\",\"label\":\"Name\",\"type\":\"text\",\"validation\":\"required\"},\"email\":{\"name\":\"email\",\"label\":\"Email\",\"type\":\"text\",\"validation\":\"required\"},\"ifsc\":{\"name\":\"ifsc\",\"label\":\"IFSC\",\"type\":\"text\",\"validation\":\"required\"},\"account_number\":{\"name\":\"account_number\",\"label\":\"Account number\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"INR\":\"INR\"}', '{\"INR\":\"INR\"}', '{\"INR\":\"70.98\"}', 1, 0, 1, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05'),
(5, 'Paystack', 'paystack', 'Payment will receive within 1 days', '', NULL, '{\"Public_key\":\"\",\"Secret_key\":\"\"}', '{\"webhook\":\"payout\"}', '63df736055d121675588448.jpg', '10.00', '200000.00', '10.00', '1.00', 1, '{\"name\":{\"name\":\"name\",\"label\":\"Name\",\"type\":\"text\",\"validation\":\"required\"},\"account_number\":{\"name\":\"account_number\",\"label\":\"Account  Number\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"NGN\":\"NGN\",\"GHS\":\"GHS\",\"ZAR\":\"ZAR\"}', '{\"NGN\":\"NGN\",\"GHS\":\"GHS\",\"ZAR\":\"ZAR\"}', '{\"NGN\":\"455\",\"GHS\":\"2.3\",\"ZAR\":\"17.2\"}', 1, 0, 1, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05'),
(6, 'Coinbase', 'coinbase', 'Payment will receive within 1 days', '', NULL, '{\"API_Key\":\"\",\"API_Secret\":\"\",\"Api_Passphrase\":\"\"}', '{\"webhook\":\"payout\"}', '63df730a1532e1675588362.jpg', '10.00', '200000.00', '1.20', '1.00', 1, '{\"crypto_address\":{\"name\":\"crypto_address\",\"label\":\"Crypto Address\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"0.0032866584364651\",\"BTC\":\"4.3438047580189E-5\",\"XRP\":\"2.4317656276014\",\"ETH\":\"0.00060498363899103\",\"ETH2\":\"1\",\"USDT\":\"0.99970684227142\",\"BCH\":\"0.0077663435649339\",\"LTC\":\"0.011189496085365\",\"XMR\":\"0.0056633319909619\",\"TON\":\"0.43646828144729\"}', 1, 0, 0, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05'),
(7, 'Perfect Money', 'perfectmoney', 'Payment will receive within 1 days', '', NULL, '{\"Passphrase\":\"\",\"Account_ID\":\"\",\"Payer_Account\":\"\"}', '', '63df736f2fd2f1675588463.jpg', '10.00', '200000.00', '10.00', '1.00', 1, '{\"account_number\":{\"name\":\"account_number\",\"label\":\"Account  Number\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', '{\"USD\":\"1\",\"EUR\":\"0.93\"}', 1, 0, 1, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05'),
(8, 'Paypal', 'paypal', 'Payment will receive within 1 days', '', NULL, '{\"cleint_id\":\"\",\"secret\":\"\"}', '{\"webhook\":\"payout\"}', '63df7330d0c111675588400.jpg', '10.00', '200000.00', '10.00', '1.00', 1, '{\"receiver\":{\"name\":\"receiver\",\"label\":\"Receiver\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"USD\"}', '{\"AUD\":\"1.44\",\"BRL\":\"5.21\",\"CAD\":\"1.34\",\"CZK\":\"21.99\",\"DKK\":\"6.85\",\"EUR\":\"0.92\",\"HKD\":\"7.83\",\"HUF\":\"361.73\",\"INR\":\"80.98\",\"ILS\":\"3.4\",\"JPY\":\"129.56\",\"MYR\":\"4.29\",\"MXN\":\"18.87\",\"TWD\":\"30.33\",\"NZD\":\"1.55\",\"NOK\":\"9.79\",\"PHP\":\"54.46\",\"PLN\":\"4.14\",\"GBP\":\"0.81\",\"RUB\":\"68.25\",\"SGD\":\"1.32\",\"SEK\":\"10.3\",\"CHF\":\"0.92\",\"THB\":\"32.64\",\"USD\":\"1\"}', 1, 1, 1, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05'),
(9, 'Binance', 'binance', 'Payment will receive within 1 days', '', NULL, '{\"API_Key\":\"\",\"KEY_Secret\":\"\"}', '', '63df59e0f3d7c1675581920.png', '10.00', '200000.00', '3.00', '2.00', 1, '{\"network\":{\"name\":\"network\",\"label\":\"Network\",\"type\":\"text\",\"validation\":\"required\"},\"address\":{\"name\":\"address\",\"label\":\"Address\",\"type\":\"text\",\"validation\":\"required\"}}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"BNB\",\"BTC\":\"BTC\",\"XRP\":\"XRP\",\"ETH\":\"ETH\",\"ETH2\":\"ETH2\",\"USDT\":\"USDT\",\"BCH\":\"BCH\",\"LTC\":\"LTC\",\"XMR\":\"XMR\",\"TON\":\"TON\"}', '{\"BNB\":\"0.0032866584364651\",\"BTC\":\"4.3438047580189E-5\",\"XRP\":\"2.4317656276014\",\"ETH\":\"0.00060498363899103\",\"ETH2\":\"1\",\"USDT\":\"0.99970684227142\",\"BCH\":\"0.0077663435649339\",\"LTC\":\"0.011189496085365\",\"XMR\":\"0.0056633319909619\",\"TON\":\"0.43646828144729\"}', 1, 1, 1, '1-2 hours maximum', '2021-12-17 10:02:14', '2023-04-16 05:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) NOT NULL,
  `daily_ad_limit` varchar(255) NOT NULL,
  `validity` varchar(255) NOT NULL,
  `referral_level` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_details`
--

CREATE TABLE `plan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `short_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptcs`
--

CREATE TABLE `ptcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ads_name` varchar(255) NOT NULL,
  `ads_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=URL/Link, 2=youtube, 3=picture/banner, 4=code/script',
  `ads_body` longtext NOT NULL,
  `user_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `ads_duration` int(11) NOT NULL DEFAULT 0,
  `max_show_limit` int(11) NOT NULL DEFAULT 0,
  `shown` int(11) NOT NULL DEFAULT 0,
  `remaining` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=inactive, 1=active, 2=pending, 3=rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ptc_views`
--

CREATE TABLE `ptc_views` (
  `id` bigint(20) NOT NULL,
  `ptc_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ad_view_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_contacts`
--

CREATE TABLE `razorpay_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) UNSIGNED NOT NULL,
  `commission_type` varchar(30) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `percent` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_bonuses`
--

CREATE TABLE `referral_bonuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `from_user_id` int(11) UNSIGNED DEFAULT NULL,
  `to_user_id` int(11) UNSIGNED DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `main_balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `transaction` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT 'invest => plan_purchase,\r\ndeposit => deposit_add_fund,\r\nptc => ad_view',
  `remarks` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_notifications`
--

CREATE TABLE `site_notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `site_notificational_id` int(11) NOT NULL,
  `site_notificational_type` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_controls`
--

CREATE TABLE `sms_controls` (
  `id` int(11) UNSIGNED NOT NULL,
  `actionMethod` varchar(191) DEFAULT NULL,
  `actionUrl` varchar(191) DEFAULT NULL,
  `headerData` text DEFAULT NULL,
  `paramData` text DEFAULT NULL,
  `formData` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_controls`
--

INSERT INTO `sms_controls` (`id`, `actionMethod`, `actionUrl`, `headerData`, `paramData`, `formData`, `created_at`, `updated_at`) VALUES
(1, 'POST', 'https://rest.nexmo.com/sms/json', '{\"Content-Type\":\"application\\/x-www-form-urlencoded\"}', NULL, '{\"from\":\"Rownak\",\"text\":\"[[message]]\",\"to\":\"[[receiver]]\",\"api_key\":\"930cc608\",\"api_secret\":\"2pijsaMOUw5YKOK5\"}', '2021-12-17 10:02:43', '2021-12-17 10:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) UNSIGNED DEFAULT NULL,
  `section_name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `language_id`, `section_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'hero', '{\"title\":\"Introducing Onshape Simulation\",\"sub_title\":\"Enlarge Your Network And Get More Commissions\",\"short_description\":\"<span>New cloud-native simulation technology delivers fast, easy, and accurate mechanical guidance to designers.<\\/span>\",\"button_name\":\"Learn More\"}', '2021-12-17 10:02:59', '2023-01-14 07:00:33'),
(3, 1, 'about-us', '{\"title\":\"ABOUT US\",\"sub_title\":\"We Use Digital Technology To Improve The Physical World\",\"short_description\":\"<p><span>A cryptocurrency, crypto-currency, or crypto is a collection of binary data which is designed to work as a medium of exchange. Individual coin ownership records are stored in a ledger, which is a computerized database using strong cryptography to secure transaction records, to control the creation of additional coins, and to verify the transfer of coin ownership. Try to save<\\/span><\\/p>\",\"button_name\":\"Know More\"}', '2021-12-17 10:02:59', '2023-04-16 22:51:22'),
(5, 1, 'service', '{\"title\":\"Services\",\"sub_title\":\"WHAT WE DO\",\"short_title\":\"How We\'re Helping\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(7, 1, 'call-to-action', '{\"title\":\"We Will Drive More Customers To Your Business Than Any Other Online Source.\",\"sub_title\":\"Multiply your Business\\u2019 Facebook Traffic 10x\",\"button_name\":\"Learn More\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(9, 1, 'contact-us', '{\"heading\":\"Just Drop Us A Line.\",\"sub_heading\":\"Give us a call or drop by anytime, we will be happy to answer your questions.\",\"address\":\"1234 North Avenue, IN 360001\",\"email\":\"email@website.com\",\"phone\":\"+44-2645262356\",\"footer_short_details\":\"We are a award winning mulitnational company. We believe quality and standard worldwide consider.\"}', '2021-12-17 10:02:59', '2023-01-16 01:10:22'),
(11, 1, 'testimonial', '{\"title\":\"TESTIMONIALS\",\"sub_title\":\"Trusted By Millions Of Users Worldwide\"}', '2021-12-17 10:02:59', '2023-01-15 00:27:37'),
(13, 1, 'login', '{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(15, 1, 'register', '{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(17, 1, 'forget-password', '{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(19, 1, 'reset-password', '{\"title\":\"Proclamations About Us\",\"description\":\"<ul>\\r\\n                                    <li>\\r\\n                                        <p>Lorem ipsum dolor sit amet.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Adipisicing elit. Beatae, repellendus!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Consectetur adipisicing elit. A, eos!<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Aliquid numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Voluptas est nesciunt qui necessitatibus<\\/p>\\r\\n                                    <\\/li>\\r\\n                                    <li>\\r\\n                                        <p>Lorem numquam reiciendis nisi placeat.<\\/p>\\r\\n                                    <\\/li><\\/ul>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(21, 1, 'how-it-work', '{\"title\":\"How It Work?\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(23, 1, 'blog', '{\"title\":\"OUR BLOGS\",\"sub_title\":\"Latest News &amp; Articles\"}', '2021-12-17 10:02:59', '2023-01-15 01:03:18'),
(25, 1, 'faq', '{\"title\":\"ANY QUESTIONS\",\"sub_title\":\"We\'ve Got Answers\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(39, 1, 'investment', '{\"title\":\"INVEST OFFER\",\"sub_title\":\"Investment Plans\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(40, 1, 'why-chose-us', '{\"title\":\"CHOOSE INVESTMENT\",\"sub_title\":\"Why Choose Investment Plan\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(42, 1, 'investor', '{\"title\":\"INVESTOR\",\"sub_title\":\"World Wide Top Investor\",\"short_title\":\"Help agencies to define their new business objectives and then create professional software.\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(43, 1, 'news-letter', '{\"title\":\"Newsletter\",\"sub_title\":\"Get our offers &amp; news in your inbox\"}', '2021-12-17 10:02:59', '2023-01-14 05:11:14'),
(45, 1, 'we-accept', '{\"title\":\"PAYMENTS\",\"sub_title\":\"Payments Gateway\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(46, 18, 'hero', '{\"title\":\"Introducci\\u00f3n a la simulaci\\u00f3n Onshape\",\"sub_title\":\"Ampl\\u00ede su red y obtenga m\\u00e1s comisiones\",\"short_description\":\"<p>La nueva tecnolog\\u00eda de simulaci\\u00f3n nativa de la nube ofrece orientaci\\u00f3n mec\\u00e1nica r\\u00e1pida, sencilla y precisa a los dise\\u00f1adores.<br \\/><\\/p>\",\"button_name\":\"Aprende m\\u00e1s\"}', '2021-12-17 10:02:59', '2023-02-18 01:00:04'),
(48, 18, 'about-us', '{\"title\":\"Sobre nosotros\",\"sub_title\":\"Usamos tecnolog\\u00eda digital para mejorar el mundo f\\u00edsico\",\"short_description\":\"<p>Una criptomoneda, criptomoneda o criptomoneda es una colecci\\u00f3n de datos binarios que est\\u00e1 dise\\u00f1ada para funcionar como un medio de intercambio. Los registros de propiedad de monedas individuales se almacenan en un libro mayor, que es una base de datos computarizada que utiliza criptograf\\u00eda fuerte para proteger los registros de transacciones, controlar la creaci\\u00f3n de monedas adicionales y verificar la transferencia de la propiedad de monedas. Intenta guardar<br \\/><\\/p>\",\"button_name\":\"Know More\"}', '2021-12-17 10:02:59', '2023-04-16 23:05:44'),
(51, 18, 'investment', '{\"title\":\"OFERTA INVERTIR\",\"sub_title\":\"Planes de inversi\\u00f3n\",\"short_details\":\"<p>Ayude a las agencias a definir sus nuevos objetivos comerciales y luego cree software profesional.<br \\/><\\/p>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(52, 18, 'why-chose-us', '{\"title\":\"ELIGE INVERSI\\u00d3N\",\"sub_title\":\"Por qu\\u00e9 elegir un plan de inversi\\u00f3n\",\"short_details\":\"<p>Ayude a las agencias a definir sus nuevos objetivos comerciales y luego cree software profesional.<br \\/><\\/p>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(55, 18, 'how-it-work', '{\"title\":\"\\u00bfComo funciona?\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(59, 18, 'testimonial', '{\"title\":\"TESTIMONIALS\",\"sub_title\":\"Con la confianza de millones de usuarios en todo el mundo\"}', '2021-12-17 10:02:59', '2023-02-18 01:02:13'),
(60, 18, 'investor', '{\"title\":\"INVERSOR\",\"sub_title\":\"Mejor inversor mundial\",\"short_title\":\"Ayude a las agencias a definir sus nuevos objetivos comerciales y luego cree software profesional.\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(63, 18, 'news-letter', '{\"title\":\"Suscr\\u00edbase a nuestro bolet\\u00edn\",\"sub_title\":\"Ponga en pr\\u00e1ctica sus ideas de inversi\\u00f3n con inversiones completas\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(67, 18, 'blog', '{\"title\":\"NUESTRAS BLOGS\",\"sub_title\":\"\\u00daltimas noticias y Art\\u00edculos\"}', '2021-12-17 10:02:59', '2023-02-18 01:02:36'),
(68, 18, 'faq', '{\"title\":\"ALGUNA PREGUNTA\",\"sub_title\":\"Tenemos respuestas\",\"short_details\":\"<p>Ayude a las agencias a definir sus nuevos objetivos comerciales y luego cree software profesional.<br \\/><\\/p>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(71, 18, 'we-accept', '{\"title\":\"PAGOS\",\"sub_title\":\"Pasarela de pagos\",\"short_details\":\"<p>Ayude a las agencias a definir sus nuevos objetivos comerciales y luego cree software profesional.<br \\/><\\/p>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(72, 18, 'contact-us', '{\"heading\":\"Simplemente env\\u00edenos una l\\u00ednea.\",\"sub_heading\":\"Ll\\u00e1menos o vis\\u00edtenos en cualquier momento, estaremos encantados de responder a sus preguntas.\",\"address\":\"1234 Avenida Norte, EN 360001\",\"email\":\"email@website.com\",\"phone\":\"+44-2645262356\",\"footer_short_details\":\"<p>Somos una empresa multinacional galardonada. Creemos que la calidad y el est\\u00e1ndar en todo el mundo tienen en cuenta.<br \\/><\\/p>\"}', '2021-12-17 10:02:59', '2023-02-18 01:03:40'),
(74, 19, 'hero', '{\"title\":\"\\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a\",\"sub_title\":\"\\u062e\\u0637\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u062d\\u0627\\u0621 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\",\"short_description\":\"\\u0636\\u0639 \\u0623\\u0641\\u0643\\u0627\\u0631\\u0643 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0648\\u0636\\u0639 \\u0627\\u0644\\u062a\\u0646\\u0641\\u064a\\u0630 \\u0645\\u0639 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 \\u0643\\u0627\\u0645\\u0644\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a. \\u062a\\u0645\\u062a\\u0639 \\u0628\\u0627\\u0644\\u0645\\u0632\\u0627\\u064a\\u0627 \\u0648\\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0622\\u062a \\u0627\\u0644\\u062d\\u0642\\u064a\\u0642\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a\\u0643 \\u0627\\u0644\\u0645\\u062a\\u0631\\u0627\\u0643\\u0645\\u0629.\",\"button_name\":\"\\u064a\\u062a\\u0639\\u0644\\u0645 \\u0623\\u0643\\u062b\\u0631\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(75, 19, 'about-us', '{\"title\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0639\\u0646\\u0627\",\"sub_title\":\"\\u0645\\u0631\\u062d\\u0628\\u0627 \\u0628\\u0643\\u0645 \\u0641\\u064a \\u0628\\u0644\\u0627\\u0646\\u0634\\u064a\\u0628\",\"short_title\":\"Planshyip \\u0647\\u064a \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u064a\\u0629 \\u060c \\u064a\\u0639\\u0645\\u0644 \\u0634\\u0627\\u064a\\u0647\\u0627 \\u0639\\u0644\\u0649 \\u062c\\u0646\\u064a \\u0627\\u0644\\u0623\\u0645\\u0648\\u0627\\u0644 \\u0645\\u0646 \\u062a\\u0642\\u0644\\u0628\\u0627\\u062a \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u062a \\u0627\\u0644\\u0645\\u0634\\u0641\\u0631\\u0629 \\u0648\\u064a\\u0642\\u062f\\u0645 \\u0639\\u0648\\u0627\\u0626\\u062f \\u0643\\u0628\\u064a\\u0631\\u0629 \\u0644\\u0639\\u0645\\u0644\\u0627\\u0626\\u0646\\u0627.\",\"short_description\":\"<p>\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\\u0627\\u062a \\u0622\\u0645\\u0646\\u0629<\\/p><p>\\u0623\\u0635\\u0628\\u062d \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0639\\u0628\\u0631\\u064a \\u0644\\u0646\\u0635 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0633\\u0639 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0634\\u0627\\u0631 \\u0627\\u0644\\u0622\\u0646 \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629<\\/p><p><br \\/><\\/p><p>\\u0645\\u0636\\u0645\\u0648\\u0646<\\/p><p>\\u0623\\u0635\\u0628\\u062d \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\\u064a \\u0644\\u0646\\u0635 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0633\\u0639 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0634\\u0627\\u0631 \\u0627\\u0644\\u0622\\u0646 \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629<\\/p><p><br \\/><\\/p><p>\\u0622\\u0645\\u0646 \\u0648\\u0645\\u0648\\u062b\\u0648\\u0642<\\/p><p>\\u0623\\u0635\\u0628\\u062d \\u0627\\u0644\\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0639\\u0628\\u0631\\u064a \\u0644\\u0646\\u0635 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0648\\u0627\\u0633\\u0639 \\u0627\\u0644\\u0627\\u0646\\u062a\\u0634\\u0627\\u0631 \\u0627\\u0644\\u0622\\u0646 \\u0644\\u062f\\u0631\\u062c\\u0629 \\u0623\\u0646 \\u0627\\u0644\\u0639\\u062f\\u064a\\u062f \\u0645\\u0646 \\u062a\\u0633\\u0644\\u0633\\u0644 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629<\\/p>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(76, 19, 'investment', '{\"title\":\"\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\",\"sub_title\":\"\\u062e\\u0637\\u0637 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0645\\u0627\\u0631\",\"short_details\":\"<p>\\u0633\\u0627\\u0639\\u062f \\u0627\\u0644\\u0648\\u0643\\u0627\\u0644\\u0627\\u062a \\u0639\\u0644\\u0649 \\u062a\\u062d\\u062f\\u064a\\u062f \\u0623\\u0647\\u062f\\u0627\\u0641 \\u0623\\u0639\\u0645\\u0627\\u0644\\u0647\\u0627 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u062b\\u0645 \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u062d\\u062a\\u0631\\u0627\\u0641\\u064a\\u0629.<br \\/><\\/p>\"}', '2021-12-17 10:02:59', '2021-12-17 10:02:59'),
(78, 1, 'know-more-us', '{\"title\":\"INVESTON HISTORY\",\"sub_title\":\"KNOW MORE US\",\"short_details\":\"Help agencies to define their new business objectives and then create professional software.\"}', '2022-05-11 03:10:19', '2022-05-11 03:10:19'),
(79, 1, 'calculate-profit', '{\"title\":\"PLANS CALCULATOR\",\"sub_title\":\"CALCULATE THE AMAZING PROFITS\",\"short_details\":\"worldwide investment company who are committed provides a straight forward and transparent mechanism\",\"profit_title\":\"YOUR PROFIT\",\"profit_sub_title\":\"Calculate how much your invest profit\"}', '2022-05-16 00:48:16', '2022-05-16 00:48:16'),
(81, 1, 'cookie-consent', '{\"title\":\"Cookies &amp; Privacy\",\"popup_short_description\":\"<p><span>This website uses cookies or similar techonoglies to enhance your browsing experience and provide personalized recommendations. By contrinuing to use our website, you agree to our<\\/span><br \\/><\\/p>\",\"description\":\"<p>It is a long established fact that a reader will be distracted by the\\r\\n readable content of a page when looking at its layout. The point of \\r\\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \\r\\nletters, as opposed to using \'Content here, content here\', making it \\r\\nlook like readable English. Many desktop publishing packages and web \\r\\npage editors now use Lorem Ipsum as their default model text, and a \\r\\nsearch for \'lorem ipsum\' will uncover many web sites still in their \\r\\ninfancy. Various versions have evolved over the years, sometimes by \\r\\naccident, sometimes on purpose (injected humour and the like). It is a \\r\\nlong established fact that a reader will be distracted by the readable \\r\\ncontent of a page when looking at its layout.<\\/p><p>The point of \\r\\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \\r\\nletters, as opposed to using \'Content here, content here\', making it \\r\\nlook like readable English. Many desktop publishing packages and web \\r\\npage editors now use Lorem Ipsum as their default model text, and a \\r\\nsearch for \'lorem ipsum\' will uncover many web sites still in their \\r\\ninfancy. Various versions have evolved over the years, sometimes by \\r\\naccident, sometimes on purpose (injected humour and the like). It is a \\r\\nlong established fact that a reader will be distracted by the readable \\r\\ncontent of a page when looking at its layout. The point of using Lorem \\r\\nIpsum is that it has a more-or-less normal distribution of letters, as \\r\\nopposed to using \'Content here, content here\', making it look like \\r\\nreadable English. Many desktop publishing packages and web page editors \\r\\nnow use Lorem Ipsum as their default model text, and a search for \'lorem\\r\\n ipsum\' will uncover many web sites still in their infancy. Various \\r\\nversions have evolved over the years, sometimes by accident, sometimes \\r\\non purpose (injected humour and the like).<\\/p>\"}', '2023-01-14 05:38:35', '2023-01-14 05:38:35'),
(82, 1, 'plan', '{\"title\":\"OUR PRICING\",\"sub_title\":\"Fair Pricng For You\"}', '2023-01-14 23:44:16', '2023-01-14 23:44:16'),
(83, 18, 'cookie-consent', '{\"title\":\"Galletas y Privacidad\",\"popup_short_description\":\"<p>Este sitio web utiliza cookies o tecnolog\\u00edas similares para mejorar su experiencia de navegaci\\u00f3n y proporcionar recomendaciones personalizadas. Al continuar utilizando nuestro sitio web, usted acepta nuestros<br \\/><\\/p>\",\"description\":\"<p>Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, a diferencia de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o.<\\/p><p><br \\/><\\/p><p>El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, a diferencia de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo). Es un hecho establecido desde hace mucho tiempo que un lector se distraer\\u00e1 con el contenido legible de una p\\u00e1gina cuando mire su dise\\u00f1o. El punto de usar Lorem Ipsum es que tiene una distribuci\\u00f3n de letras m\\u00e1s o menos normal, a diferencia de usar \'Contenido aqu\\u00ed, contenido aqu\\u00ed\', lo que hace que parezca un ingl\\u00e9s legible. Muchos paquetes de autoedici\\u00f3n y editores de p\\u00e1ginas web ahora usan Lorem Ipsum como su modelo de texto predeterminado, y una b\\u00fasqueda de \'lorem ipsum\' descubrir\\u00e1 muchos sitios web que a\\u00fan est\\u00e1n en su infancia. Varias versiones han evolucionado a lo largo de los a\\u00f1os, a veces por accidente, a veces a prop\\u00f3sito (humor inyectado y cosas por el estilo).<\\/p>\"}', '2023-01-14 23:45:06', '2023-02-18 01:04:44'),
(84, 1, 'feature', '{\"title\":\"FEATUERS\",\"sub_title\":\"Our Featuers\"}', '2023-01-15 00:01:20', '2023-01-15 00:01:20'),
(85, 18, 'plan', '{\"title\":\"Nuestro precio\",\"sub_title\":\"Precio justo para ti\"}', '2023-01-18 05:33:02', '2023-02-18 01:01:18'),
(86, 18, 'feature', '{\"title\":\"CARACTER\\u00cdSTICAS\",\"sub_title\":\"Nuestras caracter\\u00edsticas\"}', '2023-02-18 01:01:48', '2023-02-18 01:01:48'),
(87, 1, 'referral-on-deposit', '{\"referral_title\":\"Refferal Commission\",\"referral_sub_title\":\"Referral Bonus Level On Deposit\"}', '2023-03-10 23:22:20', '2023-03-10 23:22:20'),
(88, 18, 'referral-on-deposit', '{\"referral_title\":\"Comisi\\u00f3n de referencia\",\"referral_sub_title\":\"Nivel de bonificaci\\u00f3n de referencia en dep\\u00f3sito\"}', '2023-03-10 23:23:56', '2023-03-10 23:23:56'),
(89, 1, 'referral-on-ads-view', '{\"referral_title\":\"Refferal Commission\",\"referral_sub_title\":\"Referral Bonus Level On Ads View\"}', '2023-03-10 23:24:25', '2023-03-10 23:24:25'),
(90, 18, 'referral-on-ads-view', '{\"referral_title\":\"Comisi\\u00f3n de referencia\",\"referral_sub_title\":\"Nivel de bonificaci\\u00f3n de referencia en la vista de anuncios\"}', '2023-03-10 23:24:47', '2023-03-10 23:24:47'),
(91, 18, 'referral-on-purchase-plan', '{\"referral_title\":\"Comisi\\u00f3n de referencia\",\"referral_sub_title\":\"Nivel de bonificaci\\u00f3n de referencia en el plan de compra\"}', '2023-03-10 23:25:32', '2023-03-10 23:25:32'),
(92, 1, 'referral-on-purchase-plan', '{\"referral_title\":\"Refferal Commission\",\"referral_sub_title\":\"Referral Bonus Level On Purchase Plan\"}', '2023-03-10 23:26:05', '2023-03-10 23:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `template_media`
--

CREATE TABLE `template_media` (
  `id` int(11) UNSIGNED NOT NULL,
  `section_name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_media`
--

INSERT INTO `template_media` (`id`, `section_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'hero', '{\"image\":\"63c3961d658811673762333.png\",\"button_link\":\"https:\\/\\/bugfinder.net\\/\"}', '2021-12-17 10:02:53', '2023-04-16 22:55:37'),
(2, 'about-us', '{\"image\":\"63c3966f28dbc1673762415.png\",\"youtube_link\":\"https:\\/\\/www.youtube.com\\/embed\\/LXb3EKWsInQ?controls=0\",\"button_link\":\"https:\\/\\/bugfinder.net\\/\"}', '2021-12-17 10:02:53', '2023-04-16 22:51:22'),
(3, 'call-to-action', '{\"image\":\"60193254de30d1612264020.png\",\"button_link\":\"http:\\/\\/localhost\\/smm\\/admin\\/content-show\\/4\"}', '2021-12-17 10:02:53', '2021-12-17 10:02:53'),
(4, 'how-it-work', '{\"image\":\"6059d2c2654921616499394.jpg\",\"youtube_link\":\"https:\\/\\/www.youtube.com\\/embed\\/LXb3EKWsInQ?controls=0\"}', '2021-12-17 10:02:53', '2021-12-17 10:02:53'),
(5, 'request-a-call', '{\"button_link\":\"http:\\/\\/localhost\\/hyip_pro\\/contact\"}', '2022-05-17 01:03:05', '2022-05-17 01:03:05'),
(6, 'testimonial', '{\"image\":\"63c39f356e0031673764661.jpg\"}', '2023-01-15 00:37:41', '2023-01-15 00:37:41'),
(7, 'contact-us', '{\"image\":\"63c3d37c8728f1673778044.png\"}', '2023-01-15 04:20:44', '2023-01-15 04:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(91) DEFAULT NULL,
  `ticket` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed	',
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_attachments`
--

CREATE TABLE `ticket_attachments` (
  `id` int(11) UNSIGNED NOT NULL,
  `ticket_message_id` int(11) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `ticket_id` int(11) UNSIGNED DEFAULT NULL,
  `admin_id` int(11) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(11,2) DEFAULT NULL,
  `charge` decimal(11,2) NOT NULL DEFAULT 0.00,
  `final_balance` varchar(30) DEFAULT NULL,
  `trx_type` varchar(10) DEFAULT NULL,
  `remarks` varchar(191) NOT NULL,
  `trx_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `referral_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone_code` varchar(20) DEFAULT NULL,
  `phone` varchar(91) DEFAULT NULL,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `daily_ad_limit` int(11) NOT NULL DEFAULT 0,
  `validity_date` datetime(6) DEFAULT NULL,
  `free_plan_purchased` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `image` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `identity_verify` tinyint(4) NOT NULL COMMENT '	0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `address_verify` tinyint(4) NOT NULL COMMENT '0 => Not Applied, 1=> Applied, 2=> Approved, 3 => Rejected	',
  `two_fa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: two-FA off, 1: two-FA on',
  `two_fa_verify` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: two-FA unverified, 1: two-FA verified',
  `two_fa_code` varchar(50) DEFAULT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 1,
  `sms_verification` tinyint(1) NOT NULL DEFAULT 1,
  `verify_code` varchar(50) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_details`
--
ALTER TABLE `blog_category_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_category_details_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_details`
--
ALTER TABLE `blog_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_details_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `configures`
--
ALTER TABLE `configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_name_index` (`name`);

--
-- Indexes for table `content_details`
--
ALTER TABLE `content_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_details_content_id_foreign` (`content_id`),
  ADD KEY `content_details_language_id_foreign` (`language_id`);

--
-- Indexes for table `content_media`
--
ALTER TABLE `content_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_media_content_id_foreign` (`content_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funds_user_id_foreign` (`user_id`),
  ADD KEY `funds_gateway_id_foreign` (`gateway_id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_code_unique` (`code`);

--
-- Indexes for table `identify_forms`
--
ALTER TABLE `identify_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notify_templates`
--
ALTER TABLE `notify_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_templates_language_id_foreign` (`language_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payout_logs`
--
ALTER TABLE `payout_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_methods`
--
ALTER TABLE `payout_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_details_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `ptcs`
--
ALTER TABLE `ptcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptc_views`
--
ALTER TABLE `ptc_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_contacts`
--
ALTER TABLE `razorpay_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_bonuses`
--
ALTER TABLE `referral_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_notifications`
--
ALTER TABLE `site_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_controls`
--
ALTER TABLE `sms_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_media`
--
ALTER TABLE `template_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_media_section_name_index` (`section_name`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_attachments_ticket_message_id_foreign` (`ticket_message_id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_messages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_category_details`
--
ALTER TABLE `blog_category_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_details`
--
ALTER TABLE `blog_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `configures`
--
ALTER TABLE `configures`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `content_details`
--
ALTER TABLE `content_details`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `content_media`
--
ALTER TABLE `content_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `identify_forms`
--
ALTER TABLE `identify_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notify_templates`
--
ALTER TABLE `notify_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `payout_logs`
--
ALTER TABLE `payout_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_methods`
--
ALTER TABLE `payout_methods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_details`
--
ALTER TABLE `plan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptcs`
--
ALTER TABLE `ptcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptc_views`
--
ALTER TABLE `ptc_views`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `razorpay_contacts`
--
ALTER TABLE `razorpay_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_bonuses`
--
ALTER TABLE `referral_bonuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_notifications`
--
ALTER TABLE `site_notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_controls`
--
ALTER TABLE `sms_controls`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `template_media`
--
ALTER TABLE `template_media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_category_details`
--
ALTER TABLE `blog_category_details`
  ADD CONSTRAINT `blog_category_details_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_details`
--
ALTER TABLE `blog_details`
  ADD CONSTRAINT `blog_details_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_details`
--
ALTER TABLE `content_details`
  ADD CONSTRAINT `content_details_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`),
  ADD CONSTRAINT `content_details_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `content_media`
--
ALTER TABLE `content_media`
  ADD CONSTRAINT `content_media_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`);

--
-- Constraints for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
  ADD CONSTRAINT `funds_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `funds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notify_templates`
--
ALTER TABLE `notify_templates`
  ADD CONSTRAINT `notify_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `plan_details`
--
ALTER TABLE `plan_details`
  ADD CONSTRAINT `plan_details_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_attachments`
--
ALTER TABLE `ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_ticket_message_id_foreign` FOREIGN KEY (`ticket_message_id`) REFERENCES `ticket_messages` (`id`);

--
-- Constraints for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD CONSTRAINT `ticket_messages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `ticket_messages_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
