CREATE DATABASE  IF NOT EXISTS `bookonline` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookonline`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: bookonline
-- ------------------------------------------------------
-- Server version	5.6.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT 'Noname',
  `country` varchar(45) DEFAULT 'Việt Nam',
  `description` longtext,
  `image_link` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Nguyễn Đức Nghĩa','Việt Nam','PGT.TS Nguyễn Đức Nghĩa - Đại học Bách Khoa Hà Nội',NULL),(2,'Đỗ Xuân Lôi','Việt Nam',NULL,NULL),(3,'Thomas H. Cormen','USA','Thomas H. Cormen is Professor and Chair of the Dartmouth College Department of Computer Science and former director of the Dartmouth College Institute for Writing and Rhetoric. He received the B.S.E. degree in Electrical Engineering and Computer Science from Princeton University in 1978 and the S.M. and Ph.D. degrees in Electrical Engineering and Computer Science from MIT in 1986 and 1993, respectively. He is coauthor of the leading textbook on computer algorithms, Introduction to Algorithms, which he wrote with Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein. The book, now in its third edition, has been translated into several languages. He is also the author of Algorithms Unlocked, a gentle introduction to understanding computer algorithms and how they relate to real-world problems.',NULL),(4,'Nguyễn Nhật Ánh','Việt Nam','Nhà văn chuyên viết những câu truyện trữ tình',NULL),(5,'Betty G. Birney','USA','Betty G. Birney là tác giả viết kịch bản cho nhiều chương trình truyền hình dành cho thiếu nhi như Madeline, Doug, và Bobby’s World cũng như bộ phim truyền hình Mary Christmas',NULL),(6,'George R. R. Martin','USA','George R. R. Martin sinh ngày 20 tháng 9 năm 1948, tại Bayonne, New Jersey, con trai của một phu khuân vác. Sinh ra và lớn lên trong sự nghèo khó nhưng với trí tưởng tượng phong phú của mình, ngay từ khi còn bé, ông đã bắt đầu viết và bán những câu chuyện về quái vật cho lũ trẻ con ở những khu phố khác. Ông viết hẳn một câu chuyện về vương quốc thần thoại của loài rùa – con vật cưng của mình. Sau đó, ông nhanh chóng trở thành fan cuồng nhiệt của truyện tranh, hâm mộ những câu chuyện về những siêu anh hùng.',NULL),(7,'Robert Louis Stevenson ','USA','Robert Louis Stevenson (1850-1894) là một nhà văn người Scotland, người đã sáng tác nhiều tác phẩm văn học nổi tiếng trong đó có tiểu thuyết đảo giấu vàng. Stevenson sinh tại Edinburgh Tô Cách Lan trong một gia đình trí thức. Ông được nhiều người mến phục về tinh thần phấn đấu chống lại bệnh tật với sự vui vẻ và lòng can đảm, vợ ông là người đã đem đến cho ông nghị lực và cảm hứng để viết văn. Trong khoảng mười bảy năm, ông đã viết được bốn cuốn khảo luận, bảy cuốn tiểu thuyết, năm tập truyện hoang đường, hai tập truyện phiêu lưu tại biển Nam, ba tập thơ, năm cuốn tiểu truyện về du lịch và địa thế học, một cuốn lịch sử chính trị và một số tài liệu khác được in ra sau khi ông chết. Ông sáng tác tập trung vào các thể loại truyện ngắn, tiểu thuyết, thơ, khảo luận.',NULL),(8,'Jean de Brunhoff','USA','Robert Louis Stevenson (1850-1894) là một nhà văn người Scotland, người đã sáng tác nhiều tác phẩm văn học nổi tiếng trong đó có tiểu thuyết đảo giấu vàng. Stevenson sinh tại Edinburgh Tô Cách Lan trong một gia đình trí thức. Ông được nhiều người mến phục về tinh thần phấn đấu chống lại bệnh tật với sự vui vẻ và lòng can đảm, vợ ông là người đã đem đến cho ông nghị lực và cảm hứng để viết văn. Trong khoảng mười bảy năm, ông đã viết được bốn cuốn khảo luận, bảy cuốn tiểu thuyết, năm tập truyện hoang đường, hai tập truyện phiêu lưu tại biển Nam, ba tập thơ, năm cuốn tiểu truyện về du lịch và địa thế học, một cuốn lịch sử chính trị và một số tài liệu khác được in ra sau khi ông chết. Ông sáng tác tập trung vào các thể loại truyện ngắn, tiểu thuyết, thơ, khảo luận.',NULL),(9,'Nguyễn Nhật Ánh','Việt Nam','Nguyễn Nhật Ánh là tên và cũng là bút danh của một nhà văn Việt Nam chuyên viết cho tuổi mới lớn.\r\nThuở nhỏ ông theo học tại các trường Tiểu La, Trần Cao Vân và Phan Chu Trinh. Từ 1973 Nguyễn Nhật Ánh chuyển vào sống tại Sài Gòn, theo học ngành sư phạm. Ông đã từng đi Thanh niên xung phong, dạy học, làm công tác Đoàn Thanh niên Cộng Sản Hồ Chí Minh. Từ 1986 đến nay ông là phóng viên nhật báo Sài Gòn Giải Phóng, lần lượt viết về sân khấu, phụ trách mục tiểu phẩm, phụ trách trang thiếu nhi và hiện nay là bình luận viên thể thao trên báo Sài Gòn Giải Phóng Chủ nhật với bút danh Chu Đình Ngạn. Ngoài ra, Nguyễn Nhật Ánh còn có những bút danh khác như Anh Bồ Câu, Lê Duy Cật, Đông Phương Sóc, Sóc Phương Đông,...',NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_has_book`
--

DROP TABLE IF EXISTS `author_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_has_book` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`author_id`,`book_id`),
  KEY `fk_author_has_book_book1_idx` (`book_id`),
  KEY `fk_author_has_book_author_idx` (`author_id`),
  CONSTRAINT `fk_author_has_book_author` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_author_has_book_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_has_book`
--

LOCK TABLES `author_has_book` WRITE;
/*!40000 ALTER TABLE `author_has_book` DISABLE KEYS */;
INSERT INTO `author_has_book` VALUES (1,1),(3,2),(3,3),(3,4),(4,5),(5,6),(6,8),(8,9),(8,10),(6,11),(4,12),(5,13),(3,14),(3,15),(7,16),(7,17),(8,18),(8,19),(8,20),(3,21),(7,22),(7,23),(8,24),(8,25),(8,26),(3,27),(3,28),(3,29),(3,30),(3,31);
/*!40000 ALTER TABLE `author_has_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `total_amount` int(11) DEFAULT '0',
  `payed` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_address` text,
  `discount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_Bill_member1_idx` (`member_id`),
  CONSTRAINT `fk_Bill_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bill_BINS` BEFORE INSERT ON `bill` FOR EACH ROW
begin
	set new.discount = (select sum(discount) from discount where start_date <= new.create_date and end_date >= new.create_date);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bill_has_book`
