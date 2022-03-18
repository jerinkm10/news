-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 01:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `sreach`
--

CREATE TABLE `sreach` (
  `sreach_id` int(14) NOT NULL,
  `sreach_name` varchar(255) NOT NULL,
  `sreach_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sreach`
--

INSERT INTO `sreach` (`sreach_id`, `sreach_name`, `sreach_status`) VALUES
(3, 'Kerala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sreach_groupe`
--

CREATE TABLE `sreach_groupe` (
  `sreach_g_id` int(14) NOT NULL,
  `sreach_id` int(14) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `urlToImage` varchar(255) NOT NULL,
  `publishedAt` varchar(255) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sreach_groupe`
--

INSERT INTO `sreach_groupe` (`sreach_g_id`, `sreach_id`, `author`, `title`, `description`, `urlToImage`, `publishedAt`, `content`) VALUES
(10, 3, 'PTI', 'PM Modi hails positive role of media in promoting govt programmes', 'Observing that the media has also played a very encouraging role in popularising Yoga, fitness and \'Beti Bachao Beti Padhao\', PM said these are subjects beyond the domain of politics and political parties.', 'https://akm-img-a-in.tosshub.com/businesstoday/images/story/202203/ezgif-sixteen_nine_212.jpg', '2022-03-18T07:52:51Z', 'Prime Minister Narendra Modi on Friday said media can play a positive role in changing the lives of people and hailed the contribution of the fourth estate in promoting government\'s ambitious initiat… [+1262 chars]'),
(11, 3, 'PTI', 'India reports 2,528 new Covid-19 cases, 149 fatalities', 'The death toll due to the disease has climbed to 5,16,281 with 149 daily fatalities being recorded, data updated by the ministry at 8 am showed.', 'https://images.indianexpress.com/2022/03/vaccine-6.jpg', '2022-03-18T07:47:23Z', 'With 2,528 new Covid-19 cases being reported in a day, India’s infection tally now stands at 4,30,04,005, while the count of active cases fell below 30,000 after around 685 days, according to the Uni… [+2133 chars]'),
(12, 3, 'PTI', 'PM hails positive role played by media in promoting programmes like Swachh Bharat Mission', '\"I have seen the positive impact the media can play. The example of the Swachh Bharat Mission is well known. Every media house took up this mission with great sincerity\", the Prime Minister said, inaugurating online the centenary celebrations of leading Malay…', 'https://img.etimg.com/thumb/msid-90305811,width-1070,height-580,imgsize-1097458,overlay-economictimes/photo.jpg', '2022-03-18T07:24:01Z', 'Prime Minister Narendra Modi on Friday said media can play a positive role in changing the lives of people and hailed the contribution of the fourth estate in promoting government\'s ambitious initiat… [+1193 chars]'),
(13, 3, 'Kaunain Sheriff M', 'Explained: What is POSH, the law against sexual harassment in India?', 'The Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act was passed in 2013, defining sexual harassment, laying down the procedures for a complaint and inquiry, and the action to be taken.', 'https://images.indianexpress.com/2022/03/POSH.jpg', '2022-03-18T07:10:57Z', 'Kerala High Court on Thursday (March 17) asked organisations associated with the film industry to take steps to constitute a joint committee to deal with cases of sexual harassment of women, in line … [+6619 chars]'),
(14, 3, 'Business Standard', 'Data story: India logs 2,528 new cases; death toll rises to 516,281', 'India has so far administered 1,809,794,588 vaccine doses. That is 4208.43 per cent of its total caseload, and 129.02 per cent of its population', 'https://bsmedia.business-standard.com/_media/bs/img/article/2022-01/27/full/1643304076-2372.jpg', '2022-03-18T06:37:00Z', 'India on Friday reported a net decrease of 1,618 in active coronavirus cases to take its count to 29,181. India’s share of global active coronavirus cases now stands at 0.05 per cent (one in 2,000). … [+4393 chars]'),
(15, 3, 'andreas.haggstrom@expressen.se (Andreas Häggström)', '20-åriga Arya vägrade fly kriget utan sin hund', 'Det beskrivs som en solskenshistoria mitt bland all tragik efter Rysslands invasion av Ukraina. Arya Aldrin vägrade att fly Ukraina utan sin hund Zaira – något som som visade sig bli en komplicerad historia.', 'https://static.cdn-expressen.se/images/51/e9/51e983fa64f34688b21063c050bdab6a/16x9/original.jpg', '2022-03-18T06:00:00Z', 'Arya Aldrin, 20, har studerat medicin i Ukraina de två senaste åren men kände sig tvungen att fly kriget hem till delstaten Kerala i Indien.\r\nMen det fanns ett problem:\r\nAryas hund Zaira, en Siberian… [+4069 chars]'),
(16, 3, 'Bobins Abraham', 'At 18 Degrees, Shimla Feels The Heat In March, Sees Highest Minimum Temperature Recorded', 'Summer is still a few weeks away in most of northern India, but in most states, the temperature has already started rising, giving an indication of what is to come in the weeks and months ahead.On Thursday, Himachal Pradesh\'s capital Shimla gave a glimpse of …', 'https://im.indiatimes.in/content/2022/Mar/FBImage4-copy-6_62341844d565a.jpg', '2022-03-18T05:10:49Z', 'Summer is still a few weeks away in most of northern India, but in most states, the temperature has already started rising, giving an indication of what is to come in the weeks and months ahead.\r\nOn … [+2656 chars]'),
(17, 3, NULL, 'India Records 2,528 New COVID-19 Cases, 149 Covid Deaths In 24 Hours', 'With 2,528 new COVID-19 cases being reported in a day, India\'s infection tally now stands at 4,30,04,005, while the count of active cases fell below 30,000 after around 685 days, according to the Union Health Ministry today.', 'https://c.ndtvimg.com/2021-05/f3pi3fi_coronavirus-india-generic-pti_625x300_07_May_21.jpg', '2022-03-18T04:51:54Z', 'There has been a sustained fall in the weekly and daily positivity rates too, the ministry said.\r\nNew Delhi: With 2,528 new COVID-19 cases being reported in a day, India\'s infection tally now stands … [+2360 chars]'),
(18, 3, 'ET Bureau', '7 questions: Kohler Brand K&B president Salil Sadanandan shares his life mantra, list of favourites', 'The FC Barcelona fan admits that he is fond of coastal Indian cuisine.', 'https://img.etimg.com/thumb/msid-90303974,width-1070,height-580,imgsize-112280,overlay-etpanache/photo.jpg', '2022-03-18T04:51:40Z', 'Salil Sadanandan joined Kohler in 2012 as managing director for the brand\'s operations in India and Sub Saharan Africa. Over the years, his role in the company grew, and now he is the president for K… [+1503 chars]'),
(19, 3, 'Entertainment Desk', 'Ahead of 26th International Film Festival Of Kerala, here’s what to expect', 'At the International Film Festival of Kerala, 173 movies will be screened across 15 theaters during the festival, which spans over 8 days.', 'https://images.indianexpress.com/2022/03/iffk2022.jpeg', '2022-03-18T04:47:32Z', 'As the Covid-19 wave recedes in Kerala, International Film Festival of Kerala (IFFK) will return to Thiruvananthapuram in its full glory from Friday. Chief Minister Pinarayi Vijayan will inaugurate t… [+4285 chars]');

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
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jerin km', 'test@gmail.com', '2022-03-18 10:26:06', 'Test123', 1, NULL, NULL, NULL);

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
-- Indexes for table `sreach`
--
ALTER TABLE `sreach`
  ADD PRIMARY KEY (`sreach_id`);

--
-- Indexes for table `sreach_groupe`
--
ALTER TABLE `sreach_groupe`
  ADD PRIMARY KEY (`sreach_g_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sreach`
--
ALTER TABLE `sreach`
  MODIFY `sreach_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sreach_groupe`
--
ALTER TABLE `sreach_groupe`
  MODIFY `sreach_g_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
