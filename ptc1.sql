-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 12:20 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptc1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add account', 6, 'add_account'),
(22, 'Can change account', 6, 'change_account'),
(23, 'Can delete account', 6, 'delete_account'),
(24, 'Can view account', 6, 'view_account'),
(25, 'Can add lnm online', 7, 'add_lnmonline'),
(26, 'Can change lnm online', 7, 'change_lnmonline'),
(27, 'Can delete lnm online', 7, 'delete_lnmonline'),
(28, 'Can view lnm online', 7, 'view_lnmonline'),
(29, 'Can add transaction', 8, 'add_transaction'),
(30, 'Can change transaction', 8, 'change_transaction'),
(31, 'Can delete transaction', 8, 'delete_transaction'),
(32, 'Can view transaction', 8, 'view_transaction'),
(33, 'Can add access token', 9, 'add_accesstoken'),
(34, 'Can change access token', 9, 'change_accesstoken'),
(35, 'Can delete access token', 9, 'delete_accesstoken'),
(36, 'Can view access token', 9, 'view_accesstoken'),
(37, 'Can add wallet', 10, 'add_wallet'),
(38, 'Can change wallet', 10, 'change_wallet'),
(39, 'Can delete wallet', 10, 'delete_wallet'),
(40, 'Can view wallet', 10, 'view_wallet'),
(41, 'Can add otps', 11, 'add_otps'),
(42, 'Can change otps', 11, 'change_otps'),
(43, 'Can delete otps', 11, 'delete_otps'),
(44, 'Can view otps', 11, 'view_otps'),
(45, 'Can add images', 12, 'add_images'),
(46, 'Can change images', 12, 'change_images'),
(47, 'Can delete images', 12, 'delete_images'),
(48, 'Can view images', 12, 'view_images'),
(49, 'Can add with drawals', 13, 'add_withdrawals'),
(50, 'Can change with drawals', 13, 'change_withdrawals'),
(51, 'Can delete with drawals', 13, 'delete_withdrawals'),
(52, 'Can view with drawals', 13, 'view_withdrawals');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(9, 'django_daraja', 'accesstoken'),
(12, 'images', 'images'),
(11, 'otp', 'otps'),
(5, 'sessions', 'session'),
(7, 'transaction', 'lnmonline'),
(8, 'transaction', 'transaction'),
(6, 'users', 'account'),
(10, 'wallet', 'wallet'),
(13, 'wallet', 'withdrawals');

-- --------------------------------------------------------

--
-- Table structure for table `django_daraja_accesstoken`
--

