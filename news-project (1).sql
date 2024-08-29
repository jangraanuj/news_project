-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 04:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(34, 'sports', 3),
(35, 'Entertainment', 2),
(36, 'politics', 2),
(33, 'Health', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(53, 'Animals health', '                                                                              Animal health is the overall well-being of animals, both domestic and wild, encompassing aspects such as physical health, mental well-being, and ability to function in their natural environment. It involves preventive care, diagnosis, treatment, and management of diseases and injuries that animals may suffer from. Maintaining animal health is crucial for ensuring animal welfare, preventing the spread of diseases, and promoting sustainable ecosystems. It requires proper nutrition, adequate shelter, regular veterinary care, and attention to behavioral and social needs. Monitoring and promoting animal health is essential for the overall health of our planet and its inhabitants.                                                                          ', '33', '19, Mar 2024 ', 41, 'OIP.jpg'),
(43, 'Nourish Your Body', '                                                Delight in the vibrant colors and flavors of a nutritious meal, where fresh vegetables, lean proteins, and whole grains come together to create a symphony for your taste buds. Experience the joy of nourishing your body from the inside out, as each bite fuels you with vitality and energy. ', '33', '18, Mar 2024 ', 28, 'thumb-13.jpg'),
(45, 'Car Race  Accident', '                                                                Experience the heart-pounding excitement of high-speed car racing as engines roar and tires screech on the track. Feel the adrenaline surge through your veins as you navigate hairpin turns and straightaways, pushing the limits of speed and skill.                                                  ', '34', '18, Mar 2024 ', 28, 'th (5).jpg'),
(46, 'Kasmir Valley', '                                                                                                 Immerse yourself in the tranquil embrace of natures beauty as you wander through lush forests, where sunlight dances among the leaves and birdsong fills the air. Feel the gentle caress of a breeze as it whispers through fields of wildflowers, carrying with it the sweet scent of earth and blossoms.                                                                                              ', '36', '18, Mar 2024 ', 28, 'The-Climate-of-Kashmir-Valley.jpg'),
(49, 'gammers room', '                                                                                             Embark on a journey to peak performance with a fitness regimen thats as efficient as it is effective. With precision timing and targeted exercises, maximize your workout to achieve results in record time. Feel the rush of endorphins as you push your limits and surpass your goals, knowing that every moment spent in motion brings you closer to your best self                                ', '35', '18, Mar 2024 ', 28, 'th (3.3).jpg'),
(50, 'Ninjas in anime', '                                                                  Naruto Uzumaki is a popular ninja character from the anime series Naruto, known for his determination and unyielding spirit. Hattori Hanzo, a skilled ninja from the anime Ninja Hattori, showcases exceptional stealth and combat abilities. Jiraiya, a legendary ninja from Naruto, is a master of ninjutsu and a mentor to many aspiring ninjas.              ', '35', '18, Mar 2024 ', 33, 'AdobeStock_564741194_Preview.jpeg'),
(51, 'job professionals ', '                                                                                                                                                                                                                Doctors are dedicated professionals who provide medical care and treatment to patients in need. Teachers play a crucial role in educating and shaping young minds for the future. Engineers use their technical expertise to design and create innovative solutions for various industries. Step into a world where imagination meets expertise with our professional designer services. team of skilled designers brings your vision to life, crafting spaces that reflect your unique style and personality.  Lawyers are essential for upholding justice and ensuring the rights of individuals are protected. Musicians use their talents to evoke emotions and create beautiful melodies that resonate with listeners. Chefs are culinary artists who create delicious dishes that tantalize the taste buds and bring people together. Artists express themselves through their creativity, capturing moments and emotions in stunning works of art                                                                                                              ', '36', '19, Mar 2024 ', 41, 'th1.jpg'),
(52, 'Painting Competition', '                                                                                                                The vibrant strokes of color and artistic expressions come alive as painters from all walks of life gather for the annual competition. With their brushes poised and imaginations running wild, artists compete for the coveted title of Master of the Canvas.Each stroke tells a story, each color a emotion, as the artists create masterpieces that captivate the eyes and hearts of all who behold them.\r\n                                                                            ', '34', '19, Mar 2024 ', 43, 'painter_competition.jpg'),
(54, 'Cricket match', '                                                Dive into the heart of the cricketing world with our comprehensive coverage of the latest cricket news. From thrilling matches to behind-the-scenes insights, we deliver a curated selection of stories that keep you informed and entertained. Get breaking news on player transfers, match results, and exclusive interviews with your favorite cricketers. With in-depth analysis and expert commentary, our platform is your go-to destination for all things cricket. Join us and stay ahead of the game with up-to-the-minute updates and unparalleled coverage.                                                ', '36', '19, Mar 2024 ', 33, 'news02.jpg'),
(63, 'Record Breaking Election', 'In the forthcoming PM election, a diverse array of political parties vie for voter support with contrasting ideologies. From the centrist Unity Party advocating for compromise to the libertarian Vanguard Alliance championing individual liberties, each party offers a distinct vision. The idealistic Renaissance Movement promises societal transformation, while the conservative Solidarity Front stands for tradition and stability. The Horizon Coalition presents a wildcard with its blend of environmentalism, social justice, and economic pragmatism. As voters navigate these choices, they hold the power to shape the nations future.', '36', '20, Mar 2024 ', 43, 'news05.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`, `date`, `post`) VALUES
(33, 'mohit', 'misra', 'mohit_misra', '03bb2d44124925e041e6a88fd01d083b', 1, '2024-03-11 00:00:00', 2),
(31, 'chirag', 'diman', 'mahander garh', '438fad6b13cc940be607f678801b0bd1', 0, '2024-03-06 00:00:00', 0),
(43, 'raman', 'kapoor', 'kapoor_raman', '03bb2d44124925e041e6a88fd01d083b', 0, '2024-03-18 09:59:16', 2),
(32, 'ram ', 'kumar', 'ram_ram', '49950327c3076eeded55e6ddffeb3eba', 0, '2024-03-07 00:00:00', 0),
(28, 'anuj', 'jangra', 'anuj_jangra', '03bb2d44124925e041e6a88fd01d083b', 1, '2024-03-01 00:00:00', 4),
(34, 'jangra4232', 'pm kfdsihb nlfsjkbvopsodu\'', 'kndevccpodfljiuo', 'c001498d8db87bbe3b7c96728dad7fb5', 0, '2024-03-09 00:00:00', 0),
(36, 'asdfgh', 'asdfgh', 'asdfg_sdfghj', 'e807f1fcf82d132f9bb018ca6738a19f', 0, '2024-02-15 00:00:00', 0),
(41, 'shivam', 'sharma', 'sharma_shivam', '03bb2d44124925e041e6a88fd01d083b', 1, '2024-03-16 02:52:00', 2),
(38, 'rohit', 'gupta', 'gupta_rohit', '69180f966a0ecf3ab22565554f02c42c', 0, '2024-03-11 00:00:00', 0),
(40, 'rohit', 'jangra', 'jangra_rohit', '03bb2d44124925e041e6a88fd01d083b', 0, '2024-03-14 16:06:29', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
