-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bsongs
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Nhạc Hải Ngoại'),(2,'Nhạc Việt'),(3,'Nhạc Chế'),(4,'Nhạc Pop'),(5,'Nhạc Rock'),(6,'Nhạc Thánh'),(7,'Nhạc Remix'),(8,'Nhạc Dance');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Khương Ngọc Lâm','chatwithme9x@gmail.com','https://ngockhuong.com','Liên hệ admin trang'),(2,'Lâm Ngọc Khương','chatwithme9x@gmail.com','https://ngockhuong.com','Liên hệ admin trang'),(3,'Trần Văn Sơn','sontv@vinaenter.com','http://vinaenter.edu.vn','Liên hệ admin trang'),(4,'Nguyễn Văn Định','chatwithme9x@gmail.com','http://vinaenter.edu.vn','Liên hệ admin trang'),(5,'dinh','nvdinh0766777123@gmail.com','111','		222					');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `preview_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `detail_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `picture` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `counter` int NOT NULL DEFAULT '0',
  `cat_id` int NOT NULL,
  PRIMARY KEY (`id`,`cat_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Nơi Ấy Con Tìm Về','Loi bai hat Noi Ay Con Tim Ve Nhac si Phan Manh Quynh Loi dang boi sonnycleon','Ngay con cat tieng khoc chao doi \r\nNgay me da noi niem vui trao dang ngap troi \r\nBang yeu thuong cua cha da danh \r\nde trong mai am tung ngay qua con lon len \r\nLa loi ru me dua ben canh vong cho con say \r\ngiac ngu \r\nla loi cha tung ngay am em mong sao cho con nen nguoi','2018-08-16 02:01:46','noi-ay-con-tim-ve.jpg',22,2),(2,'Cang Kho Cang Yeu cho','Loi bai hat Cang cho Kho Cang YeuLoi dang boi kenvip88','Di dau tim ra duoc mot niem tin \r\nNiem tin mai mai chang phai tan \r\nGiua thoang choc nghe nhip tim rung dong \r\nVoi nhung yeu thuong','2019-12-18 06:20:15','cang-kho-cang-yeu.jpg',23,4),(3,'Vẫn Mong Chừ','Loi bai hat Van Mong cho Loi dang boi huongviet1988 khờ','Anh van cho doi em \r\nKhi nang chieu roi \r\nDuong ve vang tenh \r\nMay bay cuoi troi buon thuong \r\nTheo gio ve dau ngan phuong \r\nAnh van cho doi em \r\nMua hat hiu ngoai hien','2019-12-12 05:48:09','java3.jpg',15,2),(4,'Chờ em','chờ em, chờ những kỹ niệm hay chờ những niềm đau !!!.','<p>chờ em, chờ những kỹ ni&ecirc;̣m hay chờ những ni&ecirc;̀m đau !!!.<br />\r\nNhững đ&ecirc;m thức trắng như h&ocirc;m nay anh v&acirc;̃n làm c&ocirc;ng vi&ecirc;̣c cũ....đó là Chờ em......<br />\r\nEm bi&ecirc;́t kh&ocirc;ng, đ&ecirc;m nay anh đã nghe m&ocirc;̣t bản nhạc r&acirc;́t hay, hay lắm. Anh nghe và hát theo lời có sẵn, nhưng.....chỉ hát được nữa bài thì anh ngừng hát theo.....vì sao em bi&ecirc;́t kh&ocirc;ng !!!.....vì .....nước mắt anh đang rơi.........<br />\r\n&quot;Mơ từng chiều về để hồn vẫn mơ<br />\r\nH&igrave;nh b&oacute;ng chưa phai mờ theo năm th&aacute;ng<br />\r\nD&ugrave; người đ&atilde; đi về nơi phương xa<br />\r\nĐể giờ đ&acirc;y con tim cứ ứơc mơ, cứ ng&oacute;ng chờ<br />\r\nH&agrave;ng c&acirc;y nghi&ecirc;ng lao xao c&aacute;nh chim ơi c&ograve;n bay về chốn nao</p>\r\n\r\n<p>Đau, ng&agrave;y vội t&agrave;n để đời m&atilde;i đau<br />\r\nTừng ph&uacute;t tr&ocirc;i qua chờ trong nỗi nhớ<br />\r\nDẫu trong ta cuộc t&igrave;nh đ&atilde; lỡ<br />\r\nNgười ơi khi n&agrave;o cho ta<br />\r\nThời gian ko bu&ocirc;ng tha để cho ta chờ em m&atilde;i th&ocirc;i</p>\r\n\r\n<p>Kh&ocirc;ng gian bao la đường về chiếc b&oacute;ng c&ocirc; đơn m&igrave;nh ta bước<br />\r\nĐ&ocirc;i ch&acirc;n đau thương ch&ocirc;ng gai ch&aacute;y s&aacute;ng l&ecirc;n tr&ecirc;n đời ta<br />\r\nKhi xưa b&ecirc;n em l&ograve;ng ta vui mỗi khi em cười<br />\r\nGiờ c&ograve;n lại g&igrave; nh&igrave;n quanh chỉ nỗi đau th&ocirc;i</p>\r\n\r\n<p>Tr&oacute;t y&ecirc;u em l&agrave; anh trọn đời m&atilde;i thương nhớ<br />\r\nKhi con tim b&acirc;y giờ vẫn lu&ocirc;n lu&ocirc;n mong chờ<br />\r\nD&ugrave; hai ta c&aacute;ch xa<br />\r\nCầu mong 1 ng&agrave;y cho ta nghe tiếng em<br />\r\nTrở về cho đời ta th&ocirc;i đ&acirc;u ng&agrave;y th&aacute;ng<br />\r\nNgười y&ecirc;u hỡi xin quay về nơi đ&acirc;y.</p>\r\n\r\n<p>Anh chờ em trọn đời đến mu&ocirc;n kiếp...<br />\r\nCầu mong một ng&agrave;y cho ta nghe tiếng em<br />\r\nTrở về cho ta th&ocirc;i đau v&igrave; nhớ<br />\r\nNgười y&ecirc;u ơi anh sẽ c&ograve;n chờ em......&quot;</p>\r\n\r\n<p>Anh cứ nghĩ đ&acirc;y là bài hát dành ri&ecirc;ng cho anh v&acirc;̣y.....Anh ng&ocirc;́c lắm phải kh&ocirc;ng? vì cứ mãi chờ m&ocirc;̣t người kh&ocirc;ng quay v&ecirc;̀.............!!!!!</p>\r\n\r\n<p>em giờ đã có cu&ocirc;̣c s&ocirc;́ng ri&ecirc;ng, có người y&ecirc;u và đang r&acirc;́t hạnh phúc nhỉ...!! Anh kh&ocirc;ng bi&ecirc;́t nữa vì đó chỉ là những suy đoán của ri&ecirc;ng anh mà th&ocirc;i. Còn anh....anh v&acirc;̃n như ngày nào; v&acirc;̃n là chàng ng&ocirc;́c m&ocirc;̃i l&acirc;̀n chạy xe ngang qua con hẻm vào nhà em là lại nhìn vào...., v&acirc;̃n là chàng ng&ocirc;́c l&ecirc;n face chỉ lặng lẻ vào face của em đ&ecirc;̉ bi&ecirc;́t em hi&ecirc;̣n như th&ecirc;́ nào....., v&acirc;̃n là chàng ng&ocirc;́c thức tới khuya nghe nhạc r&ocirc;̀i nhớ v&ecirc;̀ những kỹ ni&ecirc;̣m đã cùng có với em....., v&acirc;̃n là chàng ng&ocirc;́c từ ch&ocirc;́i tình cảm những c&ocirc; gái khác vì v&acirc;̃n nhớ em.....!!!!!!</p>\r\n\r\n<p>ng&ocirc;́c.....ng&ocirc;́c.....ng&ocirc;́c.....!!!! Đó có lẻ là từ thích hợp nh&acirc;́t đ&ocirc;́i với tình cảm anh dành cho em......Em bi&ecirc;́t kh&ocirc;ng, ngày đó khi em nhắn anh đừng làm phi&ecirc;̀n cu&ocirc;̣c s&ocirc;́ng của em nữa.......anh đau lắm. Đ&ecirc;́n khi em ch&acirc;́p nh&acirc;̣n quen anh thì anh lại bu&ocirc;ng lời cay đắng....chia tay.....có lẽ em nghĩ rằng anh mu&ocirc;́n trả thù em nhưng kh&ocirc;ng phải em à.....khi lớn anh bi&ecirc;́t suy nghĩ, anh mu&ocirc;́n em và anh chỉ lo học hành, đ&ecirc;̉ l&acirc;́y c&ocirc;ng danh, sự nghi&ecirc;̣p trước r&ocirc;̀i hãy y&ecirc;u nhau sau....anh gi&acirc;́u em vì nghĩ em sẽ hi&ecirc;̉u, vì nghĩ em sẽ chờ anh................nhưng................<br />\r\n.......................anh sai r&ocirc;̀i,.............thời gian và sự c&ocirc; đơn sẽ làm thay đ&ocirc;̃i con người, thay đ&ocirc;̃i tình y&ecirc;u.........!!!!!!!!!!!<br />\r\nEm quen anh &acirc;́y khi g&acirc;̀n h&ecirc;́t năm hai, anh bi&ecirc;́t chứ..........khi đó anh đã làm đi&ecirc;̀u r&acirc;́t ngu ng&ocirc;́c phải kh&ocirc;ng em.............giờ thì cũng đã hơn 3 nă mình kh&ocirc;ng gặp nhau r&ocirc;̀i em nhỉ....đ&ecirc;́n giờ phút này tim anh v&acirc;̃n còn hình bóng em, bi&ecirc;́t sau được khi tim anh trót y&ecirc;u em r&ocirc;̀i........................................!!!!!!!!!!!!!!!!!</p>\r\n','2019-12-12 05:48:20','java4.jpg',15,2),(5,'Em cho gái mưa','Mưa trôi cả bầu Trời nắng, trượt THEO những nỗi buồn \r\nThấm ướt lệ sầu môi đắng vì đánh mất hy vọng \r\nLần đầu gặp nhau dưới mưa, trái tim rộn ràng bởi enh nhìn \r\nTình cảm dầm mưa thấm lâu, em nào ngờ... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2019-12-19 05:46:08','',16,2),(6,'Đổi thay nhau','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2019-12-18 06:24:04','doi-thay.jpg',14,1),(7,'Yêu em nhiều đến thế','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2020-09-11 20:03:17','java7.jpg',14,2),(8,'Tại sao','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2020-09-11 20:02:21','java8.jpg',19,2),(9,'Dĩ Vãng Cuộc Tình','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2019-12-18 07:55:16','java9.jpg',21,5),(10,'Nhớ để quên','Chẳng lẽ cứ xa nhau là không thể trở lại với nhau nữa và chẳng lẻ những kỹ niệm ngày xưa sẽ mãi trôi xa....!','<p>Chẳng lẽ cứ xa nhau là không thể trở lại với nhau nữa và chẳng lẻ những kỹ niệm ngày xưa sẽ mãi trôi xa....!<br />\r\nPhải rồi....mới đó cũng vài năm rồi nhỉ...và giờ anh cười, cười vì anh vẫn không thể xóa tên em...<br />\r\nAnh ngốc thật nhỉ?. Mang theo yêu dấu và nỗi đau về em khi mà em đã ra đi...ước rằng hôm qua chỉ là cơn mơ để anh được mãi mơ về em và mãi không muốc thức giấc...<br />\r\n\"Thế nước mắt cứ khẽ lại rơi, nỗi đau riêng trong tim không nói nên lời. Hỡi nước mắt hỡi kỹ niệm ơn hãy cho ta một lần về phút ban đầu.....\"<br />\r\nCa từ này anh vẫn mãi không quên, anh cài từ khi hai ta hai lối. Anh vẫn sẽ nhớ, sẽ đi, đi về phía không em...</p>\r\n','2020-09-11 20:03:05','java10.jpg',42,2),(11,'Only Love','có phải một ngày nào đó em cũng mãi xa cuộc đời tôi !\r\ncó phải tôi vẫn luôn là người ngộ nhận về một câu chuyện tình yêu tuyệt đẹp !','<p>có phải m&ocirc;̣t ngày nào đó em cũng mãi xa cu&ocirc;̣c đời t&ocirc;i !<br />\r\ncó phải t&ocirc;i v&acirc;̃n lu&ocirc;n là người ng&ocirc;̣ nh&acirc;̣n v&ecirc;̀ m&ocirc;̣t c&acirc;u chuy&ecirc;̣n tình y&ecirc;u tuy&ecirc;̣t đẹp !<br />\r\ntrong màn đ&ecirc;m , ca từ của &quot; Only Love&quot; ng&acirc;n vang cũng chính là lúc t&acirc;m trạng b&ocirc;̀i h&ocirc;̀i và dạt dào cảm xúc với những rung đ&ocirc;̣ng v&ecirc;̣ m&ocirc;̣t người t&ocirc;i từng r&acirc;́t y&ecirc;u....!<br />\r\nchắc giờ này em đang say gi&acirc;́c n&ocirc;̀ng sau m&ocirc;̣t ngày dài hạnh phúc...à kh&ocirc;ng ! đúng hơn là em đang t&acirc;̣n hưởng m&ocirc;̣t cu&ocirc;̣c&nbsp;s&ocirc;́ng hạnh phúc với tình y&ecirc;u của mình....<br />\r\nT&ocirc;i vui, t&ocirc;i cười khi nhìn em hạnh phúc từ phía sau - m&ocirc;̣t nơi mà chẳng bao giờ em bi&ecirc;́t - &quot; nơi phía sau hạnh phúc&quot;.<br />\r\nem bi&ecirc;́t kh&ocirc;ng, từ ngày kh&ocirc;ng còn gặp em nữa , cu&ocirc;̣c s&ocirc;́ng của anh thay đ&ocirc;̃i r&acirc;́t nhi&ecirc;̀u. Anh kh&ocirc;ng còn nghẹn ngào, b&ocirc;́i r&ocirc;́i khi th&acirc;́y em b&ecirc;n người &acirc;́y nữa, cũng kh&ocirc;ng còn từng đ&ecirc;m nhớ v&ecirc;̀ hình ảnh của em, của những kỹ ni&ecirc;̣m ngày ta còn c&acirc;́p sách đ&ecirc;́n trường. Trong anh giờ chỉ còn ký ức - m&ocirc;̣t ký ức v&ecirc;̀ m&ocirc;́i tình đ&acirc;̀u kh&ocirc;ng phai.<br />\r\ntừ khi xa em, anh đã thử r&acirc;́t nhi&ecirc;̀u cách đ&ecirc;̉ qu&ecirc;n em: &quot; Anh lao vào c&ocirc;ng vi&ecirc;̣c, vào vi&ecirc;̣c học và hơn cả anh đã ép bản th&acirc;n y&ecirc;u m&ocirc;̣t người con gái khác với hy vọng xóa được hình ảnh của em...&quot; Nhưng em à! giờ anh nh&acirc;̣n ra đi&ecirc;̀u đó là kh&ocirc;ng th&ecirc;̉...!!!<br />\r\nCu&ocirc;̣c s&ocirc;́ng b&ocirc;̣n b&ecirc;̀ với những lo toan kh&ocirc;ng th&ecirc;̉ khi&ecirc;́n anh qu&ecirc;n em, khi y&ecirc;u người con gái khác anh lại chỉ th&acirc;́y hình ảnh của em nhi&ecirc;̀u hơn....Anh ng&ocirc;́c lắm phải kh&ocirc;ng! khi bi&ecirc;́t được có người con trai khác t&ocirc;́t hơn anh y&ecirc;u em anh đã đ&acirc;̀u hàng và chúc phúc cho hai người....Th&acirc;̣t sự giờ nghỉ lại lúc đó anh th&acirc;́y mình r&acirc;́t hèn và y&ecirc;́u đu&ocirc;́i<br />\r\nnhưng n&ecirc;́u anh được quay lại lúc đó thì anh v&acirc;̃n sẽ hành đ&ocirc;̣ng như v&acirc;̣y, em bi&ecirc;́t vì sao kh&ocirc;ng ? vì Anh y&ecirc;u Em.<br />\r\nVà anh v&acirc;̃n tin sẽ có ngày chúng ta gặp lại nhau, cười nói vui đùa cùng nhau như hai người bạn th&acirc;n của ngày trước.....<br />\r\nphải kh&ocirc;ng em - người lạ từng quen !</p>\r\n','2019-12-18 06:34:34','only-love.jpg',25,1),(12,'Khó','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2019-12-18 07:54:00','java12.jpg',23,7),(13,'Bay giữa ngân hà','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2023-06-21 01:14:53','java13.jpg',50,7),(14,'Chọn Giê su thôi','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2023-06-21 01:15:16','java14.jpg',55,6),(15,'Tìm về nhà cha','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','Mình hợp nhau đến như vậy thế nhưng... không phải là yêu! \r\nVà em muốn hỏi anh rằng \"chúng ta là thế nào?\" \r\nRồi... lặng người đến vô tận, trách sao được sự tàn nhẫn \r\nAnh trót vô tình.. thương em như- là- em- gái... ','2019-12-18 06:46:43','java15.jpg',54,6),(16,'cho nhau loi di rieng','Xin giấu con Nơi cánh tay Cha Che phủ con Nhờ bóng Thiên Cha quyền năng ','Dù giông tố khiếp kinh, sóng gió vây quanh Nguyện xin Chúa dắt đưa vượt qua bão tố Lạy ha Thánh hiển vinh, Vua trên dương gian Con uôn vững lòng vì biết Cha bên con ','2020-09-11 19:09:38','java16.jpg',66,6),(17,'Cho đến mãi mãi','Gai đâm thấu buốt nơi trán Giê-su Bao nhiêu ủa sả chất hết trên Ngài Lằn roi chứng minh ho cả thế giới Ngài yêu con đến nỗi chết thay con','Cha đã xóa hết tất cả lỗi lầm Giê-su chết thế công lý đã trọn Vì Ngài quá yêu bằng \r\n lòng hy sinh Nguyện xin Thánh ý của Cha được trọn','2020-09-11 19:31:59','java17.jpg',100,6),(18,'Vua chí ái','Gai đâm thấu buốt nơi trán Giê-su Bao nhiêu ủa sả chất hết trên Ngài Lằn roi chứng minh ho cả thế giới Ngài yêu con đến nỗi chết thay con','Cha đã xóa hết tất cả lỗi lầm Giê-su chết thế công lý đã trọn Vì Ngài quá yêu bằng \r\n lòng hy sinh Nguyện xin Thánh ý của Cha được trọn','2023-06-20 14:09:09','java18.jpg',111,6);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21  8:22:26