CREATE TABLE `django_daraja_accesstoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(30) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'otp', '0001_initial', '2022-05-27 13:50:30.517591'),
(2, 'contenttypes', '0001_initial', '2022-05-27 13:50:30.655039'),
(3, 'contenttypes', '0002_remove_content_type_name', '2022-05-27 13:50:30.788339'),
(4, 'auth', '0001_initial', '2022-05-27 13:50:31.553984'),
(5, 'auth', '0002_alter_permission_name_max_length', '2022-05-27 13:50:31.712991'),
(6, 'auth', '0003_alter_user_email_max_length', '2022-05-27 13:50:31.727993'),
(7, 'auth', '0004_alter_user_username_opts', '2022-05-27 13:50:31.744016'),
(8, 'auth', '0005_alter_user_last_login_null', '2022-05-27 13:50:31.758991'),
(9, 'auth', '0006_require_contenttypes_0002', '2022-05-27 13:50:31.765994'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2022-05-27 13:50:31.777997'),
(11, 'auth', '0008_alter_user_username_max_length', '2022-05-27 13:50:31.790986'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2022-05-27 13:50:31.804984'),
(13, 'auth', '0010_alter_group_name_max_length', '2022-05-27 13:50:31.840988'),
(14, 'auth', '0011_update_proxy_permissions', '2022-05-27 13:50:31.857992'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2022-05-27 13:50:31.872988'),
(16, 'users', '0001_initial', '2022-05-27 13:50:32.878556'),
(17, 'admin', '0001_initial', '2022-05-27 13:50:33.216426'),
(18, 'admin', '0002_logentry_remove_auto_add', '2022-05-27 13:50:33.233566'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-27 13:50:33.251658'),
(20, 'django_daraja', '0001_initial', '2022-05-27 13:50:33.331686'),
(21, 'django_daraja', '0002_auto_20181108_1219', '2022-05-27 13:50:33.450683'),
(22, 'django_daraja', '0003_alter_accesstoken_id', '2022-05-27 13:50:33.630960'),
(23, 'images', '0001_initial', '2022-05-27 13:50:33.689798'),
(24, 'sessions', '0001_initial', '2022-05-27 13:50:33.805197'),
(25, 'transaction', '0001_initial', '2022-05-27 13:50:33.943779'),
(26, 'transaction', '0002_auto_20220527_0434', '2022-05-27 13:50:34.739041'),
(27, 'users', '0002_auto_20220522_0944', '2022-05-27 13:50:37.394041'),
(28, 'users', '0003_alter_account_id', '2022-05-27 13:50:39.105046'),
(29, 'users', '0004_auto_20220522_2350', '2022-05-27 13:50:39.350043'),
(30, 'users', '0005_auto_20220523_0112', '2022-05-27 13:50:39.497039'),
(31, 'users', '0006_account_email', '2022-05-27 13:50:39.539045'),
(32, 'users', '0007_account_parent', '2022-05-27 13:50:39.669047'),
(33, 'users', '0008_account_avatar', '2022-05-27 13:50:39.727040'),
(34, 'users', '0009_alter_account_is_parent', '2022-05-27 13:50:39.747044'),
(35, 'users', '0010_alter_account_is_parent', '2022-05-27 13:50:39.767041'),
(36, 'wallet', '0001_initial', '2022-05-27 13:50:40.048100'),
(37, 'wallet', '0002_withdrawals', '2022-06-19 08:59:15.498145'),
(38, 'wallet', '0003_alter_withdrawals_status', '2022-06-19 09:07:05.525335');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1fwwtxtjvnd8gw097pivo5t8uah7xey6', 'e30:1o2qTf:25IMUOzINGTT4XiRM0AYqS9g0noOf9dlk_Iv0qoP_0U', '2022-07-03 08:40:15.639192'),
('2t2yv802lzpln6c1bvniyrmt0eho29wt', 'e30:1o1P9z:HZdsgYLrzjE8PH_d_hdg3N4XTg-b4e9hNwf5buluGFI', '2022-06-29 09:17:59.286687'),
('8a36ymcw5kt4akvnr8pv7aci3aofsaie', 'e30:1nuaNJ:Z6QSk0mrRUJUICrGhp25zlyrtfD_vPDoRRrKz_qeLYU', '2022-06-10 13:51:33.213430'),
('9cmpl94qomkkh28i850f2skjnvi0a88z', 'e30:1nuaQI:8ESyrI2ublO7kHROySDoM5Fh7sLmAQ9tbBweiGXCveI', '2022-06-10 13:54:38.857417'),
('b1lv9rb8j31hivfspk222c6lh9vrwdht', '.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMJDv9bhHpkdsO0h3brXPqbV3myHeFH3Twa0_5eTncv4OKo35roCKitVOCmD0JBxCdcNn7ggK1NjIaVZQD5ZXTIKkUA6itMxaFnKiw9wfZKTdT:1nuaRd:0DfskVrTNVYJdjP1JihvWCEZ3GoWMT4ABZLd_BWJbRE', '2022-06-10 13:56:01.816005'),
('bkmgwwdqlugtys09jili10b9b9836z3e', 'e30:1o2qR7:8Lxlcv577QWVqqMqPEW7tOIt-2kUWjj1mFeSwb0VBJk', '2022-07-03 08:37:37.917853'),
('bp14tli1cb2irw3eoir78kdba8x1bs8l', 'e30:1o2nqi:xMEZETsE_dr5MBkJdhxHBG_f_AnD2QHh4EwnRspOouc', '2022-07-03 05:51:52.908581'),
('d2ec8ts9h4w8lj8us061wb2gp6uzqmx0', 'e30:1o2qSs:zFouS97Z4ehgpejTB0ntV4L35XnCotRX2PvLJ_vrPyc', '2022-07-03 08:39:26.479827'),
('dc1fk420wq4xc1sdcmi3t7b2pef7twzh', 'e30:1o2qVs:AQeo7GWjDYaf1TymjfGX0DOAbNDlFvY--AtpjBOi5AY', '2022-07-03 08:42:32.600096'),
('gb132x0khgptph17zui90sioq3cywzmd', '.eJxVjMEOwiAQRP-FsyEVFigevfsNZGEXqRpISnsy_rtt0oPOcd6beYuA61LC2nkOE4mLAHH67SKmJ9cd0APrvcnU6jJPUe6KPGiXt0b8uh7u30HBXrZ1NnAetNHkOI7sRo_sFSiF3hrOKRo9gLXKWc3ZgSOr2OUcCbdYBBCfL9amOBQ:1o1RMX:scVgSkbMcbidSQ_Td_4kMumZqXWBby6hSKLfdi7yKXg', '2022-06-29 11:39:05.207465'),
('hekfig69htg05kack4z81t8oc32zmzi5', 'e30:1nuaQ7:MXq5bDcvhqCnFlK7jQJ6PrCXNr6-M-1DuMZFaT0BEVg', '2022-06-10 13:54:27.480563'),
('htqwtpigtvvdanzulqfff5ghcua21lnj', 'e30:1o1PAh:bHx5G2o8agGLo3vn5ryqXGhOexRLYugGMpMYz4V47hc', '2022-06-29 09:18:43.267538'),
('jijm9tm8z277pf9cxktlu1d4rbve4nmr', 'e30:1o2qSI:ow23j7XQ5pbgh0iE3DXDgymVkOsAdOstrUv95gZbjvQ', '2022-07-03 08:38:50.570184'),
('lmqm5i2nljq8qwfuwgoqt4edrqgc9en2', '.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZBhAqgaS0q6M_65NutDtPefcFwu4rTVsIy9hTuzMJDv9bhHpkdsO0h3brXPqbV3myHeFH3Twa0_5eTncv4OKo35roCKitVOCmD0JBxCdcNn7ggK1NjIaVZQD5ZXTIKkUA6itMxaFnKiw9wfZKTdT:1nuaxF:kqFKF155jqMJgyNf-rV_KBretgO4KfTNtDixFzOeaT4', '2022-06-10 14:28:41.030408'),
('r8ros0f4bhfd2ipr50bn0z795ezo1ofc', 'e30:1o2qRR:jAvf0McWTdytk6Yc_tW4Aj_mMSq5yjwjBcDL0QrUjUM', '2022-07-03 08:37:57.554799'),
('rylz1nlvnpq0d8lla4o3d5hu4fs9pw6u', 'e30:1o2qRa:-6NEZ4cbF4m2-3rU1OKbD-knXvRBztbW9TgVLHZdSeU', '2022-07-03 08:38:06.324312'),
('tcuebqmh9nhb9rwnpt83navdhlgdupaf', 'e30:1o2nfj:NQTM9SoMRo1uhCO2HnadCdwO_IsSgVekuRgXY3xxdxs', '2022-07-03 05:40:31.375157'),
('u1dd15fc000t13xg692720n8cqpw0xjh', '.eJxVjDsOwjAQBe_iGlm2499S0nMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZmwE6_G2F85LaDdMd26zz2ti4z8V3hBx382lN-Xg7376DiqN_aE-VSAIXKk0IEZwpBBJIRtPYJtMlWqORl1LaIQg4sGeumqCFNWiJ7fwAFGTgg:1o2qbw:uUtVrDtSpUWJVfwNI1nJeIV5RjUo_YFqqmxkaOEcwcc', '2022-07-03 08:48:48.787156'),
('xyb6xrfep4g3xexh5nab9h1oacuvhulf', 'e30:1o2qZS:jKtw2vUUyAIMSjOO2OiSpfTexgM1bris9EeJ7hInHoM', '2022-07-03 08:46:14.508388'),
('zkj731meku4r982x22n5233yvpqbv10g', '.eJxVjDsOwyAQBe9CHSF-CyJl-pwBsbAEJxFIxq6s3D225CJp38y8jYW4LjWsg-YwZXZlwC6_G8b0onaA_Izt0XnqbZkn5IfCTzr4vWd6307376DGUfdaoFBRA2gvQQORTwosGJIgitekUpG5WNopGedSdsWARBupWIcZHft8AclPN-A:1o1PEz:2fE3-2JwHJdlAGZT53v7J7fmneoHqphCbOXVjoK8hB0', '2022-06-29 09:23:09.759375');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL,
  `is_admin_user` tinyint(1) NOT NULL,
  `is_child` tinyint(1) NOT NULL,
  `otp_id` char(32) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_super_user` tinyint(1) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `second_name` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_type` smallint(5) UNSIGNED NOT NULL CHECK (`user_type` >= 0),
  `email` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `is_staff`, `phone_number`, `country`, `is_parent`, `is_admin_user`, `is_child`, `otp_id`, `created_at`, `is_super_user`, `latitude`, `longitude`, `second_name`, `updated_at`, `user_name`, `user_type`, `email`, `parent_id`, `avatar`) VALUES
(1, 'pbkdf2_sha256$260000$KTauSBYXP4LN3tqH6W4INd$MessZuXVHcv8DFl5CBVEbEEYYbLuYq3uc1kLh2IQKOc=', '2022-05-27 14:28:41.011403', 0, NULL, 1, '+254717713943', 'Kenya', 1, 0, 0, NULL, '2022-05-27 13:52:02.846138', 0, NULL, NULL, NULL, '2022-05-27 13:52:02.846138', 'Felix Onjomba', 2, '+254717713943@gmail.com', NULL, 'profile.jpg'),
(2, 'pbkdf2_sha256$260000$KqNZE6dVmVrUxhmL90UcDg$dgG74vtCPYY9fjILjUu401W/aI5/pjI2yPitfIZG1+4=', '2022-05-27 13:55:14.284067', 0, NULL, 1, '+254711111111', 'Kenya', 0, 0, 1, NULL, '2022-05-27 13:53:24.757235', 0, NULL, NULL, NULL, '2022-05-27 13:53:24.757235', '+254711111111', 2, NULL, 1, 'profile.jpg'),
(3, 'pbkdf2_sha256$260000$2doJtVz2xn1yuVo5sxZBlY$qDs8kZ4x+MTleThojYM1P0KnbaW477D1UKY3A5vc30Y=', '2022-06-15 09:17:59.293051', 0, NULL, 1, '+254717713941', 'Kenya', 1, 0, 0, NULL, '2022-06-15 09:17:59.073614', 0, NULL, NULL, NULL, '2022-06-15 09:17:59.073614', 'Susan', 2, '+254717713941@gmail.com', NULL, 'profile.jpg'),
(4, 'pbkdf2_sha256$260000$d16Ceac8Fjw7LuGLqXs6by$tGCK9mmRUqXNVTRknt3oFPg/gH394YT9zRUXillv9a4=', '2022-06-15 11:39:05.152470', 0, NULL, 1, '+254717713947', 'Kenya', 1, 0, 0, NULL, '2022-06-15 09:18:43.035806', 0, NULL, NULL, NULL, '2022-06-15 09:18:43.035806', 'admin', 2, '+254717713947@gmail.com', NULL, 'profile.jpg'),
(5, 'pbkdf2_sha256$260000$yBp4fkq5dEYJpNIBqnaxHM$Htwv8aEjxp0xIPSjQQBMLD7ZGJHI2WdF1KnGx4LqmHk=', '2022-06-15 09:23:09.748417', 0, NULL, 1, '+254717713948', 'Uganda', 0, 0, 1, NULL, '2022-06-15 09:21:53.175435', 0, NULL, NULL, NULL, '2022-06-15 09:21:53.175435', 'Test', 2, NULL, 4, 'profile.jpg'),
(6, 'pbkdf2_sha256$260000$vFHMT92wftUVvyRS5TYjaj$5NyjlkxcQ5uUosTeWY7h8hRbhfFMmhonvxBfLVhoV5U=', '2022-06-19 08:44:58.696890', 0, NULL, 1, '+254710101010', 'Kenya', 1, 0, 0, NULL, '2022-06-19 05:39:56.245258', 0, NULL, NULL, NULL, '2022-06-19 05:39:56.245258', '1010', 2, '+254710101010@gmail.com', NULL, 'profile.jpg'),
(7, 'pbkdf2_sha256$260000$KaNW0o0N1BKfEYdfmc7gdn$gjFQdFsK8gWzMraHxyvbQXcAA3MAtyrSdZ8VjLNsANE=', NULL, 0, NULL, 1, '0711111111', 'Kenya', 0, 0, 1, NULL, '2022-06-19 08:36:21.229109', 0, NULL, NULL, NULL, '2022-06-19 08:36:21.229109', '', 2, NULL, 6, 'profile.jpg'),
(8, 'pbkdf2_sha256$260000$JoPx8XKYKZkQoogxX4RRqV$7nSrsdeCpseqCHoQk5wvADZGzSq3F18xG4OLI6QwMBw=', NULL, 0, NULL, 1, '+254717713940', 'Kenya', 0, 0, 1, NULL, '2022-06-19 08:41:22.024216', 0, NULL, NULL, NULL, '2022-06-19 08:41:22.024216', 'Felix', 2, NULL, 6, 'profile.jpg'),
(9, 'pbkdf2_sha256$260000$0rihLVeQy1CcqqfTJF0Has$nG99dzkegG7uwwtef4054XsqPkLPA6kDUAcYRoQkUvY=', '2022-06-19 08:48:48.774351', 0, NULL, 1, '+254717713944', 'Kenya', 0, 0, 1, NULL, '2022-06-19 08:45:25.321271', 0, NULL, NULL, NULL, '2022-06-19 08:45:25.321271', 'Testing', 2, NULL, 6, 'profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_groups`
--