--

DROP TABLE IF EXISTS `bill_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_has_book` (
  `bill_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`bill_id`,`book_id`),
  KEY `fk_Bill_has_book_book1_idx` (`book_id`),
  KEY `fk_Bill_has_book_Bill1_idx` (`bill_id`),
  CONSTRAINT `fk_Bill_has_book_Bill1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bill_has_book_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_has_book`
--

LOCK TABLES `bill_has_book` WRITE;
/*!40000 ALTER TABLE `bill_has_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_has_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bill_has_book_AINS` AFTER INSERT ON `bill_has_book` FOR EACH ROW
begin
	update book set quantity = quantity - new.quantity;
	update bill set total_amount = total_amount + new.quantity * (select sum(price) from book where id = new.book_id) where id = new.bill_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `publisher` varchar(45) DEFAULT 'Unknow',
  `year` year(4) DEFAULT '2014',
  `pages` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext,
  `comment_count` int(11) DEFAULT '0',
  `star` int(11) DEFAULT '0',
  `quantity` int(11) DEFAULT '10',
  `image_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Toán rời rạc','NXB Quốc Gia Hà Nọi',2005,408,30000,'Một cuốn sách rất hay về toán rời rạc của PGS.TS Nguyễn Đức Nghĩa - ĐH Bách Khoa Hà Nội',2,5,10,'Toan_roi_rac.jpg'),(2,'Introduction to Algorithms','The MIT Press',2009,1008,100000,'Some books on algorithms are rigorous but incomplete; others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness. The book covers a broad range of algorithms in depth, yet makes their design and analysis accessible to all levels of readers. Each chapter is relatively self-contained and can be used as a unit of study. The algorithms are described in English and in a pseudocode designed to be readable by anyone who has done a little programming. The explanations have been kept elementary without sacrificing depth of coverage or mathematical rigor.The first edition became a widely used text in universities worldwide as well as the standard reference for professionals. The second edition featured new chapters on the role of algorithms, probabilistic analysis and randomized algorithms, and linear programming. The third edition has been revised and updated throughout. It includes two completely new chapters, on van Emde Boas trees and multithreaded algorithms, substantial additions to the chapter on recurrence (now called \"Divide-and-Conquer\"), and an appendix on matrices. It features improved treatment of dynamic programming and greedy algorithms and a new notion of edge-based flow in the material on flow networks. Many new exercises and problems have been added for this edition. As of the third edition, this textbook is published exclusively by the MIT Press.',2,5,10,'Intro_Algorithm.jpg'),(3,'Introduction to Algorithms','The MIT Press',2009,1008,100000,'Some books on algorithms are rigorous but incomplete; others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness. The book covers a broad range of algorithms in depth, yet makes their design and analysis accessible to all levels of readers. Each chapter is relatively self-contained and can be used as a unit of study. The algorithms are described in English and in a pseudocode designed to be readable by anyone who has done a little programming. The explanations have been kept elementary without sacrificing depth of coverage or mathematical rigor.The first edition became a widely used text in universities worldwide as well as the standard reference for professionals. The second edition featured new chapters on the role of algorithms, probabilistic analysis and randomized algorithms, and linear programming. The third edition has been revised and updated throughout. It includes two completely new chapters, on van Emde Boas trees and multithreaded algorithms, substantial additions to the chapter on recurrence (now called \"Divide-and-Conquer\"), and an appendix on matrices. It features improved treatment of dynamic programming and greedy algorithms and a new notion of edge-based flow in the material on flow networks. Many new exercises and problems have been added for this edition. As of the third edition, this textbook is published exclusively by the MIT Press.',2,5,10,'Intro_Algorithm.jpg'),(4,'Introduction to Algorithms','The MIT Press',2009,1008,100000,'Some books on algorithms are rigorous but incomplete; others cover masses of material but lack rigor. Introduction to Algorithms uniquely combines rigor and comprehensiveness. The book covers a broad range of algorithms in depth, yet makes their design and analysis accessible to all levels of readers. Each chapter is relatively self-contained and can be used as a unit of study. The algorithms are described in English and in a pseudocode designed to be readable by anyone who has done a little programming. The explanations have been kept elementary without sacrificing depth of coverage or mathematical rigor.The first edition became a widely used text in universities worldwide as well as the standard reference for professionals. The second edition featured new chapters on the role of algorithms, probabilistic analysis and randomized algorithms, and linear programming. The third edition has been revised and updated throughout. It includes two completely new chapters, on van Emde Boas trees and multithreaded algorithms, substantial additions to the chapter on recurrence (now called \"Divide-and-Conquer\"), and an appendix on matrices. It features improved treatment of dynamic programming and greedy algorithms and a new notion of edge-based flow in the material on flow networks. Many new exercises and problems have been added for this edition. As of the third edition, this textbook is published exclusively by the MIT Press.',2,5,10,'Intro_Algorithm.jpg'),(5,'Có Hai Con Mèo Ngồi Bên Cửa Sổ','The MIT Press',2009,1008,100000,'Nhân vật chính thứ nhất tên là Gấu.\r\n\r\nNhân vật thứ hai là Tí Hon.\r\n\r\nNhân vật thứ ba, tên là…; còn nữa, nhân vật thứ tư, tên là…\r\n\r\nĐể biết tại sao Gấu lại chơi thân với Tí Hon, thì mời bạn hãy mở sách ra.\r\n\r\nGấu và Tí Hon thân nhau đến mức có thể chia sẻ từng chuyện vui buồn trong những phút giây mềm yếu, lo lắng và chăm sóc, giúp nhau từ miếng ăn đến “chiến lược” để tồn tại lâu dài.Tình bạn là gì? Bạn gái là gì? Tình yêu là gì?\r\n\r\nBọn mèo chuột kể với chúng ta nhiều câu chuyện nhỏ, gửi thông điệp rằng, tình yêu có sức mạnh tuyệt diệu, có thể làm nên mọi điều phi thường trong cuộc sống muôn loài.\r\n\r\nCuốn truyện có độ dầy vừa phải, 67 hình vẽ của họa sĩ Đỗ Hoàng Tường sinh động đến từng nét nũng nịu hay kiêu căng của nàng mèo người yêu mèo Gấu, câu chuyện thì hấp dẫn duyên dáng điểm những bài thơ tình lãng mạn nao lòng song đọc to lên thì khiến cười hinh hích…\r\n\r\nBạn hãy đọc nhé, để thấy, Nguyễn Nhật Ánh đã viết truyện mèo chuột theo cái cách của riêng mình độc đáo như thế nào.',2,5,10,'hai_con_meo_1_2.jpg'),(6,'Còn chút gì để nhớ','Unknow',2014,211,70000,'Đó là những kỷ niệm thời đi học của Chương, lúc mới bước chân vào Sài Gòn và làm quen với cuộc sống đô thị. Là những mối quan hệ bạn bè tưởng chừng hời hợt thoảng qua nhưng gắn bó suốt cuộc đời. Cuộc sống đầy biến động đã xô dạt mỗi người mỗi nơi, nhưng trải qua hàng mấy chục năm, những kỷ niệm ấy vẫn luôn níu kéo Chương về với một thời để nhớ.',2,5,10,'con-chut-gi-de-nho.jpg'),(7,'Rắc Rối Trong Mắt Humphrey','Unknow',2014,322,133000,'Chú hamster Humphrey rất nhiệt tình giải quyết rắc rối cho các bạn học cùng Lớp 26, nhưng cậu không bao giờ muốn tạo ra rắc rối cả. Miranda-Vàng-Rực, một người bạn mà Humphrey vô cùng yêu quý, bị trách phạt là đã không khóa cửa lồng cẩn thận khi Humphrey bị bắt quả tang ở ngoài lồng.\r\n\r\nBởi không ai biết đến cái khóa-mà-không-khóa, Humphrey không thể lên tiếng biện hộ cho Miranda. Chưa kể, gia đình của Mandy-Pane-Đừng-Phàn-Nàn-Nữa cũng mang thêm nhiều rắc rối cho Humphrey.\r\n\r\nHumphrey giúp được cho Art-Hãy-Chú-Ý và Seth-Ngồi-Yên, thậm chí cậu còn “tai qua nạn khỏi” sau cuộc viếng thăm bác sĩ thú y lần đầu tiên trong đời, nhưng liệu cậu ấy có thể minh oan cho Miranda mà không đánh mất sự tự do của mình mãi mãi?',2,5,10,'rac-roi-humphrey.jpg'),(8,'Trò Chơi Vương Quyền (Tập 5A)','Unknow',2014,300,149000,'Con người khi đơn độc một mình chỉ là thứ yếu đuối. Chúng to lớn và khỏe mạnh với đôi mắt tinh nhanh, nhưng tai chúng điếc và mũi chẳng ngửi thấy gì. Hươu, nai sừng tấm, thậm chí cả thỏ rừng còn nhanh hơn chúng, gấu và lợn lòi chiến đấu dữ tợn hơn chúng. Nhưng con người khi đi thành đàn lại rất nguy hiểm. Khi đàn sói tiến gần đến con mồi, kẻ đội lốt nghe thấy tiếng rên rỉ của một con thú nhỏ, lớp tuyết mới rơi đêm qua vỡ ra dưới móng vuốt vụng về của con người, dưới những chiếc vảy cứng rung lên lách cách và những chiếc vuốt dài màu xám mà bọn chúng mang theo...\r\n\r\n\"Nếu bạn đọc trọn bộ sách này, bạn thực sự là một người:\r\n\r\n1. Kiên nhẫn - vì luôn trong tình trạng phải chờ đợi các tập kế tiếp.\r\n\r\n2. Bền bỉ - vì thật khó mà kiềm chế được việc đọc đi đọc lại chúng.\r\n\r\n3. Mạnh mẽ - Vì mỗi tập trung bình chỉ \"nhẹ\" khoảng 600 trang.\r\n\r\n4. Nhạy bén - để theo dõi từng diễn biến cực kỳ căng thẳng và bất ngờ.\"',2,5,10,'tro-choi-vuong-quyen-5a.jpg'),(9,'Trò Chơi Vương Quyền (Tập 5A)','Unknow',2014,300,149000,'Con người khi đơn độc một mình chỉ là thứ yếu đuối. Chúng to lớn và khỏe mạnh với đôi mắt tinh nhanh, nhưng tai chúng điếc và mũi chẳng ngửi thấy gì. Hươu, nai sừng tấm, thậm chí cả thỏ rừng còn nhanh hơn chúng, gấu và lợn lòi chiến đấu dữ tợn hơn chúng. Nhưng con người khi đi thành đàn lại rất nguy hiểm. Khi đàn sói tiến gần đến con mồi, kẻ đội lốt nghe thấy tiếng rên rỉ của một con thú nhỏ, lớp tuyết mới rơi đêm qua vỡ ra dưới móng vuốt vụng về của con người, dưới những chiếc vảy cứng rung lên lách cách và những chiếc vuốt dài màu xám mà bọn chúng mang theo...\r\n\r\n\"Nếu bạn đọc trọn bộ sách này, bạn thực sự là một người:\r\n\r\n1. Kiên nhẫn - vì luôn trong tình trạng phải chờ đợi các tập kế tiếp.\r\n\r\n2. Bền bỉ - vì thật khó mà kiềm chế được việc đọc đi đọc lại chúng.\r\n\r\n3. Mạnh mẽ - Vì mỗi tập trung bình chỉ \"nhẹ\" khoảng 600 trang.\r\n\r\n4. Nhạy bén - để theo dõi từng diễn biến cực kỳ căng thẳng và bất ngờ.\"',2,5,10,'tro-choi-vuong-quyen-5a.jpg'),(10,'Babar Làm Vua','Unknow',2014,300,150000,'Xa kia ở đất nước muôn voi, Vua Babar và Hoàng Hậu Celeste đang vui: họ vừa ký một hòa ước với bầy tê giác, và người bạn của họ, Quý Bà, đã đồng ý ở lại cùng họ. Niềm vui còn được nhân lên gấp bội, vì họ đã dựng xong Celesteville, thành phố của loài voi, thành phố đẹp nhất trong tất cả các thành phố. Voi nào voi nấy đều hân hoan vừa làm việc vừa vui chơi.\r\n\r\nNhưng một chiều kia, Quý Bà bất ngờ bị một con rắn độc cắn, còn Cornelius, ông voi già nhất và thông thái nhất, lại bị thương nặng trong trận hỏa hoạn. Lẽ nào, hạnh phúc lại đã rời khỏi Celesteville mất rồi?',2,5,10,'barba-lam-vua.jpg'),(11,'Babar và ông già Noel','Unknow',2014,300,150000,'Nghe này, nghe câu chuyện tuyệt vời này này! Hình như tại đất nước của Con Người, cứ đến Giáng sinh hàng năm, một ông già có bộ râu rậm màu trắng, mặc bộ quần áo đỏ có mũ trùm nhọn sẽ mang theo vô số đồ chơi để tặng trẻ em; và người ta gọi ông ấy là Ông già Nô en.\r\n\r\nBọn trẻ Voi đã viết thư cho Ông già Nô en rồi, mà sao mãi không thấy ông trả lời? Nào, các bạn Voi ơi, đừng buồn, Vua Babar sẽ đích thân lên đường mời Ông già Nô en đến thăm nước Voi. Mỗi tội, biết tìm Ông ấy ở đâu bây giờ???',2,5,10,'barba-va-ong-gia-noel.jpg'),(12,'Trò Chơi Vương Quyền - Tập 2A','Unknow',2014,300,150000,'Bộ sách đồ sộ và đình đám Trò chơi vương quyền là một series tiểu thuyết sử thi viễn tưởng của tiểu thuyết gia nổi tiếng người Mỹ George R. R. Martin. Lấy cảm hứng từ tiểu thuyết “Cuộc chiến hoa hồng” và “Ivanhoe” Martin bắt đầu viết bộ sách vào năm 1991 và năm 1996 ông cho ra mắt ấn phẩm đầu tiên. Cuốn tiểu thuyết cũng như cả bộ sách nhanh chóng nhận được sự đón chào nhiệt liệt của một lượng fan hâm mộ khổng lồ, trở thành các tác phẩm best seller của nhiều bảng xếp hạng uy tín. Từ dự định viết một bộ ba tập lúc ban đầu, đến nay Martin đã đẩy kế hoạch đó lên thành bảy tập; và tập năm của bộ sách đã được phát hành vào 12/07/2011 vừa qua.\r\n\r\nNgoài việc đoạt được hàng loạt các giải thưởng danh giá như giải khoa học viễn tưởng Hugo Award, bộ tiểu thuyết Trò chơi vương quyền đã được bán bản quyền cho hơn 20 nước và dịch ra hơn 20 ngôn ngữ trên thế giới. Tại quê hương của mình, tập thứ tư và thứ năm của bộ sách liên tục đứng ở vị trí số một trong Danh sách bán chạy nhất New York Times vào năm 2005 và 2011. Về số lượng, series tiểu thuyết này đã bán được hơn 7 triệu bản tại Mỹ và hơn 22 triệu bản trên toàn thế giới. Kênh truyền hình HBO đã chuyển thể series tiểu thuyết này sang series phim truyền hình chất lượng cao, đậm chất Holywood khiến danh tiếng của bộ sách cũng như tên tuổi của tác giả ngày càng vang xa. Hiện tại, HBO Việt Nam đang phát song series phim này vào tối thứ năm, thứ 6 hàng tuần.',2,5,10,'hau-due-cua-su-tu-vang.jpg'),(13,'Còn chút gì để nhớ','Unknow',2014,155,55000,'Đó là những kỷ niệm thời đi học của Chương, lúc mới bước chân vào Sài Gòn và làm quen với cuộc sống đô thị. Là những mối quan hệ bạn bè tưởng chừng hời hợt thoảng qua nhưng gắn bó suốt cuộc đời. Cuộc sống đầy biến động đã xô dạt mỗi người mỗi nơi, nhưng trải qua hàng mấy chục năm, những kỷ niệm ấy vẫn luôn níu kéo Chương về với một thời để nhớ.',2,5,10,'con-chut-gi-de-nho.jpg'),(14,'Cuộc Chiến SmartPhone','Mr.Seven',2014,300,56000,'Năm 2007, Apple đã tái định nghĩa danh từ \"smartphone\" một cách đúng đắn nhất bằng việc cho trình làng có chiếc Iphoen đầu tiên, một chiếc điện thoại có tính năng siêu việt, tương tác thông minh với người dùng. Cơn cuồng phong IPhone đã đốn gục gã khổng lồ đầy tự mãn Nokia, đồng thời lại khiến kẻ theo đuổi là Samsung thức tỉnh. Cũng từ đây, một cuộc chiến smartphone đã được khơi ngòi.\r\n\r\nThông qua Cuộc chiến smartphone, cuốn sách được viết bởi người có hơn 10 năm kinh nghiệm làm việc trong công ty điện tử Samsung, chúng ta sẽ biết được cjo tiết các cuộc đua khốc liệt giữa các doanh nghiệp và sáng tạo trong ngành điện thoại di động, đặc biệt là giữa Apple và Samsung, để tạo ra được những chiếc smartphone siêu việt nắm giữ vị thế dẫn đầu thị trường thế giới. Và trên hết, chúng ta sẽ thấu hiểu được cách thức và nguyên do khiến Samsung, từ một kẻ theo sau hoàn toàn thiếu đi sự sáng tạo đã trở thành một doanh nghiệp sáng tạo hàng đầu thế giới, chống chọi với cơn cuồng phong iPhone đồng thời vượt lên trên cả Apple và Nokia trong thị trường smartphone. không chỉ dừng lại ở đó, Samsung còn tạo ra một khái niệm mới - Phablet (máy tính bảng lai). Một khái niệm đánh dấu bước ngoặt thay đổi lối sống của nhân loại đương thời.',2,5,10,'cuoc chien smartphone.PNG'),(15,'Sách Dạy Đọc Nhanh (Tái Bản 2014)','Mr.Seven',2014,300,56000,'Sách Dạy Đọc nhanh sẽ giúp bạn:\r\n\r\nSuy nghĩ nhanh và sáng tạo hơn\r\n\r\nGhi chú ý tưởng của mình tốt hơnVượt qua các kỳ thi một cách dễ dàng\r\n\r\nHọc tập có hiệu quả hơn\r\n\r\nTiết kiệm được nhiều ngày, nhiều tuần, thậm chí nhiều tháng trong quỹ thời gian quý báu của bạn.\r\n\r\nTony Buzan cung cấp thông tin về đôi mắt và bộ não nhằm giúp bạn cải thiện mọi lĩnh vực liên quan đến hoạt động đọc hiểu của bạn đồng thời chứng minh một điều: có thể đọc với tốc độ trên 1000 từ mỗi phút.\r\n\r\nPhương pháp tiên tiến của tác giả trong việc tiếp cận đề tài này đã giúp kỹ thuật đọc nhanh trở nên dễ hiểu, và bạn có thể áp dụng được ngay để nâng cao tốc độ, mức độ tiếp thu và chất lượng đọc hiểu của mình.\r\n\r\nTony Buzan, người phát minh kỹ thuật lập Sơ đồ Tư duy, là nhà nghiên cứu hàng đầu thế giới về não bộ và phương pháp học tập. Các tác phẩm của ông đã thành công vang dội ở hơn 100 quốc gia và được dịch sang 30 thứ tiếng. Ông cũng là một diễn giả có đẳng cấp quốc tế và giữ vai trò cố vấn cho nhiều tập đoàn đa quốc gia hàng đầu cùng các chính phủ trên thế giới. Ngoài ra, ông còn là Chủ tịch Quỹ nghiên cứu về Não bộ (Brain Foundation), nhà sáng lập Tổ chức Brain Trust và các giải Vô địch Thế giới về Trí nhớ và Tư duy',2,5,10,'The Speed Reading Book.PNG'),(16,'The Samsung Way','Mr.Seven',2014,300,56000,'Samsung, cái tên đang nổi danh trên toàn thế giới hiện cũng là thương hiệu vô cùng quen thuộc với người tiêu dùng Việt Nam.Từ lâu, chúng ta đã biết đến Samsung thông qua các sản phẩm ti-vi hay điện thoại kiểu cũ. Tuy nhiên, thời điểm những năm cuối của thế kỷ XX, Samsung chỉ là cái tên đứng thứ 3, thứ 4, hay cùng lắm là thứ 2 trong danh sách ưu tiên mua hàng. Với điện thoại nó không là gì so với Nokia, còn với ti vi, Panasolic hay Sony luôn là những cái tên đứng đầu. Thậm chí, câu \"nét như Sony\" còn trở thành khẩu ngữ thông dụng của người Việt khi muốn nói về một sản phẩm nào đó chuẩn đẹp. Nếu khi đó có ai nói rằng 20 năm sau, Samsung sẽ vượt mặt Sony, vượt mặt Nokia, vượt mặt Panasonic, để trở thành thương hiệu hàng đầu thế giới thì chắc chúng ta chỉ lắc đầu và cười chuyện viển vông.\r\n\r\nCuốn sách chắc chắn là lựa chọn tuyệt vời đối với tất cả mọi người yêu thích các sản phẩm của Samsung và mong muốn tìm hiểu nhiều hơn về một thương hiệu đang dần trở thành một biểu tượng văn hóa. Giới doanh nhân, các sinh viên chuyên ngành kinh tế, hay bất kỳ ai ham thích tìm hiểu về chiến lược và lý thuyết tổ chức đều có thể tìm thấy cho mình những giá trị quan trọng tác phẩm này.',2,5,10,'The Samsung Way.PNG'),(17,'Phương Pháp Đầu Tư Warren Buffett','Mr. Cameroon',2014,300,56000,'Cuốn sách này sẽ :\r\n\r\nTrình bày ngắn gọn tiểu sử của Bufett,một trong những tỷ phú giàu nhất thế giới hiện nay.\r\n\r\nTiết lộ những yếu tố và sự kiện hình thành nên triết lý đầu tư của Buffett\r\n\r\nPhác họa các nguyên lý kinh doanh ,quản lý ,tài chính và giá trị hình thành nên phương pháp đầu tư Buffett\r\n\r\nPhân tích quá trình quản lý danh mục đầu tư\r\n\r\nThảo luận khái niệm tâm lý tiền bạc và cách Buffett sử dụng khái niệm này để tránh những sai lầm thông thường trong đầu tư.',2,5,10,'phuong phap dau tu warren buffett.PNG'),(18,'Sách Lược Đầu Tư Của W. Buffett','Mr. Cameroon',2014,300,56000,'Được xem là nhà đầu tư thành công nhất thế giới, là cổ đông lớn nhất kiêm giám đốc hãng Berkshire Hathaway, người giàu thứ hai thế giới sau Bill Gates với tài sản hơn 50 tỉ USD. Nổi tiếng do sự kiên định trong triết lý đầu tư, sự nghiệp của Warren Buffett để lại muôn vàn bài học kinh doanh quý báu…\r\n\r\nCuốn sách này tổng kết:\r\n\r\n+ Những tinh hoa trong tư tưởng của Buffett\r\n\r\n+ Chiến lược đầu tư của Buffett\r\n\r\n+ Sách lược thực hiện của Buffett\r\n\r\n+ Buffett phân tích Báo cáo tài chính\r\n\r\n+ Năm dự án đầu tư kinh điển của Buffett',2,5,10,'sach luoc dau tu buffet.PNG'),(19,'Một Vũ Trụ Lạ Thường','Mr. Cameroon',2014,300,56000,'Nhà vật lý đoạt giải Nobel Robert B. Laughlin đã lập luận rằng, ta vẫn chưa chạm được đến hồi kết của khoa học, mà thậm chí còn chưa tiến gần được đến đó. Ta mới chỉ đi tới cuối con đường của một lối suy nghĩ nào đấy theo quy giản luận mà thôi. Nếu thay cho việc tìm kiếm những lý thuyết tối hậu, ta hãy xem xét thế giới của những đặc tính đột sinh - có nghĩa là những đặc tính kiểu như tính rắn và hình dạng của một tinh thể, kết quả có được từ sự tổ chức của một số lượng lớn các nguyên tử - thì đột nhiên những điều huyền bí nhất sẽ trở nên gần gũi dễ hiểu như một cục nước đá hay một hạt muối vậy thôi.\r\n\r\nVà rồi Laughlin còn đi xa hơn nữa: những định luật cơ bản nhất của vật lý học - như các định luật chuyển động của Newton hay cơ học lượng tử - hẳn sẽ phải đột sinh. Các định luật này là những đặc tính của những tập hợp vật chất rộng lớn, và khi độ chính xác của chúng được nghiên cứu một cách thật gần cận, chúng sẽ tan biến thành hư không.Laughlin chỉ cho ta thấy vì sao tất thảy những gì ta hằng nghĩ về các định luật cơ bản của vật lý học đều cần phải được thay đổi, và vì sao những điều huyền bí nhất về vật lý học không nằm ở nơi tận cùng của vũ trụ, mà lại nằm hoàn toàn trong tầm tay của chúng ta.\r\n\r\nCuốn Một Vũ Trụ Lạ Thường đưa ta đến với một thế giới - mà bất ngờ thay, lại chính là thế giới nơi ta đang sống - nơi mà chân không phải được xem như một loại chất rắn, nơi mà âm thanh được lượng tử hoá thành hạt y hệt như các hạt ánh sáng, nơi vật chất có nhiều pha, chứ không chỉ có ba, và nơi mà kim loại thì nom giống như chất lỏng, còn helium siêu lỏng thì lại nom như chất rắn. Đó là một thế giới đầy rẫy những hiện tượng tự nhiên còn cần phải được khám phá. Đây thực sự là một quyển sách gây sốc, vẽ ra trước mắt độc giả một thế giới mới lạ, đẹp và huyền bí một cách trang nhã.',2,5,10,'mot vu tru la thuong.PNG'),(20,'Sách 3D: Những Loài Thú Lớn Họ Mèo','Tuti',2014,300,56000,'Cuốn sách cung cấp cho độc giả một cái nhìn tổng thể về nguốn gốc, tập quán sinh sống, sự phân bố cũng như thực trạng của những loài thú họ Mèo lớn trên thế giới hiện nay.\r\n\r\nĐặc biệt cuốn sách đã tập trung miêu tả cụ thể về các kỹ xảo săn mồi độc đáo, thú vị của những loài thú quyền uy và dũng mãnh này. Nổi bật với những hình ảnh minh họa 3D sống động, cuốn hút, cuốn sách sẽ đem đến những trải nghiệm vô cùng thú vị cho những độc giả yêu thích khám phá thế giới tự nhiên.',2,5,10,'nhung loai thu lon ho meo.PNG'),(21,'Số Ít Được Lựa Chọn','Tuti',2014,300,56000,'Số Ít Được Lựa Chọn\r\n\r\nNgày nay, người ta không còn quá ngạc nhiên trước những số liệu thuyết phục về khả năng chiếm ưu thế của người Do Thái trong những thành tựu nổi bật của nhân loại. Mặc dù chỉ chiếm 0,02% dân số nhưng họ lại đại diện cho hơn 10% người trong danh sách Fobes 400 người giàu nhất thế giới. Vậy đâu là nguyên nhân mang lại đỉnh cao thành công của người Do Thái?\r\n\r\nSố ít được lựa chọn là cuốn sách “diễn giải lại đầy nỗ lực, cảm hứng và phong phú thông tin về lịch sử kinh tế và xã hội Do Thái” (Avner Greif, Đại học Stanford). Các tác giả đã khẳng định giáo dục ảnh hưởng không nhỏ đến lợi thế của thương nhân Do Thái trên thương trường. “Các học viện không chỉ là trường học cao cấp, dành cho sinh viên xuất sắc mà còn là cơ quan lập pháp và tòa án tôn giáo để người dân thường có vấn đề liên quan đến bất cứ khía cạnh nào trong đời sống thường nhật đến xin ý kiến hay phán quyết từ các học giả.”\r\n\r\nCuốn sách cũng cung cấp cho độc giả những yếu tố then chốt hình thành nên lịch sử Do Thái. Trong suốt quá trình phát triển, người Do Thái đã tận dụng những ưu thế của mình để tìm kiếm và khẳng định vị trí. Những diễn giải trong cuốn sách này được thể hiện chủ yếu thông qua lăng kính kinh tế học dựa trên dấu mốc lịch sử quan trọng trong cộng đồng Do Thái.\r\n\r\nLý do nào giúp người Do Thái làm nghề nông suốt cho đến thế kỷ 6 lại chuyển dần thành công sang lái buôn, doanh nghiệp, ngân hàng, tài chính, luật sư, bác sỹ, học giả ở khắp các miền đất trên thế giới nơi họ cư ngụ trong những thế kỷ sau đó? Từ khi nào và tại sao những mô hình nghề nghiệp và cư trú này trở thành những nét đặc trưng của người Do Thái? Tại sao đất nước Israel lại đạt được những thành tựu lớn lao cho đến ngày nay? Chất keo nào đã gắn kết dân tộc Do Thái để tạo thành một sức mạnh to lớn?...\r\n\r\nMột cuốn sách mang tính chất khảo cứu “chắc chắn sẽ tạo ra tranh luận” thú vị nhưng cũng tỏa ra “một thứ ánh sáng mới đầy hấp hẫn đối với vấn đề này”.',2,5,10,'so it duoc lua chon.PNG'),(22,'Những Bài Toán Hay Nước Nga (Tập 2)','Tuti',2014,300,56000,'Tuyển tập các bài toán hay nước Nga gồm 2 tập giúp tăng cường tư duy logic và phát triển khả năng suy luận. Với những hình ảnh đời thường gần gũi, các bài toán hiện ra như những trò chơi, những câu đố, tuy nhiên không vì vậy mà thiếu sự chặt chẽ. Quá trình giải đố này đòi hỏi bạn đọc phải vận dụng khả năng tính toán, cách nhìn nhận vấn đề bao quát và liên kết các sự việc. Đồng thời với việc sắp xếp đề bài một cách tự do, bạn đọc sẽ không bị nhàm chán vì loay hoay mãi trong một chủ đề, thay vào đó bạn có thể lựa chọn bài toán mình muốn giải.',2,5,10,'nhung bai toan hay nuoc nga.PNG'),(23,'Chinh Phục Đỉnh Cao - Thế Giới Tự Nhiên','Tuti',2014,300,56000,'Trái Đất chúng ta đang sống là một thế giới vô cùng thú vị nhưng lại rất phức tạp, chứa đầy những điều huyền bí. Chính một thế giới huyền bí, kỳ diệu như vậy đã cung cấp cho chúng ta một cơ hội tiếp cận, khám phá, và lĩnh hội những cái huyền bí sâu xa. Nhờ vào đó, con người có thể đạt được những thành tựu to lớn trong quá trình chinh phục tự nhiên của mình...',2,5,10,'chinh phuc dinh cao tri thuc - the gioi tu nhien.PNG'),(24,'Chinh Phục Đỉnh Cao - Sự Sống Loài Người','Tuti',2014,300,56000,'Trái Đất chúng ta đang sống là một thế giới vô cùng thú vị nhưng lại rất phức tạp, chứa đầy những điều huyền bí. Chính một thế giới huyền bí, kỳ diệu như vậy đã cung cấp cho chúng ta một cơ hội tiếp cận, khám phá, và lĩnh hội những cái huyền bí sâu xa. Nhờ vào đó, con người có thể đạt được những thành tựu to lớn trong quá trình chinh phục tự nhiên của mình...',2,5,10,'chinh phuc dinh cao tri thuc - su song loai nguoi.PNG'),(25,'Sự Tiến Hóa Của Vật Lý','Tuti',2014,300,56000,'Sự Tiến Hóa Của Vật Lý\r\n\r\nHoàn toàn không dùng đến sự phức tạp của toán học, A. Einstein và L. Infeld đã phác họa vô cùng rõ ràng và thuyết phục những bước tiến hóa quan trọng nhất của khoa học vật lý. Xuyên suốt quyển sách này chính là tầm quan trọng của việc quan sát, vì mọi hiện tượng quanh ta, dù là bình thường nhất, luôn chứa đựng vô vàn bí ẩn. Và chính những bí ẩn ấy lại là tiền đề cho sự tiến hóa của khoa học.\r\n\r\nĐộc giả sẽ vô cùng bất ngờ khi khám phá rằng “lượng tử” cũng như “chuyển động”, nếu thật sự hiểu được “chuyển động” là gì.',2,5,10,'su tien hoa cua vat ly.PNG'),(26,'Những Cái Nhất Trên Thế Giới','Tuti',2014,300,56000,'Những Cái Nhất Trên Thế Giới\r\n\r\nChương 1: Những điều kỳ diệu nhất về vũ trụ\r\n\r\nChương 2: Những điều kỳ diệu nhất của trái đất\r\n\r\nChương 3: Những điều kì diệu nhất về sinh vật\r\n\r\nChương 4: Những điều tuyệt diệu về cơ thể con người\r\n\r\nChương 5: Những điều kì diệu trong xã hội loài người\r\n\r\nChương 6: Những điều tuyệt diệu trong thế giới thể thao\r\n\r\nChương 7: Những điều tuyệt diệu trong thế giới nghệ thuật\r\n\r\nChương 8: Những điều kì diệu về kiến trúc\r\n\r\nChương 9: Điều kì diệu nhất của các phương tiện giao thông\r\n\r\nChương 10: Những cái nhất về quân sự\r\n\r\nChương 11: Điều kỳ diệu nhất về khoa học kỹ thuật',2,5,10,'nhung cai nhat tren the gioi.PNG'),(27,'Bí Mật Thế Giới - Bách Khoa Toàn Thư','Tuti',2014,300,56000,'Bí Mật Thế Giới - Bách Khoa Toàn Thư\r\n\r\nVũ trụ bao la ẩn chứa vô vàn những điều thần kì và huyền diệu: những chòm sao luôn là khởi nguồn của những giả tuởng và mơ ước vô hạn của con người. Đó là một vũ trụ đầy màu sắc và biến hoá khôn luờng: hằng tinh thì có một bức chân dung mĩ lệ, các ngôi sao thì có những đồ trang sức hình tròn đẹp đẽ, một số tinh thể lại đang từ từ thôn tính lẫn nhau, hố đen thì đang từ từ nuốt hết tất cả những thứ xung quanh nó, dải ngân hà thì như một chiếc đĩa bay khổng lồ, các ngôi sao bên ngoài hệ ngân hà hình thành nên “trường thành vũ trụ”, mặt trời thì khoác trên mình “chiếc áo lông vũ” màu sắc rực rỡ. Sao thổ phũ một lớp màn che lộng lẫy và thần bí, các tiểu hành tinh thì có thể va vào trái đất bất cứ lúc nào, “Mĩ nữ tóc dài” sao chổi thỉnh thoảng lại đến thăm nhân gian.',2,5,10,'bi mat the gioi - bach khoa toan thu.PNG'),(28,'Thiên Tài Kỳ Dị Và Đột Phá Toán Học','Tuti',2014,300,56000,'Thiên Tài Kỳ Dị Và Đột Phá Toán Học Của Thế Kỷ\r\n\r\nGrigory Perelman, thiên tài toán học người Nga, người đầu tiên giải được một trong bảy bài toán Thiên niên kỷ của viện toán học Clay với giải thưởng lên đến một triệu dollar đã chối bỏ cả thế giới, rút vào sống trong sự im lặng và cô lập hoàn toàn sau thành công vang dội. Câu chuyện trong cuốn sách này là cuộc đời và sự nghiệp của ông, từ lúc bắt đầu bước chân vào toán học, bỏ qua những bộn bề của cuộc sống, chỉ sống với niềm đam mê toán học của mình, cho đến lúc quay lưng lại không chỉ với toán học mà với toàn thế giới.',2,5,10,'thien tai ky di va dot pha toa hoc cua the ky.PNG'),(29,'Thế Giới Bị Quỷ Ám','Tuti',2014,300,56000,'Carl Sagan (1934-1996) là nhà thiên văn học và nhà vật lý thiên văn xuất sắc. Ông là người đi tiên phong trong lĩnh vực sinh học ngoài Trái đất, xúc tiến công cuộc tìm kiếm trí tuệ trong vũ trụ (dự án SETI) và đóng vai trò chủ chốt trong các dự án thám hiểm hành tinh Mariner, Viking và Voyager.',2,5,10,'the gioi bi quy am.PNG'),(30,'Khoa Học Khám Phá','Tuti',2014,300,56000,'Khoa Học Khám Phá - Khát Vọng Tới Cái Vô Hạn\r\n\r\nNếu từng có dịp đi tàu hỏa, bạn hẳn biết rằng hai đường ray phải song song với nhau để tàu có thể lăn bánh khắp mọi nơi. Thế nhưng nếu bạn đứng nhìn hai đường ray ấy, dường như chúng gặp nhau ở cuối tầm mắt và tàu không thể đi xa hơn nữa. Điều này thật không hợp lý, vì dù đứng ở Paris và không thể thấy Cannes, chúng ta vẫn có thể đón tàu từ Paris đến dự liên hoan phim tại Cannes. Nghịch lý hơn nữa, một nhà tư tưởng Hi Lạp cổ xưa đã lập luận rằng chuyến tàu của bạn phải đi hết một nửa quãng đường, rồi một nửa của quãng đường còn lại, rồi một nửa của quãng đường còn lại, rồi cứ tiếp tục đến vô hạn, và nếu thế bạn sẽ chẳng bao giờ đến nơi.\r\n\r\nLập luận rất lôgic này rõ ràng lại không thực tế vì chúng ta luôn có thể đi bất cứ nơi đâu, như một em nhỏ giúp cụ già sang bên kia đường. Khi có được một thời gian vô hạn để du hành vào vũ trụ và chiêm ngưỡng vô số những vì sao, một lúc nào đó bạn sẽ tự hỏi tại sao trời lại tối về đêm. Mà chính sự hiển nhiên ấy cũng đã làm trăn trở bao thế hệ các nhà khoa học, và giúp họ dần làm sáng tỏ vị trí của hành tinh của loài người trong vô hạn của vũ trụ. Qua Khát vọng tới cái vô hạn, Giáo sư Trịnh Xuân Thuận sẽ đưa bạn du hành trong thế giới của Vô hạn, từ thế giới của cái nhỏ nhất đến thế giới của cái lớn nhất, và làm sao những thắc mắc hết sức bình thường đã dẫn đến những khám phá vĩ đại nhất của nhân loại.',2,5,10,'khat vong toi cai vo han.PNG'),(31,'Cái Vô Hạn Trong Lòng Bàn Tay','Tuti',2014,300,56000,'Khoa Học Khám Phá - Cái Vô Hạn Trong Lòng Bàn Tay\r\n\r\nNội dung sách đề cập đến cuộc đối thoại của hai nhà khoa học. Một của nhà vật lý thiên văn vốn là phật tử, người mong muốn đem những hiểu biết khoa học của bản thân đối chiếu với những nguồn gốc triết học về sự sống theo quan niệm nhà Phật. Một là nhà khoa học phương Tây trở thành nhà sư, người mà những kinh nghiệm cá nhân đã kích thích ông so sánh hai con đường nhận thức hiện thực khách quan.',2,5,10,'cai vo han trong long ban tay.PNG'),(32,'Hat Higgs','Tuti',2014,300,56000,'Hat Higgs - Con Đường Phát Minh Và Khám Phá \"Hạt Của Chúa\"\r\n\r\nPhần 1: Thuật lại quá trình lịch sử, từ câu hỏi đơn giản về khối lượng của vật chất các nhà khoa học đã dần khám phá ra cấu trúc cơ bản của vật chất. Phát hiện mới này khi giải quyết câu hỏi cũ lại đặt ra thêm những nghi vấn mới, thôi thúc các nhà khoa học tiếp tục nghiên cứu, từ những hạt cơ bản đến mục tiêu giải quyết câu hỏi về nguồn gốc vũ trụ. Các hạt cơ bản được phát minh ngày càng nhiều, và hạt Higg cùng với trường Higg đã được đưa ra để giải thích cho việc phân chia các lực trong tự nhiên, các lực tạo dựng nên vũ trụ vật chất.\r\n\r\nPhần 2: Từ việc phát triển các hạt trên lý thuyết, giới khoa học cố gắng chứng minh sự tồn tại của các hạt đó qua các thí nghiệm. Dù chậm hơn so với kết quả lý thuyết, các phòng thí nghiệm đã được xây dựng, ngày càng hiện đại hơn nhằm “bắt” các hạt đến được trái đất qua tia vũ trụ hoặc được tạo ra qua sự va chạm trong các máy gia tốc. Hầu hết các hạt đã được tìm thấy (thông qua đó chứng tỏ nó thực sự tồn tại), và hạt Higg, sau biết bao khó nhọc của các nhà vật lý, cuối cùng cũng đã được tìm thấy, sự kiên trì của họ đã được đền đáp.',2,5,10,'Hat Higgs.PNG');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_in_category`
--

DROP TABLE IF EXISTS `book_in_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_in_category` (
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`category_id`),
  KEY `fk_book_has_category_category1_idx` (`category_id`),
  KEY `fk_book_has_category_book1_idx` (`book_id`),
  CONSTRAINT `fk_book_has_category_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_in_category`
--

LOCK TABLES `book_in_category` WRITE;
/*!40000 ALTER TABLE `book_in_category` DISABLE KEYS */;
INSERT INTO `book_in_category` VALUES (16,1),(17,1),(21,1),(27,1),(12,2),(28,2),(29,2),(30,2),(31,2),(18,3),(19,3),(20,3),(24,3),(25,3),(26,3),(14,4),(15,4),(22,5),(23,5),(4,6),(6,7),(9,7),(10,7),(13,7),(5,8),(8,8),(11,8);
/*!40000 ALTER TABLE `book_in_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT 'Other',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Toán học'),(2,'Văn học'),(3,'Vật lý'),(4,'Hóa học'),(5,'Sinh học'),(6,'Khoa học máy tính'),(7,'Sách nước ngoài'),(8,'Tiểu thuyết'),(9,'Truyện tranh');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount` int(11) NOT NULL,
  `description` text,
  `image_link` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'Chào mừng Giải phóng miền Nam','2014-04-01','2014-05-02',50,NULL,NULL);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `role` enum('admin','storekeeper','business','normal') DEFAULT 'normal',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'minhpro','minha0pro@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b','199 Hoang Mai - Ha Noi','admin'),(2,'minhnt','minhnt@bk.com','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','Đại học Bách Khoa ','normal'),(3,'minhbk','minhbk@bk.com','7c4a8d09ca3762af61e59520943dc26494f8941b','Đại học Bách Khoa ','normal');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `member_BINS` BEFORE INSERT ON `member` FOR EACH ROW
begin
	set new.pass = SHA1(new.pass);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `member_comment_book`
--

DROP TABLE IF EXISTS `member_comment_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_comment_book` (
  `member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `star` int(11) NOT NULL DEFAULT '5',
  `date` date NOT NULL,
  PRIMARY KEY (`member_id`,`book_id`),
  KEY `fk_member_has_book_book1_idx` (`book_id`),
  KEY `fk_member_has_book_member1_idx` (`member_id`),
  CONSTRAINT `fk_member_has_book_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_member_has_book_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_comment_book`
--

LOCK TABLES `member_comment_book` WRITE;
/*!40000 ALTER TABLE `member_comment_book` DISABLE KEYS */;
INSERT INTO `member_comment_book` VALUES (2,29,' Cuốn sách đua ta đến với rất nhiều lý thú',5,'2014-12-07'),(2,31,' Một cuốn sách rất hay',5,'2014-12-07');
/*!40000 ALTER TABLE `member_comment_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `member_comment_book_AINS` AFTER INSERT ON `member_comment_book` FOR EACH ROW
begin
	update book set star = (star * comment_count + new.star) / (comment_count + 1),
	comment_count = comment_count + 1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `member_comment_book_ADEL` AFTER DELETE ON `member_comment_book` FOR EACH ROW
begin
	update book set star = (star * comment_count - old.star) / (comment_count - 1),
	comment_count = comment_count - 1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-07 16:27:50
