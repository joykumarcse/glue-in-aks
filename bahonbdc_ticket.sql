-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2022 at 10:48 PM
-- Server version: 10.3.36-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bahonbdc_ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `notice` longtext NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apptitles`
--

CREATE TABLE `apptitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `searchtitle` varchar(255) NOT NULL,
  `searchsub` varchar(255) DEFAULT NULL,
  `featurecheck` varchar(255) NOT NULL,
  `featuretitle` varchar(255) NOT NULL,
  `featuresub` varchar(255) DEFAULT NULL,
  `testimonialcheck` varchar(255) NOT NULL,
  `testimonialtitle` varchar(255) NOT NULL,
  `testimonialsub` varchar(255) DEFAULT NULL,
  `faqcheck` varchar(255) NOT NULL,
  `faqtitle` varchar(255) NOT NULL,
  `faqsub` varchar(255) DEFAULT NULL,
  `articlecheck` varchar(255) NOT NULL,
  `articletitle` varchar(255) NOT NULL,
  `articlesub` varchar(255) DEFAULT NULL,
  `checkbox` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apptitles`
--

INSERT INTO `apptitles` (`id`, `searchtitle`, `searchsub`, `featurecheck`, `featuretitle`, `featuresub`, `testimonialcheck`, `testimonialtitle`, `testimonialsub`, `faqcheck`, `faqtitle`, `faqsub`, `articlecheck`, `articletitle`, `articlesub`, `checkbox`, `image`, `title`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 'Looking For help?', 'Type your query or submit your ticket', 'on', 'Why Choose US?', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Client Says', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out FAQâ€™s', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'on', 'Check Out Recent Articles', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL, '20220712103856.png', 'Glue', '20220712103856.png', '20220712103856.png', '20220712103856.png', '20220712100630.png', '2022-07-03 22:41:16', '2022-07-12 04:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `articleslug` longtext DEFAULT NULL,
  `subcategory` longtext DEFAULT NULL,
  `featureimage` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 51, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-09-09 13:40:29'),
(2, 'In eleifend velit vitae libero sollicitudin euismod.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(3, 'Maecenas mauris lectus, lobortis et purus mattis, blandit dictum tellus.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(4, 'Cras fringilla ipsum magna, in fringilla dui commodo a.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 51, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-09-09 13:40:43'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac faucibus odio.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(6, 'Maecenas non lorem quis tellus placerat varius.', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(7, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum ?', 1, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(8, 'Etiam vehicula luctus fermentum. In vel metus congue, pulvinar lectus vel, fermentum dui.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(9, 'Maecenas ante orci, egestas ut aliquet sit amet, sagittis a magna.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(10, 'Ut ullamcorperjusto sapien, in cursus libero viverra eget. Vivamus auctor imperdiet urna, at pulvinar leoposuere laoreet.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(11, 'Suspendisse neque nisl, fringilla at iaculis scelerisque, ornare vel dolor. Utet   pulvinar   nunc.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(12, 'Pellentesque fringilla mollis efficitur.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(13, 'Morbi velit neque, semper quis lorem quis, efficitur dignissim ipsum.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(14, 'Ut ac loremsed turpis imperdiet eleifend sit amet id sapien.', 2, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(15, 'Nulla facilisi. Aenean congue fringilla justout aliquam.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(16, 'Nunc vulputate neque vitae justo facilisis, non condimentumante sagittis.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30');
INSERT INTO `articles` (`id`, `title`, `category_id`, `message`, `tags`, `views`, `articleslug`, `subcategory`, `featureimage`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(17, 'Maecenas tincidunt est efficiturligula euismod, sit amet ornare est vulputate.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(18, 'Duis vehicula mi vel mi pretium, a viverra erat efficitur.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(19, 'Cras aliquamest ac eros varius, id iaculis dui auctor.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 51, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-07-04 15:41:05'),
(20, 'Duis pretium neque ligula, et pulvinar mi placeratet. Nulla nec nunc sit amet nunc posuere vestibulum.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(21, 'ellentesquescelerisque fermentum erat, id posuere justo pulvinar ut.', 3, '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p><p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atcorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p><p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoraliz the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble thena bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.</p>', 'php,phpbasic', 50, NULL, NULL, NULL, 'Published', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `articles_likes`
--

CREATE TABLE `articles_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `rating` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles_likes`
--

INSERT INTO `articles_likes` (`id`, `user_id`, `article_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(2, 1, 1, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(3, 1, 1, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(4, 1, 1, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(5, 1, 1, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(6, 1, 1, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(7, 1, 1, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(8, 1, 1, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(9, 1, 1, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(10, 1, 2, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(11, 1, 2, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(12, 1, 2, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(13, 1, 2, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(14, 1, 8, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(15, 1, 8, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(16, 1, 8, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(17, 1, 8, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(18, 1, 8, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(19, 1, 8, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(20, 1, 8, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(21, 1, 8, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(22, 1, 8, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(23, 1, 9, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(24, 1, 9, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(25, 1, 9, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(26, 1, 9, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(27, 1, 15, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(28, 1, 15, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(29, 1, 15, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(30, 1, 15, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(31, 1, 15, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(32, 1, 15, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(33, 1, 15, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(34, 1, 15, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(35, 1, 15, -1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(36, 1, 16, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(37, 1, 16, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(38, 1, 16, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(39, 1, 16, 1, '2022-01-07 00:13:30', '2022-01-07 00:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `article_comments`
--

CREATE TABLE `article_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `article_replies`
--

CREATE TABLE `article_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `callactions`
--

CREATE TABLE `callactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `callcheck` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `buttonname` varchar(255) NOT NULL,
  `buttonurl` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `callactions`
--

INSERT INTO `callactions` (`id`, `callcheck`, `title`, `subtitle`, `buttonname`, `buttonurl`, `image`, `created_at`, `updated_at`) VALUES
(1, 'on', 'Need Support & Response within 24 hours?', 'Excepteur sint occaecat cupidatat non proident mollit anim id est laborum', 'Open Ticket', '#', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `cannedmessages`
--

CREATE TABLE `cannedmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `messages` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display` varchar(255) DEFAULT NULL,
  `categoryslug` longtext DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `display`, `categoryslug`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ticket Support', 'both', NULL, NULL, '1', '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(2, 'Securities', 'knowledge', NULL, NULL, '1', '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(3, 'Sales & Services', 'both', NULL, NULL, '1', '2022-01-07 00:13:30', '2022-01-07 00:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `category_category_user`
--

CREATE TABLE `category_category_user` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `display` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `cust_id`, `user_id`, `comment`, `display`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 1, '<p>wow<br></p>', 1, '2022-07-04 12:06:34', '2022-07-04 12:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `contactforms`
--

CREATE TABLE `contactforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', NULL, NULL),
(2, 'Ã…land Islands', 'AX', NULL, NULL),
(3, 'Albania', 'AL', NULL, NULL),
(4, 'Algeria', 'DZ', NULL, NULL),
(5, 'American Samoa', 'AS', NULL, NULL),
(6, 'Andorra', 'AD', NULL, NULL),
(7, 'Angola', 'AO', NULL, NULL),
(8, 'Anguilla', 'AI', NULL, NULL),
(9, 'Antarctica', 'AQ', NULL, NULL),
(10, 'Antigua and Barbuda', 'AG', NULL, NULL),
(11, 'Argentina', 'AR', NULL, NULL),
(12, 'Armenia', 'AM', NULL, NULL),
(13, 'Aruba', 'AW', NULL, NULL),
(14, 'Australia', 'AU', NULL, NULL),
(15, 'Austria', 'AT', NULL, NULL),
(16, 'Azerbaijan', 'AZ', NULL, NULL),
(17, 'Bahamas', 'BS', NULL, NULL),
(18, 'Bahrain', 'BH', NULL, NULL),
(19, 'Bangladesh', 'BD', NULL, NULL),
(20, 'Barbados', 'BB', NULL, NULL),
(21, 'Belarus', 'BY', NULL, NULL),
(22, 'Belgium', 'BE', NULL, NULL),
(23, 'Belize', 'BZ', NULL, NULL),
(24, 'Benin', 'BJ', NULL, NULL),
(25, 'Bermuda', 'BM', NULL, NULL),
(26, 'Bhutan', 'BT', NULL, NULL),
(27, 'Bolivia, Plurinational State of', 'BO', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British Indian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Canada', 'CA', NULL, NULL),
(41, 'Cape Verde', 'CV', NULL, NULL),
(42, 'Cayman Islands', 'KY', NULL, NULL),
(43, 'Central African Republic', 'CF', NULL, NULL),
(44, 'Chad', 'TD', NULL, NULL),
(45, 'Chile', 'CL', NULL, NULL),
(46, 'China', 'CN', NULL, NULL),
(47, 'Christmas Island', 'CX', NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(49, 'Colombia', 'CO', NULL, NULL),
(50, 'Comoros', 'KM', NULL, NULL),
(51, 'Congo', 'CG', NULL, NULL),
(52, 'Congo, the Democratic Republic of the', 'CD', NULL, NULL),
(53, 'Cook Islands', 'CK', NULL, NULL),
(54, 'Costa Rica', 'CR', NULL, NULL),
(55, 'CÃ´te d\'Ivoire', 'CI', NULL, NULL),
(56, 'Croatia', 'HR', NULL, NULL),
(57, 'Cuba', 'CU', NULL, NULL),
(58, 'CuraÃ§ao', 'CW', NULL, NULL),
(59, 'Cyprus', 'CY', NULL, NULL),
(60, 'Czech Republic', 'CZ', NULL, NULL),
(61, 'Denmark', 'DK', NULL, NULL),
(62, 'Djibouti', 'DJ', NULL, NULL),
(63, 'Dominica', 'DM', NULL, NULL),
(64, 'Dominican Republic', 'DO', NULL, NULL),
(65, 'Ecuador', 'EC', NULL, NULL),
(66, 'Egypt', 'EG', NULL, NULL),
(67, 'El Salvador', 'SV', NULL, NULL),
(68, 'Equatorial Guinea', 'GQ', NULL, NULL),
(69, 'Eritrea', 'ER', NULL, NULL),
(70, 'Estonia', 'EE', NULL, NULL),
(71, 'Ethiopia', 'ET', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(73, 'Faroe Islands', 'FO', NULL, NULL),
(74, 'Fiji', 'FJ', NULL, NULL),
(75, 'Finland', 'FI', NULL, NULL),
(76, 'France', 'FR', NULL, NULL),
(77, 'French Guiana', 'GF', NULL, NULL),
(78, 'French Polynesia', 'PF', NULL, NULL),
(79, 'French Southern Territories', 'TF', NULL, NULL),
(80, 'Gabon', 'GA', NULL, NULL),
(81, 'Gambia', 'GM', NULL, NULL),
(82, 'Georgia', 'GE', NULL, NULL),
(83, 'Germany', 'DE', NULL, NULL),
(84, 'Ghana', 'GH', NULL, NULL),
(85, 'Gibraltar', 'GI', NULL, NULL),
(86, 'Greece', 'GR', NULL, NULL),
(87, 'Greenland', 'GL', NULL, NULL),
(88, 'Grenada', 'GD', NULL, NULL),
(89, 'Guadeloupe', 'GP', NULL, NULL),
(90, 'Guam', 'GU', NULL, NULL),
(91, 'Guatemala', 'GT', NULL, NULL),
(92, 'Guernsey', 'GG', NULL, NULL),
(93, 'Guinea', 'GN', NULL, NULL),
(94, 'Guinea-Bissau', 'GW', NULL, NULL),
(95, 'Guyana', 'GY', NULL, NULL),
(96, 'Haiti', 'HT', NULL, NULL),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', NULL, NULL),
(98, 'Holy See (Vatican City State)', 'VA', NULL, NULL),
(99, 'Honduras', 'HN', NULL, NULL),
(100, 'Hong Kong', 'HK', NULL, NULL),
(101, 'Hungary', 'HU', NULL, NULL),
(102, 'Iceland', 'IS', NULL, NULL),
(103, 'India', 'IN', NULL, NULL),
(104, 'Indonesia', 'ID', NULL, NULL),
(105, 'Iran, Islamic Republic of', 'IR', NULL, NULL),
(106, 'Iraq', 'IQ', NULL, NULL),
(107, 'Ireland', 'IE', NULL, NULL),
(108, 'Isle of Man', 'IM', NULL, NULL),
(109, 'Israel', 'IL', NULL, NULL),
(110, 'Italy', 'IT', NULL, NULL),
(111, 'Jamaica', 'JM', NULL, NULL),
(112, 'Japan', 'JP', NULL, NULL),
(113, 'Jersey', 'JE', NULL, NULL),
(114, 'Jordan', 'JO', NULL, NULL),
(115, 'Kazakhstan', 'KZ', NULL, NULL),
(116, 'Kenya', 'KE', NULL, NULL),
(117, 'Kiribati', 'KI', NULL, NULL),
(118, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(119, 'Korea, Republic of', 'KR', NULL, NULL),
(120, 'Kuwait', 'KW', NULL, NULL),
(121, 'Kyrgyzstan', 'KG', NULL, NULL),
(122, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(123, 'Latvia', 'LV', NULL, NULL),
(124, 'Lebanon', 'LB', NULL, NULL),
(125, 'Lesotho', 'LS', NULL, NULL),
(126, 'Liberia', 'LR', NULL, NULL),
(127, 'Libya', 'LY', NULL, NULL),
(128, 'Liechtenstein', 'LI', NULL, NULL),
(129, 'Lithuania', 'LT', NULL, NULL),
(130, 'Luxembourg', 'LU', NULL, NULL),
(131, 'Macao', 'MO', NULL, NULL),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', NULL, NULL),
(133, 'Madagascar', 'MG', NULL, NULL),
(134, 'Malawi', 'MW', NULL, NULL),
(135, 'Malaysia', 'MY', NULL, NULL),
(136, 'Maldives', 'MV', NULL, NULL),
(137, 'Mali', 'ML', NULL, NULL),
(138, 'Malta', 'MT', NULL, NULL),
(139, 'Marshall Islands', 'MH', NULL, NULL),
(140, 'Martinique', 'MQ', NULL, NULL),
(141, 'Mauritania', 'MR', NULL, NULL),
(142, 'Mauritius', 'MU', NULL, NULL),
(143, 'Mayotte', 'YT', NULL, NULL),
(144, 'Mexico', 'MX', NULL, NULL),
(145, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(146, 'Moldova, Republic of', 'MD', NULL, NULL),
(147, 'Monaco', 'MC', NULL, NULL),
(148, 'Mongolia', 'MN', NULL, NULL),
(149, 'Montenegro', 'ME', NULL, NULL),
(150, 'Montserrat', 'MS', NULL, NULL),
(151, 'Morocco', 'MA', NULL, NULL),
(152, 'Mozambique', 'MZ', NULL, NULL),
(153, 'Myanmar', 'MM', NULL, NULL),
(154, 'Namibia', 'NA', NULL, NULL),
(155, 'Nauru', 'NR', NULL, NULL),
(156, 'Nepal', 'NP', NULL, NULL),
(157, 'Netherlands', 'NL', NULL, NULL),
(158, 'New Caledonia', 'NC', NULL, NULL),
(159, 'New Zealand', 'NZ', NULL, NULL),
(160, 'Nicaragua', 'NI', NULL, NULL),
(161, 'Niger', 'NE', NULL, NULL),
(162, 'Nigeria', 'NG', NULL, NULL),
(163, 'Niue', 'NU', NULL, NULL),
(164, 'Norfolk Island', 'NF', NULL, NULL),
(165, 'Northern Mariana Islands', 'MP', NULL, NULL),
(166, 'Norway', 'NO', NULL, NULL),
(167, 'Oman', 'OM', NULL, NULL),
(168, 'Pakistan', 'PK', NULL, NULL),
(169, 'Palau', 'PW', NULL, NULL),
(170, 'Palestine, State of', 'PS', NULL, NULL),
(171, 'Panama', 'PA', NULL, NULL),
(172, 'Papua New Guinea', 'PG', NULL, NULL),
(173, 'Paraguay', 'PY', NULL, NULL),
(174, 'Peru', 'PE', NULL, NULL),
(175, 'Philippines', 'PH', NULL, NULL),
(176, 'Pitcairn', 'PN', NULL, NULL),
(177, 'Poland', 'PL', NULL, NULL),
(178, 'Portugal', 'PT', NULL, NULL),
(179, 'Puerto Rico', 'PR', NULL, NULL),
(180, 'Qatar', 'QA', NULL, NULL),
(181, 'RÃ©union', 'RE', NULL, NULL),
(182, 'Romania', 'RO', NULL, NULL),
(183, 'Russian Federation', 'RU', NULL, NULL),
(184, 'Rwanda', 'RW', NULL, NULL),
(185, 'Saint BarthÃ©lemy', 'BL', NULL, NULL),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', NULL, NULL),
(187, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(188, 'Saint Lucia', 'LC', NULL, NULL),
(189, 'Saint Martin (French part)', 'MF', NULL, NULL),
(190, 'Saint Pierre and Miquelon', 'PM', NULL, NULL),
(191, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(192, 'Samoa', 'WS', NULL, NULL),
(193, 'San Marino', 'SM', NULL, NULL),
(194, 'Sao Tome and Principe', 'ST', NULL, NULL),
(195, 'Saudi Arabia', 'SA', NULL, NULL),
(196, 'Senegal', 'SN', NULL, NULL),
(197, 'Serbia', 'RS', NULL, NULL),
(198, 'Seychelles', 'SC', NULL, NULL),
(199, 'Sierra Leone', 'SL', NULL, NULL),
(200, 'Singapore', 'SG', NULL, NULL),
(201, 'Sint Maarten (Dutch part)', 'SX', NULL, NULL),
(202, 'Slovakia', 'SK', NULL, NULL),
(203, 'Slovenia', 'SI', NULL, NULL),
(204, 'Solomon Islands', 'SB', NULL, NULL),
(205, 'Somalia', 'SO', NULL, NULL),
(206, 'South Africa', 'ZA', NULL, NULL),
(207, 'South Georgia and the South Sandwich Islands', 'GS', NULL, NULL),
(208, 'South Sudan', 'SS', NULL, NULL),
(209, 'Spain', 'ES', NULL, NULL),
(210, 'Sri Lanka', 'LK', NULL, NULL),
(211, 'Sudan', 'SD', NULL, NULL),
(212, 'Suriname', 'SR', NULL, NULL),
(213, 'Svalbard and Jan Mayen', 'SJ', NULL, NULL),
(214, 'Swaziland', 'SZ', NULL, NULL),
(215, 'Sweden', 'SE', NULL, NULL),
(216, 'Switzerland', 'CH', NULL, NULL),
(217, 'Syrian Arab Republic', 'SY', NULL, NULL),
(218, 'Taiwan', 'TW', NULL, NULL),
(219, 'Tajikistan', 'TJ', NULL, NULL),
(220, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(221, 'Thailand', 'TH', NULL, NULL),
(222, 'Timor-Leste', 'TL', NULL, NULL),
(223, 'Togo', 'TG', NULL, NULL),
(224, 'Tokelau', 'TK', NULL, NULL),
(225, 'Tonga', 'TO', NULL, NULL),
(226, 'Trinidad and Tobago', 'TT', NULL, NULL),
(227, 'Tunisia', 'TN', NULL, NULL),
(228, 'Turkey', 'TR', NULL, NULL),
(229, 'Turkmenistan', 'TM', NULL, NULL),
(230, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(231, 'Tuvalu', 'TV', NULL, NULL),
(232, 'Uganda', 'UG', NULL, NULL),
(233, 'Ukraine', 'UA', NULL, NULL),
(234, 'United Arab Emirates', 'AE', NULL, NULL),
(235, 'United Kingdom', 'GB', NULL, NULL),
(236, 'United States', 'US', NULL, NULL),
(237, 'United States Minor Outlying Islands', 'UM', NULL, NULL),
(238, 'Uruguay', 'UY', NULL, NULL),
(239, 'Uzbekistan', 'UZ', NULL, NULL),
(240, 'Vanuatu', 'VU', NULL, NULL),
(241, 'Venezuela, Bolivarian Republic of', 'VE', NULL, NULL),
(242, 'Viet Nam', 'VN', NULL, NULL),
(243, 'Virgin Islands, British', 'VG', NULL, NULL),
(244, 'Virgin Islands, U.S.', 'VI', NULL, NULL),
(245, 'Wallis and Futuna', 'WF', NULL, NULL),
(246, 'Western Sahara', 'EH', NULL, NULL),
(247, 'Yemen', 'YE', NULL, NULL),
(248, 'Zambia', 'ZM', NULL, NULL),
(249, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customcssjs`
--

CREATE TABLE `customcssjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customcssjs`
--

INSERT INTO `customcssjs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'CUSTOMCHATENABLE', 'disable', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(2, 'CUSTOMCHATUSER', 'public', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(3, 'CUSTOMCHAT', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(4, 'CUSTOMJS', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(5, 'CUSTOMCSS', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `username`, `gender`, `provider_id`, `email`, `userType`, `status`, `phone`, `image`, `verified`, `password`, `last_login_at`, `last_login_ip`, `country`, `timezone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', '', 'GUEST', NULL, NULL, 'poxof47873@weepm.com', 'Guest', '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 11:58:37', '2022-07-04 11:58:37'),
(2, 'Zayed', 'News', 'Zayed News', NULL, NULL, 'zayed.du.iit@gmail.com', 'Guest', '1', NULL, NULL, 1, '$2y$10$YOplrOGkZZmkDfMxZX8bZulQ9TWe4s5ydq/B/A0NeF23sh5FgRfTi', '2022-08-21 08:29:29', '202.74.48.132', 'Bangladesh', 'Asia/Dhaka', 'LGwtDjfwKvlskgWw8K7kq0loRLAJoWIftCELQ2oF5RWodcHhyDkX5E1cMsAk', '2022-07-04 12:00:17', '2022-08-21 02:29:29'),
(3, '', '', 'GUEST', NULL, NULL, 'jabewah624@weepm.com', 'Guest', '1', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 12:00:37', '2022-07-04 12:00:37'),
(4, '', '', 'GUEST', NULL, NULL, 'monna.incubator@gmail.com', 'Guest', '1', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 12:01:33', '2022-07-04 12:01:33'),
(5, '', '', 'GUEST', NULL, NULL, 'monna909@gmail.com', 'Guest', '1', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 12:03:23', '2022-07-04 12:03:23'),
(6, '', '', 'GUEST', NULL, NULL, 'ceo.appincubator@gmail.com', 'Guest', '1', NULL, NULL, 1, NULL, NULL, '103.129.211.178', 'Bangladesh', 'Asia/Dhaka', NULL, '2022-07-04 12:04:23', '2022-07-04 12:05:50'),
(7, '', '', 'GUEST', NULL, NULL, 'ibrahimkhan0894@gmail.com', 'Guest', '1', NULL, NULL, 1, NULL, NULL, '71.171.127.48', 'United States', 'America/New_York', NULL, '2022-07-05 10:09:30', '2022-07-05 10:10:47'),
(8, 'Monowar', 'Dev', 'Monowar Dev', NULL, NULL, 'cse.monowar@gmail.com', 'Customer', '1', NULL, NULL, 1, '$2y$10$ll5goNqYFmHcWvqZSl0hzu55J1ys4dhOkJxvMAqutI0rEHOkEcPm2', '2022-09-11 07:29:26', '103.132.153.157', 'Bangladesh', 'Asia/Dhaka', NULL, '2022-09-08 11:32:27', '2022-09-11 01:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `customer_settings`
--

CREATE TABLE `customer_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custs_id` bigint(20) UNSIGNED NOT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_settings`
--

INSERT INTO `customer_settings` (`id`, `custs_id`, `darkmode`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2022-07-04 11:58:37', '2022-07-04 11:58:37'),
(2, 2, NULL, '2022-07-04 12:00:17', '2022-07-04 12:00:17'),
(3, 3, NULL, '2022-07-04 12:00:37', '2022-07-04 12:00:37'),
(4, 4, NULL, '2022-07-04 12:01:33', '2022-07-04 12:01:33'),
(5, 5, NULL, '2022-07-04 12:03:23', '2022-07-04 12:03:23'),
(6, 6, NULL, '2022-07-04 12:04:23', '2022-07-04 12:04:23'),
(7, 7, NULL, '2022-07-05 10:09:30', '2022-07-05 10:09:30'),
(8, 8, NULL, '2022-09-08 11:32:27', '2022-09-08 11:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `customizeerrors`
--

CREATE TABLE `customizeerrors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `errorname` varchar(255) NOT NULL,
  `errorvalue` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customizeerrors`
--

INSERT INTO `customizeerrors` (`id`, `errorname`, `errorvalue`, `created_at`, `updated_at`) VALUES
(1, '404title', 'Page Not Found', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(2, '404subtitle', 'Request Page Does Not Exists', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(3, '503title', 'Maintenance Mode', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(4, '503subtitle', 'We will be back soon', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(5, '503description', 'Please wait this site is undermaintenance', '2022-07-03 22:41:16', '2022-07-03 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `code`, `title`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'customer_sendmail_contactus', 'Customer receives e-mail from Admin for submitting Contact_us form', 'Thank you for contacting us.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{Contact_name}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Thanks for your kind information shared with our support. Our team will respond shortly.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\"><br></p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(2, 'admin_sendmail_contactus', 'Admin receives e-mails from Customers through Contact_us form', 'Received new contact details from a new user.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p><p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp;Received the new contact information from the new c<span class=\"red-underline\" data-startindex=\"56\" data-endindex=\"60\" data-paragraphid=\"21\">ustomer.</span></p><p>&nbsp; &nbsp;Name: {{Contact_name}}</p><p>&nbsp; &nbsp;Email: {{Contact_email}}</p><p>&nbsp; &nbsp;Phone Number: {{Contact_phone}}</p><p>&nbsp; &nbsp;Subject: {{Contact_subject}}</p><p>&nbsp; &nbsp;Message:{{Contact_message}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(3, 'customer_sendmail_verification', 'Receives e-mail, when users get registered with app', 'Thanks you for registering. Please verify your email.', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{username}},</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"23\" data-from-init=\"true\" data-changed=\"false\"><span class=\"red-underline\" data-startindex=\"0\" data-endindex=\"2\" data-paragraphid=\"23\">&nbsp; &nbsp;</span>Thank you for registering as our customer. Be part of our family. Before you log in to your portal, please verify your email by clicking this&nbsp;link:-&nbsp;<a href=\"{{email_verify_url}}\" style=\"color: var(--primary); background-color: rgb(255, 255, 255); outline: 0px;\">VerifyLink</a>.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(4, 'customer_send_ticket_created', 'Send email to customer, when Ticket is Created!', 'We received your ticket successfully', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response.(usually within 24 hours).</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p><p>Thank you for your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(5, 'admin_send_email_ticket_created', 'Send email to admin, when Ticket is Created!', 'New ticket is created', '<p>Dear Admin,</p><p>A ticket has been created with Ticket ID {{ticket_id}}.&nbsp;<br></p><p>Assign the ticket to support representatives who will be reviewing the request.</p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_admin_url}}\" target=\"_blank\">{{ticket_admin_url}}</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(6, 'customer_send_ticket_reply', 'Send email to customer, when he/she gets reply to ticket', 'You got replay for the ticket', '<p>Our support representatives have started reviewing your request. </p><p>Please visit the application to&nbsp;<a href=\"{{ticket_customer_url}}\" style=\"background-color: rgb(255, 255, 255);\">ViewTicket</a></p><p>Thank you for reaching us</p><p>Your Ticket Title: {{ticket_title}}<br></p><p>Your Ticket ID: {{ticket_id}}</p><p>Admin Last Reply: {{comment}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(7, 'customer_rating', 'Customer Rating For Agents', 'Your ticket has been closed succesfully', '<p class=\"root-block-node\" data-paragraphid=\"33\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your ticket has been closed by our team support. Weâ€™re always looking for ways to improve and would love to know how we did recently. How would you rate our support?</p><p class=\"root-block-node\" data-paragraphid=\"34\" data-from-init=\"true\" data-changed=\"false\">How would you rate the support you received?</p><p>Please click on the link to rate us:&nbsp;<a href=\"{{ratinglink}}\">Click here</a></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\"><br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Sincerely,<br></p><p class=\"root-block-node\" data-changed=\"false\" data-paragraphid=\"45\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(8, 'customer_send_ticket_reopen', 'Send email to customer, when Ticket is Reopen!', 'Your ticket has been reOpened succesfully', '<p>Thank you for reaching us again&nbsp;</p><p>Our support representatives will be reviewing your request again and will send you a personal response within 1-2 business working days.<br></p><p><br> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(9, 'forget_password', 'when customer/admin or any user forgets password', 'Password Reset Email Link', '<p>															</p><p class=\"root-block-node\" data-paragraphid=\"51\" data-from-init=\"true\" data-changed=\"false\">Hi there,</p><p class=\"root-block-node\" data-paragraphid=\"52\" data-from-init=\"true\" data-changed=\"false\">To regain access to your password</p><p class=\"root-block-node\" data-paragraphid=\"53\" data-from-init=\"true\" data-changed=\"false\">It looks like you lost your password.</p>Please click the below link to reset your account password. <p></p><p><a href=\"{{reset_password_url}}\">Reset Password</a>&nbsp;</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>\n                ', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(10, 'customer_send_registration_details', 'Send email to customers, when customers are created by admin', 'The administrator created your account. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by our support team.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(11, 'employee_send_registration_details', 'Send email to employees, when employees created by admin', 'The administrator created your account. ', '<p>Dear {{username}},</p><p>Your account has been successfully created by your admin.</p><p>Please visit the URL {{url}} and use the below credentials to access your account.</p><p> Email : {{useremail}}<br>Name : {{username}}<br>Password : {{userpassword}}</p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(12, 'customer_send_guestticket_created', 'Send email to customer, when GuestTicket is Created!', 'We received your guest ticket successfully', '<p>Dear {{ticket_username}},</p><p><br></p><p>We would like to acknowledge that we have received your request and a gust ticket has been created.</p><p>A support representative will be reviewing your request and will send you a personal response 1-2 bussiness days.</p><p><br></p><p>To view the status of the ticket or add comments, please visit</p><p><a href=\"{{ticket_customer_url}}\" target=\"_blank\">{{ticket_customer_url}}</a></p><p><br></p><p>Thank you for your patience.</p><p><br></p><p>Sincerely,</p><p>Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(13, 'customer_send_ticket_overdue', 'Send email to customer, when Ticket is Overdue!', 'This ticket status has been overdue.', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear Admin,</p><p>\n                </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">This ticket status has been overdue for {{ticket_overduetime}} days. </p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\">Please give attention to the ticket. The customer is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"10\" data-from-init=\"true\" data-changed=\"false\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_admin_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(14, 'customer_send_ticket_response', 'When the customer does not respond to the ticket, an email is sent to the customer.', 'Waiting for a response to your ticket from our team.', '<p>Dear {{ticket_username}},<br></p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">Your ticket is in an idle state. Our team is waiting for your response.</p><p class=\"root-block-node\" data-paragraphid=\"6\" data-from-init=\"true\" data-changed=\"false\">If you do not respond to this ticket (ticket_id), it will be automatically closed after {{ticket_closingtime}} days.</p><p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">\n                </p><p class=\"root-block-node\" data-paragraphid=\"8\" data-from-init=\"true\" data-changed=\"true\">Please check your ticket by clicking here.</p><p class=\"root-block-node\" data-paragraphid=\"8\" data-from-init=\"true\" data-changed=\"true\"><br></p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(15, 'customer_send_ticket_autoclose', 'Send email to customer, when Ticket is Autoclose!', 'Your Ticket has been Closed Succesfully', '<p class=\"root-block-node\" data-paragraphid=\"2\" data-from-init=\"true\" data-changed=\"false\">Dear {{ticket_username}},</p><p class=\"root-block-node\" data-paragraphid=\"11\" data-from-init=\"true\" data-changed=\"false\">Your ticket has been closed successfully because there was no response from your end, so the ticket was closed automatically&nbsp;(ticket_id).&nbsp;</p><p class=\"root-block-node\" data-paragraphid=\"12\" data-from-init=\"true\" data-changed=\"false\">If you want to reopen this ticket, please log in to your portal.</p><p> Title : {{ticket_title}}<br>Ticket URL : <a href=\"{{ticket_customer_url}}\">VIEW Ticket</a></p><p><br></p><p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p><p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(16, 'guestticket_email_verification', 'Guest Email Verification', 'Guest Ticket Verification', '<p class=\"root-block-node\" data-paragraphid=\"16\" data-from-init=\"true\" data-changed=\"false\">Dear {{guestname}},</p>\n                <p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Please click on the below link and verify your email address to create your guest ticket.</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Your OTP:- {{token}}</p><p class=\"root-block-node\" data-paragraphid=\"17\" data-from-init=\"true\" data-changed=\"false\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{{guestemail}}</p>\n                <p class=\"root-block-node\" data-paragraphid=\"19\" data-from-init=\"true\" data-changed=\"false\">Sincerely,</p>\n                <p class=\"root-block-node\" data-paragraphid=\"20\" data-from-init=\"true\" data-changed=\"false\">Support Team</p>', '2022-07-03 22:41:22', '2022-07-03 22:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `envatoapitoken`
--

CREATE TABLE `envatoapitoken` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `envatoapitoken` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `envatocategoryassign`
--

CREATE TABLE `envatocategoryassign` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `envato_enable` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq_list`
--

CREATE TABLE `faq_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `privatemode` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq_list`
--

INSERT INTO `faq_list` (`id`, `question`, `answer`, `status`, `privatemode`, `created_at`, `updated_at`) VALUES
(1, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(4, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(5, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(7, 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet ?', '<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p> <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven`t heard of them accusamus labore sustainable VHS.</p>', 1, NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `feature_boxes`
--

CREATE TABLE `feature_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feature_boxes`
--

INSERT INTO `feature_boxes` (`id`, `title`, `subtitle`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Secure Payment', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(2, 'Quality Templates', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(3, '24/7 Support', 'Nam libero tempore, cum soluta nobis est eligendi cumque facere possimus', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `footertexts`
--

CREATE TABLE `footertexts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footertexts`
--

INSERT INTO `footertexts` (`id`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '<p class=\"mb-0\">Copyright Â© 2022 <a href=\"https://bahonbd.com/ticket\" target=\"_blank\"> Glue </a>. Developed by <a href=\"https://bahonbd.com/ticket\" target=\"_blank\">Glue IT</a></p>', '2022-07-03 22:41:16', '2022-07-04 11:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups_categories`
--

CREATE TABLE `groups_categories` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE `groups_users` (
  `groups_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `i_p_l_i_s_t_s`
--

CREATE TABLE `i_p_l_i_s_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `entrytype` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Ticket\\Ticket', 2, 'bbdb4c7a-43d5-4079-ad7c-bb829cee2ec9', 'ticket', '62c32bfa9246f_Screenshot_1', '62c32bfa9246f_Screenshot_1.jpg', 'image/jpeg', 'public', 'public', 83026, '[]', '[]', '[]', '[]', 1, '2022-07-04 12:05:50', '2022-07-04 12:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_04_22_040708_contactform', 1),
(4, '2021_04_22_091416_countries', 1),
(5, '2021_04_27_060126_timezones', 1),
(6, '2021_04_27_102115_tickets', 1),
(7, '2021_04_28_042408_create_roles_table', 1),
(8, '2021_05_03_035012_create_categories_table', 1),
(9, '2021_05_03_094047_create_comments_table', 1),
(10, '2021_06_19_050240_create_table_articles', 1),
(11, '2021_06_28_083257_create_article_comments_table', 1),
(12, '2021_06_30_083642_create_article_replies_table', 1),
(13, '2021_07_06_100416_article_likes', 1),
(14, '2021_07_15_035926_create_media_table', 1),
(15, '2021_07_26_115944_create_permission_tables', 1),
(16, '2021_08_03_050245_create_faq_list', 1),
(17, '2021_08_03_111412_create_testimonials_table', 1),
(18, '2021_08_04_104125_create_callactions_table', 1),
(19, '2021_08_05_040909_create_feature_boxes_table', 1),
(20, '2021_08_05_051851_create_apptitles_table', 1),
(21, '2021_08_05_121507_create_footertexts_table', 1),
(22, '2021_08_16_050727_create_seosettings_table', 1),
(23, '2021_08_16_071125_create_addcoloumn_apptitles', 1),
(24, '2021_08_20_063925_create_verify_users_table', 1),
(25, '2021_08_26_043304_create_table_pages', 1),
(26, '2021_08_26_111852_create_announcements_table', 1),
(27, '2021_08_27_083617_create_settings_table', 1),
(28, '2021_08_27_101912_create_email_templates_table', 1),
(29, '2021_08_30_062024_create_social_auth_settings_table', 1),
(30, '2021_09_17_051723_create_add_coloumn_category', 1),
(31, '2021_09_21_082936_create_customizeerrors_table', 1),
(32, '2021_09_22_052400_create_table_categoryuser', 1),
(33, '2021_09_27_050656_create_customcssjs_table', 1),
(34, '2021_09_27_120834_create_add_column_tickets', 1),
(35, '2021_10_08_113339_create_table_groups', 1),
(36, '2021_10_08_113458_create_table_groups_users', 1),
(37, '2021_10_08_120528_create_table_groups_categories', 1),
(38, '2021_10_14_051452_create_notifications_table', 1),
(39, '2021_10_22_091731_create_ticketnotes_table', 1),
(40, '2021_10_28_041824_create_projects_categories_table', 1),
(41, '2021_10_30_061123_create_usersettings_table', 1),
(42, '2021_11_11_062738_create_sendmails_table', 1),
(43, '2021_11_12_035635_create_senduserlists_table', 1),
(44, '2021_11_15_044456_add_login_fields_to_customers_table', 1),
(45, '2021_11_18_111347_create_customer_settings_table', 1),
(46, '2021_12_08_103116_create_i_p_l_i_s_t_s_table', 1),
(47, '2022_03_10_094231_create_envatoapitoken', 1),
(48, '2022_03_10_094658_create_envatocategoryassign', 1),
(49, '2022_03_10_095956_create_add_column_ticket_table', 1),
(50, '2022_03_11_035359_create_add_column_cannedmessages_table', 1),
(51, '2022_03_16_152830_create_add_column_articles_table', 1),
(52, '2022_03_16_152938_create_add_column_faq_table', 1),
(53, '2022_03_28_060354_create_add_column_Category_article_table', 1),
(54, '2022_04_11_041716_create_subcategorysd_table', 1),
(55, '2022_04_21_053048_create_verify_otps_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('6be39ffe-88b4-4065-8b8a-17cfde01a446', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, '{\"ticket_id\":\"SPG-1\",\"title\":\"Test\",\"category\":\"Sales & Services\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"https:\\/\\/bahonbd.com\\/ticket\\/admin\\/ticket-view\\/SPG-1\",\"clink\":\"https:\\/\\/bahonbd.com\\/ticket\\/customer\\/ticket\\/view\\/SPG-1\"}', NULL, '2022-07-04 12:01:36', '2022-07-04 12:01:36'),
('08cc6e45-bac0-4f56-8d33-aae07b0d4928', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, '{\"ticket_id\":\"SPG-2\",\"title\":\"Test\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"https:\\/\\/bahonbd.com\\/ticket\\/admin\\/ticket-view\\/SPG-2\",\"clink\":\"https:\\/\\/bahonbd.com\\/ticket\\/customer\\/ticket\\/view\\/SPG-2\"}', NULL, '2022-07-04 12:05:50', '2022-07-04 12:05:50'),
('642c915c-1697-45f1-8d0e-f9eaedfff5f0', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\Customer', 6, '{\"ticket_id\":\"SPG-2\",\"title\":\"Test\",\"category\":\"Ticket Support\",\"status\":\"Inprogress\",\"overduestatus\":null,\"link\":\"https:\\/\\/bahonbd.com\\/ticket\\/admin\\/ticket-view\\/SPG-2\",\"clink\":\"https:\\/\\/bahonbd.com\\/ticket\\/customer\\/ticket\\/view\\/SPG-2\"}', NULL, '2022-07-04 12:06:34', '2022-07-04 12:06:34'),
('f4d0bf5d-b810-4c1c-9291-e90f8b430b46', 'App\\Notifications\\TicketCreateNotifications', 'App\\Models\\User', 1, '{\"ticket_id\":\"SPG-3\",\"title\":\"Test Ticket\",\"category\":\"Ticket Support\",\"status\":\"New\",\"overduestatus\":null,\"link\":\"https:\\/\\/bahonbd.com\\/ticket\\/admin\\/ticket-view\\/SPG-3\",\"clink\":\"https:\\/\\/bahonbd.com\\/ticket\\/customer\\/ticket\\/view\\/SPG-3\"}', '2022-07-05 13:01:27', '2022-07-05 10:10:47', '2022-07-05 13:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) NOT NULL,
  `pagedescription` longtext NOT NULL,
  `pageslug` longtext DEFAULT NULL,
  `viewonpages` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Profile Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(2, 'Ticket Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(3, 'Ticket Create', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(4, 'Ticket Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(5, 'Ticket Delete', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(6, 'Ticket Assign', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(7, 'All Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(8, 'My Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(9, 'Active Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(10, 'Closed Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(11, 'Assigned Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(12, 'My Assigned Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(13, 'Onhold Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(14, 'Overdue Tickets', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(15, 'Project Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(16, 'Project Create', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(17, 'Project Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(18, 'Project Delete', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(19, 'Project Assign', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(20, 'Project Importlist', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(21, 'Knowledge Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(22, 'Article Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(23, 'Article Create', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(24, 'Article View', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(25, 'Article Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(26, 'Article Delete', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(27, 'Category Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(28, 'Category Create', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(29, 'Category Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(30, 'Category Assign To Groups', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(31, 'Managerole Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(32, 'Roles & Permission Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(33, 'Roles & Permission Create', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(34, 'Roles & Permission Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(35, 'Employee Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(36, 'Employee Create', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(37, 'Employee Edit', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(38, 'Employee Delete', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(39, 'Employee Importlist', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(40, 'Landing Page Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(41, 'Banner Access', 'web', '2022-07-03 22:41:13', '2022-07-03 22:41:13'),
(42, 'Feature Box Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(43, 'Feature Box Create', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(44, 'Feature Box Edit', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(45, 'Feature Box Delete', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(46, 'Call To Action Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(47, 'Testimonial Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(48, 'Testimonial Create', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(49, 'Testimonial Edit', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(50, 'Testimonial Delete', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(51, 'FAQs Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(52, 'FAQs Create', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(53, 'FAQs Edit', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(54, 'FAQs Delete', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(55, 'Customers Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(56, 'Customers Create', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(57, 'Customers Edit', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(58, 'Customers Delete', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(59, 'Customers Importlist', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(60, 'Customers Login', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(61, 'Groups Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(62, 'Groups List Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(63, 'Groups Create', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(64, 'Groups Edit', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(65, 'Custom Notifications Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(66, 'Custom Notifications View', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(67, 'Custom Notifications Delete', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(68, 'Custom Notifications Employee', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(69, 'Custom Notifications Customer', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(70, 'Custom Pages Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(71, 'Pages Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(72, 'Pages Edit', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(73, 'Pages View', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(74, '404 Error Page Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(75, 'Under Maintanance Page Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(76, 'App Setting Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(77, 'General Setting Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(78, 'Ticket Setting Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(79, 'SEO Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(80, 'Google Analytics Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(81, 'Custom JS & CSS Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(82, 'Captcha Setting Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(83, 'Social Logins Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(84, 'Email Setting Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(85, 'Custom Chat Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(86, 'Maintenance Mode Access', 'web', '2022-07-03 22:41:14', '2022-07-03 22:41:14'),
(87, 'SecruitySetting Access', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(88, 'Emailtoticket Access', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(89, 'IpBlock Access', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(90, 'IpBlock Add', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(91, 'IpBlock Edit', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(92, 'IpBlock Delete', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(93, 'Announcements Access', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(94, 'Announcements Create', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(95, 'Announcements Edit', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(96, 'Announcements Delete', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(97, 'Email Template Access', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(98, 'Email Template Edit', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(99, 'Reports Access', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15'),
(100, 'Canned Response Access', 'web', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(101, 'Canned Response Create', 'web', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(102, 'Canned Response Edit', 'web', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(103, 'Canned Response Delete', 'web', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(104, 'Envato Access', 'web', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(105, 'Envato API Token Access', 'web', '2022-07-03 22:41:17', '2022-07-03 22:41:17'),
(106, 'Envato License Details Access', 'web', '2022-07-03 22:41:17', '2022-07-03 22:41:17'),
(107, 'App Info Access', 'web', '2022-07-03 22:41:17', '2022-07-03 22:41:17'),
(108, 'App Purchase Code Access', 'web', '2022-07-03 22:41:17', '2022-07-03 22:41:17'),
(109, 'Pages Create', 'web', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(110, 'Pages Delete', 'web', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(111, 'Categories Access', 'web', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(112, 'Subcategory Access', 'web', '2022-07-03 22:41:20', '2022-07-03 22:41:20'),
(113, 'Subcategory Create', 'web', '2022-07-03 22:41:20', '2022-07-03 22:41:20'),
(114, 'Subcategory Edit', 'web', '2022-07-03 22:41:20', '2022-07-03 22:41:20'),
(115, 'Subcategory Delete', 'web', '2022-07-03 22:41:20', '2022-07-03 22:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects_categories`
--

CREATE TABLE `projects_categories` (
  `projects_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', '2022-07-03 22:41:15', '2022-07-03 22:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sendmails`
--

CREATE TABLE `sendmails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mailsubject` varchar(255) NOT NULL,
  `mailtext` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `senduserlists`
--

CREATE TABLE `senduserlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_id` bigint(20) UNSIGNED NOT NULL,
  `touser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tocust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seosettings`
--

CREATE TABLE `seosettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seosettings`
--

INSERT INTO `seosettings` (`id`, `author`, `description`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'My Desk', 'Looking For help?', 'Why Choose US ?', '2022-07-03 22:41:16', '2022-07-03 22:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'date_format', 'd M, Y', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(2, 'datetime_format', 'd M, Y', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(3, 'site_title', 'uhelp', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(4, 'site_description', 'Description for your portal !', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(5, 'envato_purchasecode', 'b83ce2fd-f4dd-43b6-8660-3bb5355106c6', '2022-07-03 22:41:16', '2022-07-03 23:03:06'),
(6, 'site_logo', 'default.png', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(7, 'site_favicon', 'favicon.png', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(8, 'CAPTCHATYPE', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(9, 'GOOGLE_RECAPTCHA_KEY', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(10, 'GOOGLE_RECAPTCHA_SECRET', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(11, 'USER_REOPEN_ISSUE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(12, 'USER_REOPEN_TIME', '1', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(13, 'AUTO_CLOSE_TICKET', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(14, 'AUTO_CLOSE_TICKET_TIME', '1', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(15, 'AUTO_OVERDUE_TICKET', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(16, 'AUTO_OVERDUE_TICKET_TIME', '1', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(17, 'AUTO_RESPONSETIME_TICKET', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(18, 'AUTO_RESPONSETIME_TICKET_TIME', '1', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(19, 'CUSTOMER_TICKETID', 'SP', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(20, 'GUEST_TICKET', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(21, 'PRIORITY_ENABLE', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(22, 'REGISTER_POPUP', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(23, 'REGISTER_DISABLE', 'on', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(24, 'CUSTOMER_CLOSE_TICKET', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(25, 'USER_FILE_UPLOAD_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(26, 'GUEST_FILE_UPLOAD_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(27, 'GOOGLE_ANALYTICS_ENABLE', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(28, 'AUTO_NOTIFICATION_DELETE_ENABLE', 'on', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(29, 'AUTO_NOTIFICATION_DELETE_DAYS', '60', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(30, 'GOOGLE_ANALYTICS', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(31, 'FILE_UPLOAD_MAX', '3', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(32, 'FILE_UPLOAD_TYPES', '.jpg,.jpeg,.png', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(33, 'KNOWLEDGE_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(34, 'FAQ_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(35, 'CONTACT_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(36, 'MAINTENANCE_MODE', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(37, 'MAINTENANCE_MODE_VALUE', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(38, 'PROFILE_USER_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(39, 'PROFILE_AGENT_ENABLE', 'yes', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(40, 'RECAPTCH_ENABLE_REGISTER', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(41, 'RECAPTCH_ENABLE_CONTACT', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(42, 'RECAPTCH_ENABLE_LOGIN', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(43, 'RECAPTCH_ENABLE_GUEST', 'no', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(44, 'COUNTRY_BLOCKTYPE', 'block', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(45, 'COUNTRY_LIST', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(46, 'ADMIN_COUNTRY_BLOCKTYPE', 'block', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(47, 'ADMIN_COUNTRY_LIST', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(48, 'DOS_Enable', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(49, 'IPMAXATTEMPT', '10', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(50, 'IPSECONDS', '30', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(51, 'IPBLOCKTYPE', 'captcha', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(52, 'GOOGLEFONT_DISABLE', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(53, 'FORCE_SSL', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(54, 'DARK_MODE', '0', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(55, 'SPRUKOADMIN_P', 'on', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(56, 'SPRUKOADMIN_C', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(57, 'ticket_default_assigned_user_id', '2', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(58, 'social_media_facebook', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(59, 'social_media_instagram', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(60, 'social_media_twitter', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(61, 'social_media_youtube', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(62, 'social_media_pinterest', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(63, 'social_media_envato', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(64, 'default_lang', 'english', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(65, 'theme_color', 'rgba(51 ,102 ,255, 1)', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(66, 'theme_color_dark', 'rgba(24, 71, 128, 1)', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(67, 'popular_categories', '[]', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(68, 'home_featured_categories', '[]', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(69, 'home_categories', '[]', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(70, 'home_max_articles', '10', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(71, 'mail_driver', 'sendmail', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(72, 'mail_host', 'smtp.mailtrap.io', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(73, 'mail_port', '2525', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(74, 'mail_from_address', 'info@bahonbd.com', '2022-07-03 22:41:16', '2022-07-04 11:52:26'),
(75, 'mail_from_name', 'Glue', '2022-07-03 22:41:16', '2022-07-04 11:52:26'),
(76, 'mail_encryption', 'ssl', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(77, 'MAIL_USERNAME', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(78, 'MAIL_PASSWORD', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(79, 'IMAP_STATUS', 'off', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(80, 'IMAP_HOST', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(81, 'IMAP_PORT', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(82, 'IMAP_PROTOCOL', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(83, 'IMAP_ENCRYPTION', NULL, '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(84, 'IMAP_USERNAME', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(85, 'IMAP_PASSWORD', '', '2022-07-03 22:41:16', '2022-07-03 22:41:16'),
(86, 'ENVATO_ON', 'off', '2022-07-03 22:41:19', '2022-07-04 11:49:57'),
(87, 'ENVATO_EXPIRED_BLOCK', 'off', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(88, 'MAX_FILE_UPLOAD', '2', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(89, 'terms_url', '#', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(90, 'purchasecode_on', 'off', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(91, 'defaultlogin_on', 'off', '2022-07-03 22:41:19', '2022-07-03 22:41:19'),
(92, 'time_format', 'h:i A', '2022-07-03 22:41:19', '2022-07-03 22:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_settings`
--

CREATE TABLE `social_auth_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_secret_id` varchar(255) DEFAULT NULL,
  `facebook_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_secret_id` varchar(255) DEFAULT NULL,
  `google_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `twitter_client_id` varchar(255) DEFAULT NULL,
  `twitter_secret_id` varchar(255) DEFAULT NULL,
  `twitter_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `envato_client_id` varchar(255) DEFAULT NULL,
  `envato_secret_id` varchar(255) DEFAULT NULL,
  `envato_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_auth_settings`
--

INSERT INTO `social_auth_settings` (`id`, `facebook_client_id`, `facebook_secret_id`, `facebook_status`, `google_client_id`, `google_secret_id`, `google_status`, `twitter_client_id`, `twitter_secret_id`, `twitter_status`, `envato_client_id`, `envato_secret_id`, `envato_status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', NULL, NULL, 'disable', '2022-07-03 22:41:12', '2022-07-03 22:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `subcategoryschild`
--

CREATE TABLE `subcategoryschild` (
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategorysd`
--

CREATE TABLE `subcategorysd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoryname` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `designation`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Heather Bell', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat ad velit ab. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore cum accusamus eveniet molestias voluptatum inventore laboriosam labore sit, aspernatur praesentium iste impedit quidem dolor veniam.', 'Developer', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(2, 'David Blake', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore.', 'Designer', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30'),
(3, 'Sophie Carr', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.', 'HTML', NULL, '2022-01-07 00:13:30', '2022-01-07 00:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `ticketnotes`
--

CREATE TABLE `ticketnotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticketnotes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_id` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory` bigint(20) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `purchasecode` varchar(255) DEFAULT NULL,
  `purchasecodesupport` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `replystatus` varchar(255) DEFAULT NULL,
  `toassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `myassignuser_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_reply` datetime DEFAULT NULL,
  `auto_replystatus` datetime DEFAULT NULL,
  `closing_ticket` date DEFAULT NULL,
  `auto_close_ticket` date DEFAULT NULL,
  `overduestatus` varchar(255) DEFAULT NULL,
  `auto_overdue_ticket` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `cust_id`, `user_id`, `ticket_id`, `category_id`, `subcategory`, `subject`, `priority`, `project`, `purchasecode`, `purchasecodesupport`, `message`, `note`, `status`, `replystatus`, `toassignuser_id`, `myassignuser_id`, `last_reply`, `auto_replystatus`, `closing_ticket`, `auto_close_ticket`, `overduestatus`, `auto_overdue_ticket`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'SPG-1', 3, NULL, 'Test', NULL, NULL, NULL, NULL, '<p>test<br></p>', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05', '2022-07-04 12:01:36', '2022-07-04 12:01:36'),
(2, 6, NULL, 'SPG-2', 1, NULL, 'Test', NULL, NULL, NULL, NULL, '<p>Hello&nbsp;</p>', NULL, 'Inprogress', NULL, NULL, NULL, '2022-07-04 18:06:34', '2022-07-04 19:06:34', NULL, '2022-07-05', NULL, '2022-07-05', '2022-07-04 12:05:50', '2022-07-04 12:06:34'),
(3, 7, NULL, 'SPG-3', 1, NULL, 'Test Ticket', NULL, NULL, NULL, NULL, '<p>Testing</p>', NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06', '2022-07-05 10:10:47', '2022-07-05 10:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `offset` varchar(255) NOT NULL,
  `diff_from_gtm` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `empid` varchar(255) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `skills` longtext DEFAULT NULL,
  `languagues` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `darkmode` bigint(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `empid`, `name`, `gender`, `provider_id`, `email`, `phone`, `skills`, `languagues`, `status`, `image`, `verified`, `password`, `country`, `timezone`, `darkmode`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zayednew', 'admin', NULL, 'zayednew admin', NULL, NULL, 'ne.zayed@gmail.com', NULL, NULL, NULL, '1', NULL, 1, '$2y$10$auHuXlLZFD4ojR2a886sBu8iQAMhQ/Bs3HnfbYvXarTuXTeayN8hS', 'Bangladesh', 'Asia/Dhaka', NULL, 'QoJczSuZlrXM0aVR2WHLYxQH1Al57c78iveVA6Fb6CbgqBfF1VcUulIWbkgN', '2022-07-03 23:03:06', '2022-07-05 13:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `usersettings`
--

CREATE TABLE `usersettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_refresh` bigint(20) DEFAULT NULL,
  `star5` bigint(20) NOT NULL DEFAULT 0,
  `star4` bigint(20) NOT NULL DEFAULT 0,
  `star3` bigint(20) NOT NULL DEFAULT 0,
  `star2` bigint(20) NOT NULL DEFAULT 0,
  `star1` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersettings`
--

INSERT INTO `usersettings` (`id`, `users_id`, `ticket_refresh`, `star5`, `star4`, `star3`, `star2`, `star1`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 0, 0, 0, 0, '2022-07-03 23:03:06', '2022-07-03 23:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `verify_otps`
--

CREATE TABLE `verify_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` int(11) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify_otps`
--

INSERT INTO `verify_otps` (`id`, `cust_id`, `otp`, `created_at`, `updated_at`) VALUES
(1, 1, '2650', '2022-07-04 11:58:37', '2022-07-04 11:58:37'),
(2, 1, '4332', '2022-07-04 11:58:37', '2022-07-04 11:58:37'),
(8, 5, '5549', '2022-07-04 12:03:23', '2022-07-04 12:03:23'),
(4, 3, '9245', '2022-07-04 12:00:37', '2022-07-04 12:00:37'),
(5, 3, '1380', '2022-07-04 12:00:37', '2022-07-04 12:00:37'),
(6, 4, '9648', '2022-07-04 12:01:33', '2022-07-04 12:01:33'),
(7, 4, '3860', '2022-07-04 12:01:33', '2022-07-04 12:01:33'),
(9, 5, '9662', '2022-07-04 12:03:23', '2022-07-04 12:03:23'),
(11, 7, '4793', '2022-07-05 10:09:30', '2022-07-05 10:09:30'),
(13, 8, '6687', '2022-09-08 11:32:27', '2022-09-08 11:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cust_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `cust_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 8, 'c54f9b80dcfe40ce70436f8b990014419b47942f', '2022-09-11 01:28:59', '2022-09-11 01:28:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apptitles`
--
ALTER TABLE `apptitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `articles_likes`
--
ALTER TABLE `articles_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_comments`
--
ALTER TABLE `article_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_replies`
--
ALTER TABLE `article_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `callactions`
--
ALTER TABLE `callactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cannedmessages`
--
ALTER TABLE `cannedmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_category_user`
--
ALTER TABLE `category_category_user`
  ADD PRIMARY KEY (`category_id`,`category_user_id`),
  ADD KEY `category_category_user_category_user_id_foreign` (`category_user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`ticket_id`),
  ADD KEY `comments_cust_id_foreign` (`cust_id`);

--
-- Indexes for table `contactforms`
--
ALTER TABLE `contactforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customcssjs`
--
ALTER TABLE `customcssjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `customer_settings`
--
ALTER TABLE `customer_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_settings_custs_id_foreign` (`custs_id`);

--
-- Indexes for table `customizeerrors`
--
ALTER TABLE `customizeerrors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `envatoapitoken`
--
ALTER TABLE `envatoapitoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `envatocategoryassign_category_id_foreign` (`category_id`);

--
-- Indexes for table `faq_list`
--
ALTER TABLE `faq_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_boxes`
--
ALTER TABLE `feature_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footertexts`
--
ALTER TABLE `footertexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_groupname_unique` (`groupname`);

--
-- Indexes for table `groups_categories`
--
ALTER TABLE `groups_categories`
  ADD PRIMARY KEY (`group_id`,`category_id`),
  ADD KEY `groups_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD PRIMARY KEY (`groups_id`,`users_id`),
  ADD KEY `groups_users_users_id_foreign` (`users_id`);

--
-- Indexes for table `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indexes for table `projects_categories`
--
ALTER TABLE `projects_categories`
  ADD PRIMARY KEY (`projects_id`,`category_id`),
  ADD KEY `projects_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sendmails`
--
ALTER TABLE `sendmails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendmails_user_id_foreign` (`user_id`);

--
-- Indexes for table `senduserlists`
--
ALTER TABLE `senduserlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `senduserlists_mail_id_foreign` (`mail_id`),
  ADD KEY `senduserlists_touser_id_foreign` (`touser_id`),
  ADD KEY `senduserlists_tocust_id_foreign` (`tocust_id`);

--
-- Indexes for table `seosettings`
--
ALTER TABLE `seosettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategoryschild`
--
ALTER TABLE `subcategoryschild`
  ADD PRIMARY KEY (`category_id`,`subcategory_id`),
  ADD KEY `subcategoryschild_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `subcategorysd`
--
ALTER TABLE `subcategorysd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketnotes_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticketnotes_user_id_foreign` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`),
  ADD KEY `tickets_cust_id_foreign` (`cust_id`),
  ADD KEY `tickets_category_id_foreign` (`category_id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usersettings`
--
ALTER TABLE `usersettings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersettings_users_id_foreign` (`users_id`);

--
-- Indexes for table `verify_otps`
--
ALTER TABLE `verify_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apptitles`
--
ALTER TABLE `apptitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `articles_likes`
--
ALTER TABLE `articles_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `article_comments`
--
ALTER TABLE `article_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_replies`
--
ALTER TABLE `article_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `callactions`
--
ALTER TABLE `callactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cannedmessages`
--
ALTER TABLE `cannedmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactforms`
--
ALTER TABLE `contactforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `customcssjs`
--
ALTER TABLE `customcssjs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_settings`
--
ALTER TABLE `customer_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customizeerrors`
--
ALTER TABLE `customizeerrors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `envatoapitoken`
--
ALTER TABLE `envatoapitoken`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `envatocategoryassign`
--
ALTER TABLE `envatocategoryassign`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_list`
--
ALTER TABLE `faq_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feature_boxes`
--
ALTER TABLE `feature_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footertexts`
--
ALTER TABLE `footertexts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i_p_l_i_s_t_s`
--
ALTER TABLE `i_p_l_i_s_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sendmails`
--
ALTER TABLE `sendmails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `senduserlists`
--
ALTER TABLE `senduserlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seosettings`
--
ALTER TABLE `seosettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `social_auth_settings`
--
ALTER TABLE `social_auth_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategorysd`
--
ALTER TABLE `subcategorysd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticketnotes`
--
ALTER TABLE `ticketnotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usersettings`
--
ALTER TABLE `usersettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verify_otps`
--
ALTER TABLE `verify_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