CREATE TABLE `tbl_accounts_groups` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_user_permissions`
--

CREATE TABLE `tbl_accounts_user_permissions` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` char(32) NOT NULL,
  `image` varchar(100) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` char(32) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `expire_at` datetime(6) DEFAULT NULL,
  `is_otp_authenticated` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `otp`, `phone_number`, `expire_at`, `is_otp_authenticated`, `created_at`, `updated_at`) VALUES
('bdcd542eb4a24726b8171ef816305834', '9882', '+254710101010', '2022-06-19 05:44:57.787908', 0, '2022-06-19 05:39:57.788987', '2022-06-19 05:39:57.788987'),
('e088962e2dd64268a382323961885e4e', '4416', '+254717713943', '2022-05-27 13:57:04.414739', 1, '2022-05-27 13:52:04.414739', '2022-05-27 13:52:04.414739');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_tbl`
--

CREATE TABLE `transactions_tbl` (
  `id` bigint(20) NOT NULL,
  `ammount` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `is_sending` tinyint(1) NOT NULL,
  `is_withdrawal` tinyint(1) NOT NULL,
  `reciever_id` bigint(20) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_lnmonline`
--

CREATE TABLE `transaction_lnmonline` (
  `id` bigint(20) NOT NULL,
  `CheckoutRequestID` varchar(255) DEFAULT NULL,
  `MerchantRequestID` varchar(255) DEFAULT NULL,
  `ResultCode` varchar(255) DEFAULT NULL,
  `ResultDesc` varchar(255) DEFAULT NULL,
  `MpesaReceiptNumber` varchar(255) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Balance` varchar(255) DEFAULT NULL,
  `TransactionDate` datetime(6) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wallets_tbl`
--

CREATE TABLE `wallets_tbl` (
  `id` bigint(20) NOT NULL,
  `withrawable_balance` int(11) NOT NULL,
  `account_balance` int(11) NOT NULL,
  `ammount_to_withdraw` int(11) NOT NULL,
  `widrawal_procedure` smallint(5) UNSIGNED DEFAULT NULL CHECK (`widrawal_procedure` >= 0),
  `withdrawable_settime` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `account_phone_number` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallets_tbl`
--

INSERT INTO `wallets_tbl` (`id`, `withrawable_balance`, `account_balance`, `ammount_to_withdraw`, `widrawal_procedure`, `withdrawable_settime`, `updated_at`, `account_phone_number`, `user_id`) VALUES
(1, 0, 8801, 0, 4, NULL, '2022-05-27 13:52:02.852159', NULL, 1),
(2, 0, 1196, 0, 4, NULL, '2022-05-27 13:53:24.763108', NULL, 2),
(3, 0, 0, 0, 4, NULL, '2022-06-15 09:17:59.081675', NULL, 3),
(4, 0, 2831, 0, 4, NULL, '2022-06-15 09:18:43.044095', NULL, 4),
(5, 0, 6168, 100, 2, NULL, '2022-06-15 09:21:53.181256', NULL, 5),
(6, 0, 0, 0, 4, NULL, '2022-06-19 05:39:56.269286', NULL, 6),
(7, 0, 0, 0, 4, NULL, '2022-06-19 08:36:21.249109', NULL, 7),
(8, 0, 0, 0, 4, NULL, '2022-06-19 08:41:22.030210', NULL, 8),
(9, 0, 0, 0, 4, NULL, '2022-06-19 08:45:25.330272', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_withdrawals`
--

CREATE TABLE `wallet_withdrawals` (
  `id` bigint(20) NOT NULL,
  `ammount` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet_withdrawals`
--

INSERT INTO `wallet_withdrawals` (`id`, `ammount`, `status`, `reason`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 233, '1', 'qwer', '2022-06-19 09:04:01.175484', '2022-06-19 09:04:01.175484', 9),
(2, 233, 'Failed', 'qwer', '2022-06-19 09:11:29.012122', '2022-06-19 09:11:29.012122', 9),
(3, 233, 'Failed', 'qwer', '2022-06-19 09:13:20.341729', '2022-06-19 09:13:20.341729', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_daraja_accesstoken`
--
ALTER TABLE `django_daraja_accesstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone_number`),
  ADD KEY `users_account_otp_id_4e998ca6_fk_tbl_otp_id` (`otp_id`),
  ADD KEY `tbl_accounts_parent_id_db1cdfb9_fk_tbl_accounts_id` (`parent_id`);

--
-- Indexes for table `tbl_accounts_groups`
--
ALTER TABLE `tbl_accounts_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_account_groups_account_id_group_id_3f3306fc_uniq` (`account_id`,`group_id`),
  ADD KEY `users_account_groups_group_id_4595c4cc_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `tbl_accounts_user_permissions`
--
ALTER TABLE `tbl_accounts_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_account_user_permi_account_id_permission_id_6b1bed33_uniq` (`account_id`,`permission_id`),
  ADD KEY `users_account_user_p_permission_id_b8b3cc4a_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_tbl`
--
ALTER TABLE `transactions_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tbl_reciever_id_478f54fe_fk` (`reciever_id`),
  ADD KEY `transactions_tbl_sender_id_ab8ddfdd_fk` (`sender_id`),
  ADD KEY `transactions_tbl_user_id_9de9042e_fk` (`user_id`);

--
-- Indexes for table `transaction_lnmonline`
--
ALTER TABLE `transaction_lnmonline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets_tbl`
--
ALTER TABLE `wallets_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_phone_number` (`account_phone_number`),
  ADD KEY `wallets_tbl_user_id_41c4bedf_fk_tbl_accounts_id` (`user_id`);

--
-- Indexes for table `wallet_withdrawals`
--
ALTER TABLE `wallet_withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_withdrawals_user_id_f20dbfba_fk_tbl_accounts_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_daraja_accesstoken`
--
ALTER TABLE `django_daraja_accesstoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_accounts_groups`
--
ALTER TABLE `tbl_accounts_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_accounts_user_permissions`
--
ALTER TABLE `tbl_accounts_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions_tbl`
--
ALTER TABLE `transactions_tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_lnmonline`
--
ALTER TABLE `transaction_lnmonline`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets_tbl`
--
ALTER TABLE `wallets_tbl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wallet_withdrawals`
--
ALTER TABLE `wallet_withdrawals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_accounts` (`id`);

--
-- Constraints for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD CONSTRAINT `tbl_accounts_parent_id_db1cdfb9_fk_tbl_accounts_id` FOREIGN KEY (`parent_id`) REFERENCES `tbl_accounts` (`id`),
  ADD CONSTRAINT `users_account_otp_id_4e998ca6_fk_tbl_otp_id` FOREIGN KEY (`otp_id`) REFERENCES `tbl_otp` (`id`);

--
-- Constraints for table `tbl_accounts_groups`
--
ALTER TABLE `tbl_accounts_groups`
  ADD CONSTRAINT `users_account_groups_group_id_4595c4cc_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `tbl_accounts_user_permissions`
--
ALTER TABLE `tbl_accounts_user_permissions`
  ADD CONSTRAINT `users_account_user_p_permission_id_b8b3cc4a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `transactions_tbl`
--
ALTER TABLE `transactions_tbl`
  ADD CONSTRAINT `transactions_tbl_reciever_id_478f54fe_fk` FOREIGN KEY (`reciever_id`) REFERENCES `tbl_accounts` (`id`),
  ADD CONSTRAINT `transactions_tbl_sender_id_ab8ddfdd_fk` FOREIGN KEY (`sender_id`) REFERENCES `tbl_accounts` (`id`),
  ADD CONSTRAINT `transactions_tbl_user_id_9de9042e_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_accounts` (`id`);

--
-- Constraints for table `wallets_tbl`
--
ALTER TABLE `wallets_tbl`
  ADD CONSTRAINT `wallets_tbl_user_id_41c4bedf_fk_tbl_accounts_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_accounts` (`id`);

--
-- Constraints for table `wallet_withdrawals`
--
ALTER TABLE `wallet_withdrawals`
  ADD CONSTRAINT `wallet_withdrawals_user_id_f20dbfba_fk_tbl_accounts_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
