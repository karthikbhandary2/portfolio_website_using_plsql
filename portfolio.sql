SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `putInfo` (IN `aemail` VARCHAR(50), IN `asubject` VARCHAR(100), IN `amessage` VARCHAR(500))   INSERT INTO contact_info(email, subject, message) VALUES(aemail,asubject,amessage)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `email`, `subject`, `message`) VALUES
(1, 'karthikbhandary2@gmail.com', 'Test', 'Hello there!'),
(2, 'karthikbhandary2@gmail.com', 'Test', 'Hello there!'),
(3, 'karthikbhandary2@gmail.com', 'Test', 'Hello there!'),
(6, 'ashalatha@gmail.com', 'test', 'Hey there!'),
(7, 'akshaybhadary66@gmail.com', 'Test', 'Hey Lebron'),
(8, 'akshayprinters13@gmail.com', 'haha', 'Hello lol'),
(9, 'karthikbhandary2@gmail.com', 'Test', 'Lol'),
(10, 'karthikbhandary2@gmail.com', 'Test', 'Testing to see if the procedure is working!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
