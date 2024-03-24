


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nanny`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_phone`) VALUES
(1, 'nannies admin', 'admin1@nanny.com', '$2y$10$hZ3XNPRrsq/gRflqBl/UeORONeF5nX2eDkkpaD.xIDr7bdqP0k70K', '966578737334'),
(4, 'admin 2', 'admin2@nanny.com', '$2y$10$Rw4PSPx.TEvfGzKdrsInmOCzs7M77dgo8iSL5t3OC3kIsKut8Aj9C', '966578737373');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_iqama_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_password`, `customer_national_id`, `customer_iqama_number`, `customer_nationality`) VALUES
(1, 'haya', 'haya@gmail.com', '966543234542', '$2y$10$q2Y3sXhJCMBy/4BFBMPTxeLIGSA/yV31zZVL5vdDbt2S2pG.ckTfu', '13344455', '33434543', 'egyptian'),
(2, 'salama', 'salma@gmail.com', '966345434566', '$2y$10$8IGGsi53s1Gbkj0gn1NVFuPy2A1r.YiFs.Z.56xmAPcVfK.ivlSya', '2343454676', '43545645', 'saudi');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` bigint UNSIGNED NOT NULL,
  `feed_comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_rate` int NOT NULL DEFAULT '1',
  `feed_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` bigint UNSIGNED NOT NULL,
  `nanny_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat`
--

CREATE TABLE `live_chat` (
  `live_chat_id` int NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL,
  `nanny_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nanny`
--

CREATE TABLE `nanny` (
  `nanny_id` bigint UNSIGNED NOT NULL,
  `nanny_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanny_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_iqama_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanny_cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nanny_martial_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nanny_finance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nanny`
--

INSERT INTO `nanny` (`nanny_id`, `nanny_name`, `nanny_email`, `nanny_address`, `nanny_phone`, `nanny_password`, `nanny_national_id`, `nanny_iqama_number`, `nanny_nationality`, `nanny_birth_date`, `nanny_image`, `nanny_cv`, `nanny_martial_status`, `nanny_register_date`, `nanny_finance`, `admin_id`) VALUES
(1, 'salwa', 'salwa@nanny.com', 'jubil', '966543234544', '$2y$10$hZ3XNPRrsq/gRflqBl/UeORONeF5nX2eDkkpaD.xIDr7bdqP0k70K', '1223434', '2434324', 'sudanese', '2023-11-07', '/uploads/dummy-slug-2024-03-10-65ed77d791d0f.jpg', '/uploads/dummy-slug-2024-03-10-65ed77d792511.pdf', 'single', '2024-03-18 22:16:18', '1', 4),
(2, 'sadswqe', 'fsdf@dasd.com', 'jubil', '966543234533', '$2y$10$hZ3XNPRrsq/gRflqBl/UeORONeF5nX2eDkkpaD.xIDr7bdqP0k70K', '565645654', '434534545345', 'kuwaiti', '2024-03-05', '/uploads/dummy-slug-2024-03-10-65ed77d791d0f.jpg', '/uploads/dummy-slug-2024-03-10-65ee35b9e4011.pdf', 'married', '2024-03-18 22:16:21', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `regulations`
--

CREATE TABLE `regulations` (
  `regulations_id` bigint UNSIGNED NOT NULL,
  `rule_terms_nanny` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rule_terms_customer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regulations`
--

INSERT INTO `regulations` (`regulations_id`, `rule_terms_nanny`, `rule_terms_customer`, `admin_id`) VALUES
(1, '<p>a</p>', '<p>bc</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `working_hours`
--

CREATE TABLE `working_hours` (
  `wh_id` bigint UNSIGNED NOT NULL,
  `wh_date` date NOT NULL,
  `wh_time_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wh_time_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nanny_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `working_hours`
--

INSERT INTO `working_hours` (`wh_id`, `wh_date`, `wh_time_from`, `wh_time_to`, `nanny_id`) VALUES
(1, '2024-03-11', '11:00', '13:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_admin_email_unique` (`admin_email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_customer_email_unique` (`customer_email`),
  ADD UNIQUE KEY `customer_customer_phone_unique` (`customer_phone`),
  ADD UNIQUE KEY `customer_customer_national_id_unique` (`customer_national_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`),
  ADD KEY `feedback_customer_id_foreign` (`customer_id`),
  ADD KEY `feedback_nanny_id_foreign` (`nanny_id`);

--
-- Indexes for table `live_chat`
--
ALTER TABLE `live_chat`
  ADD PRIMARY KEY (`live_chat_id`),
  ADD KEY `nanny_id_FK1` (`nanny_id`),
  ADD KEY `customer_id_FK2` (`customer_id`);

--
-- Indexes for table `nanny`
--
ALTER TABLE `nanny`
  ADD PRIMARY KEY (`nanny_id`),
  ADD UNIQUE KEY `nanny_nanny_email_unique` (`nanny_email`),
  ADD UNIQUE KEY `nanny_nanny_phone_unique` (`nanny_phone`),
  ADD UNIQUE KEY `nanny_nanny_national_id_unique` (`nanny_national_id`),
  ADD KEY `nanny_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `regulations`
--
ALTER TABLE `regulations`
  ADD PRIMARY KEY (`regulations_id`),
  ADD KEY `settings_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD PRIMARY KEY (`wh_id`),
  ADD KEY `working_hours_nanny_id_foreign` (`nanny_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `live_chat`
--
ALTER TABLE `live_chat`
  MODIFY `live_chat_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nanny`
--
ALTER TABLE `nanny`
  MODIFY `nanny_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `regulations`
--
ALTER TABLE `regulations`
  MODIFY `regulations_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `working_hours`
--
ALTER TABLE `working_hours`
  MODIFY `wh_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--

ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_nanny_id_foreign` FOREIGN KEY (`nanny_id`) REFERENCES `nanny` (`nanny_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_chat`
--
ALTER TABLE `live_chat`
  ADD CONSTRAINT `customer_id_FK2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `nanny_id_FK1` FOREIGN KEY (`nanny_id`) REFERENCES `nanny` (`nanny_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `nanny`
--
ALTER TABLE `nanny`
  ADD CONSTRAINT `nanny_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regulations`
--
ALTER TABLE `regulations`
  ADD CONSTRAINT `settings_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD CONSTRAINT `working_hours_nanny_id_foreign` FOREIGN KEY (`nanny_id`) REFERENCES `nanny` (`nanny_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
