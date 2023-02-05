-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `assignment`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `assignment`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email_id` (`email_id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'english article 1','Frank',1,'tset1@test.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis turpis est, facilisis eget maximus eget, lacinia id diam. Vestibulum dignissim lorem tortor, ac feugiat lorem bibendum in. Morbi blandit mauris dolor, et dapibus metus venenatis ac. Praesent rhoncus hendrerit nisi, non condimentum enim ornare in. Proin tortor risus, facilisis semper scelerisque vel, lacinia eget libero. In nibh est, accumsan at urna sed, convallis varius metus. Vestibulum tristique ultricies dignissim.','2023-02-05 08:39:06'),(2,'english article 2','Frank',1,'tset1@test.com','Curabitur ante eros, mollis eget nisi a, cursus porttitor neque. Proin luctus posuere iaculis. Quisque porta tristique quam vel fringilla. Phasellus vitae quam lectus. In fermentum volutpat sem sed euismod. Praesent massa dolor, elementum id enim vel, maximus pulvinar felis. Etiam vitae velit scelerisque, venenatis eros a, ullamcorper sapien. Aliquam vitae sollicitudin sapien. Cras ullamcorper ante libero, a iaculis eros ultricies nec. Proin molestie, risus et fringilla tempor, eros ante convallis sapien, id venenatis eros sapien non sapien. Proin eu imperdiet libero, nec rutrum ex. Nulla aliquet arcu ut massa commodo, sed fermentum ante condimentum.','2023-02-05 08:39:06'),(3,'english article 3','Ziva',3,'tset3@test.com','Donec rutrum purus quis enim efficitur sagittis. Sed quis sollicitudin nulla. Phasellus quis arcu a ipsum feugiat suscipit. Fusce fringilla purus quis nisl pulvinar, nec vestibulum arcu varius. Sed consequat placerat justo in consectetur. Suspendisse posuere ultrices purus et tincidunt. Praesent et purus ipsum. Curabitur dictum augue ut diam vestibulum, euismod porta turpis blandit. Mauris ultrices hendrerit lectus eget laoreet. Pellentesque pharetra lacinia ante, eu lacinia orci eleifend nec. Ut enim dolor, volutpat sed tempor a, convallis id quam. Quisque egestas quis lorem quis dignissim.','2023-02-05 08:39:06'),(4,'english article 4','Amy',2,'tset2@test.com','Maecenas ac ipsum et lacus ultricies fermentum ac in ipsum. Nunc non rhoncus nisi, in egestas augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque vulputate tempus suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce aliquet dictum arcu quis imperdiet. Quisque tristique odio at diam maximus, ut lobortis magna commodo. Integer consectetur, augue vel hendrerit fermentum, arcu turpis tristique augue, et blandit dolor lectus in eros. Sed pellentesque tincidunt diam, non maximus leo auctor nec. Vestibulum convallis bibendum diam, ut vestibulum enim faucibus at. Fusce quis dictum elit. Etiam fermentum elit et velit ornare, non euismod dui mollis. Sed id tincidunt risus. Cras eget sem et nisi pretium ullamcorper. Curabitur consequat diam nulla, at pulvinar arcu condimentum pharetra.','2023-02-05 08:39:06'),(5,'english article 5','David',4,'tset4@test.com','Maecenas facilisis tellus vitae odio accumsan, sed dapibus est scelerisque. Sed interdum tempus aliquam. Integer lorem velit, hendrerit et quam non, varius scelerisque sem. Aenean ultrices venenatis risus, ac aliquet ex cursus non. Duis cursus magna eget nisi viverra lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus fringilla ipsum ac nunc dapibus feugiat.','2023-02-05 08:39:06'),(6,'english article 6','Amy',2,'tset2@test.com','Fusce pretium mattis diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In non est nisi. Pellentesque sit amet facilisis felis, bibendum tincidunt dui. Morbi iaculis urna in augue convallis, ut sagittis augue venenatis. Vivamus et euismod turpis, ac varius lectus. Etiam sed maximus enim.','2023-02-05 08:39:06'),(7,'english article 7','Frank',1,'tset1@test.com','Mauris condimentum aliquet eros. Duis accumsan ipsum eu turpis efficitur, eu tempor magna elementum. Fusce eget euismod dui. Cras commodo quis purus eu rutrum. Nam gravida urna at cursus consectetur. In at sem ipsum. Quisque interdum feugiat ante, et cursus felis commodo ut. Maecenas porta, lectus id luctus pulvinar, purus mi viverra tortor, id faucibus nunc nibh auctor tellus. Cras tincidunt sodales risus, nec mattis eros dictum sit amet.','2023-02-05 08:39:06'),(8,'english article 8','Jhon',6,'tset6@test.com','Aliquam vehicula scelerisque magna, id imperdiet massa volutpat ullamcorper. In ullamcorper interdum nibh ac finibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi. Aliquam consequat justo eget tortor interdum viverra. Cras vehicula aliquet euismod. Sed mollis ante odio, vel suscipit nulla lobortis quis.','2023-02-05 08:39:06'),(9,'english article 9','小明',9,'tset9@test.com','Aliquam vel mattis nisi, id rutrum arcu. Suspendisse potenti. Suspendisse vel finibus ex, eget porta nunc. Integer in massa orci. Maecenas finibus justo id imperdiet dapibus. Curabitur in dapibus dui, ut fermentum urna. Fusce tincidunt turpis tellus, quis interdum nibh vehicula porta. Vestibulum libero eros, lacinia non tincidunt in, porttitor quis urna. Nam quis massa enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer interdum nec massa eu finibus.','2023-02-05 08:39:06'),(10,'english article 10','Amy',2,'tset2@test.com','Lorem ipsum dolor sit amet.','2023-02-05 08:39:06'),(11,'english article 11','小美',8,'tset8@test.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed libero sit amet nulla condimentum rutrum ac id lectus. Donec tincidunt eget dolor in aliquet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse ut libero pharetra nunc ultricies interdum. Fusce auctor, nisi in sodales fringilla, nulla leo scelerisque nulla, ut egestas libero neque sit amet lacus. In sed libero lacinia, pulvinar urna nec, sodales tortor. Sed bibendum maximus augue ac feugiat. Duis at justo malesuada, tincidunt libero vel, eleifend est. Cras molestie eu ligula at tempor. Suspendisse potenti. Ut tempor turpis purus, vel ornare justo iaculis ut.','2023-02-05 08:39:06'),(12,'english article 12','小美',8,'tset8@test.com','Donec pulvinar libero non odio facilisis hendrerit non non nulla. Quisque egestas ut urna vitae suscipit. Ut tincidunt felis et egestas bibendum. Sed tristique, nisl nec condimentum vulputate, dui felis elementum ipsum, ac pretium neque elit at ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam pharetra sollicitudin risus sit amet euismod. In augue purus, elementum vel leo ut, interdum placerat arcu. In consectetur et elit quis faucibus. Fusce tristique luctus urna, et sagittis mauris ultrices maximus. Ut id velit ante. Mauris ipsum diam, luctus at tincidunt vitae, dignissim eget arcu. Pellentesque neque magna, iaculis eget luctus eget, accumsan at elit.','2023-02-05 08:39:06'),(13,'english article 13','小美',8,'tset8@test.com','Maecenas sit amet ullamcorper risus, nec ornare massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis bibendum velit nec mi feugiat, eu dictum lorem blandit. Ut at auctor nisi. Praesent vel fermentum neque. Sed fringilla, nunc vitae eleifend faucibus, risus urna venenatis tellus, cursus efficitur est ante ac purus. Curabitur a sodales risus. Phasellus odio ante, varius at ante at, pretium faucibus elit. Proin nisl justo, pellentesque a erat eu, dignissim placerat nulla. Praesent varius facilisis est, vel lobortis eros dictum quis. Nam placerat nec dolor sit amet tempor. Donec scelerisque placerat nibh vel ullamcorper. Donec sed tincidunt risus. Nulla eget ipsum in augue porta sodales nec vitae quam. Nam consectetur erat sit amet dui porttitor vehicula. Proin volutpat lacus non elit gravida cursus.','2023-02-05 08:39:06'),(14,'english article 14','Jay哥',10,'tset10@test.com','Suspendisse rhoncus, augue ut rhoncus consectetur, ipsum mi egestas nibh, nec varius risus felis sed justo. Donec ipsum ante, hendrerit in lacinia eu, faucibus ultricies turpis. Phasellus at fermentum sem, sed vehicula felis. Maecenas pretium facilisis mauris eget vulputate. Sed euismod mi vitae dolor pharetra, lacinia hendrerit neque consequat. Aenean a fringilla tortor. Praesent lacinia quis magna eget consectetur. Aliquam justo est, aliquam rhoncus nunc dictum, consectetur dictum est. Proin eget libero pellentesque, scelerisque quam id, eleifend ex. Quisque placerat iaculis justo, faucibus accumsan tortor. Morbi finibus risus quis leo tempus molestie.','2023-02-05 08:39:06'),(15,'english article 15','大壯',7,'tset7@test.com','Integer elit augue, ullamcorper ac consequat in, volutpat eget augue. Mauris interdum fermentum nisl, eu bibendum nisi lobortis lobortis. Quisque eget scelerisque sem. Curabitur mollis leo sapien, ut eleifend nibh fringilla sed. Nullam suscipit dictum quam at accumsan. Duis nec augue ut arcu sollicitudin congue a et orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec id libero sit amet massa aliquam mattis. Fusce faucibus, metus et sagittis malesuada, lacus arcu gravida tellus, et finibus augue urna et turpis. Duis ac luctus nisl. Proin et nulla eu arcu accumsan ultrices id quis libero. Duis interdum lacus turpis, in ultrices nunc egestas nec. Phasellus quis tincidunt ante, et pulvinar ipsum. Sed eros magna, commodo sit amet libero sed, hendrerit dapibus eros. Nam fermentum lacus turpis, a aliquet neque euismod vel.','2023-02-05 08:39:06'),(16,'中文文章 1','Jay哥',10,'tset10@test.com','感謝我才們一因為以的朋，望的讓我覺。\n\n推薦，時候暗來臨自己跑出來我現在真的有，其言論自個可以，邊有冷到那種啊啊我，是時候我嚇到女也不，的互動了的路然我嚶嚶附近的。吐槽人就的一位打電，放溫度正我什麼的各位，沒不要再是因網站。\n\n回不去去做小精靈天啊旅，感受美麗好像恭喜自己，這幾天還是可了我可以先，我覺的情果朋友，在這個之只覺得，興奮有點小汪少平。我不了才在家，真的太看看人，了一上，麼記為甚麼我知男生睡前也是有：個人希望可叫他很好玩，心裡要發展似乎的意思像但了發現。','2023-02-05 08:39:06'),(17,'中文文章 2','Amy',2,'tset2@test.com','起來這是的不斷時間根本是，的玩商店啊主是，幸運這超級需要，東西是跟突然麼都不，來變成午餐得到問題我自己，的不知來到了再可愛的。知道擔心哈哈哈更新，的劇情不是他自己之前有：大的都的觀，邊還如果是，也都電影開始專業我起之後有：在他小時候不是是有換卡。那麼慢也不敢會學生的畫面，非常我也很好的著到自，啊大聲能還我可以，成是他不是那有人想，聖一因嗚嗚嗚有興趣是麼，角色自己不出來附近果還是。','2023-02-05 08:39:06'),(18,'中文文章 3','Aimer',5,'tset5@test.com','功鼓手日：王明征能時斷金闕門氣，垂東，古今幾柳風，隨樓渡未來幽人二十年：天長雨尋黃鶴。怨遙夜落征戰隨帆顏色彈東風：到不舟宮殿，杜鵑盡老心垂山昭陽殿遊子，春風青天重處尋吟亦爭王東流水⋯五十金漢家隨流水淚好歌聲，至今地黃鶴。去人間春珠簾難當時後庭花野老，一薄風雨流蒼茫。作商人腸潯陽出，遙上人公孫不荒流古，涼風，綠住江水驚山中難難於逢山，下明月者琵琶應餘漢宮：煙塵胡獨五里。中骨翠七去曲燭登高昨夜，深曙色亦如此與聽謝公閣。','2023-02-05 08:39:06'),(19,'中文文章 4','Jhon',6,'tset6@test.com','世事里天子平今，身陰關有使人⋯深草人駐馬。黃雲萬里中更何處白髮秋⋯垂在幾水長江高江何終松兒時無，天地相識上故人晚夕漢家夜雨，路難死生門依舊，聖作商人才斗逐，平明歸月平明雨如無天涯。','2023-02-05 08:39:06'),(20,'中文文章 5','Jhon',6,'tset6@test.com','寥落古行宮，洗手作羹湯，清川帶長薄，連山到海隅，返景入深林，此物最相思，北斗七星高，落日故人情，蜀僧抱綠綺，稱名憶舊容，新知遭薄俗，茅屋訪孤僧，戍鼓斷人行，君子意如何，對棋陪謝傅，月湧大江流，功蓋三分國，梅柳渡江春，誰能將旗鼓，波撼岳陽城，北闕休上書，壯志逐年衰，風鳴兩岸葉，孤帆天際看，春眠不覺曉，孤壁野僧鄰，露氣寒光集，惟聞鐘磬音，情人怨遙夜，雙淚落君前，欲祭疑君在，河聲入海遙，遙夜泛清瑟，言師採藥去，移家雖帶郭，須盡邱壑美，惆悵南朝事，春草閉閒門，荷笠帶斜陽，魚龍聽梵聲。','2023-02-05 08:39:06'),(21,'中文文章 6','Frank',1,'tset1@test.com','昔日戲言身後事，平明送客楚山孤，晨搖玉珮趨金殿，鸚鵡前頭不敢言，朝辭白帝彩雲間，欲取蕪城作帝家，嵩雲秦樹久離居，九重誰省諫書函，永夜角聲悲自語，夷歌數處起漁樵，庾信平生最蕭瑟，樂遊原上望昭陵，青山隱隱水迢迢，贏得青樓薄倖名，天階夜色涼如水，密雨斜侵薜荔牆，身多疾病思田里，上有黃鸝深樹鳴，多情只有春庭月，媚眼微看宿鷺窠，姑蘇城外寒山寺，鄉音無改鬢毛催，回日樓臺非甲帳，碧天如水夜雲輕，賈誼上書憂漢室，烏衣巷口夕陽斜，終是聖明天子事，袍褲宮人掃御床。','2023-02-05 08:39:06'),(22,'中文文章 7','Jay哥',10,'tset10@test.com','喵喵喵喵喵喵喵喵喵喵喵喵喵喵，喵喵喵喵喵，喵喵喵喵喵喵喵喵喵喵喵，喵喵喵喵，喵喵喵喵喵喵喵喵喵喵喵喵喵。喵喵喵喵喵喵喵喵，喵喵喵喵喵喵喵⋯喵喵喵喵喵，喵喵喵喵喵喵喵喵喵喵喵喵喵喵，喵喵喵喵喵喵喵喵喵喵：喵喵喵？喵喵喵喵喵喵喵。','2023-02-05 08:39:06'),(23,'中文文章 8','大壯',7,'tset7@test.com','哇啦哇啦，哇啦哇啦哇啦哇啦。哇啦哇啦哇啦哇啦哇啦哇啦⋯哇啦哇啦哇啦哇啦哇啦，哇啦哇啦哇啦，哇啦⋯哇啦哇啦哇啦哇啦哇啦，哇啦哇啦哇啦。哇啦哇啦哇啦哇啦哇啦哇啦？','2023-02-05 08:39:06'),(24,'中文文章 9','Jay哥',10,'tset10@test.com','文字文字文字文字文字。文字文字文字文字⋯文字文字文字文字文字文字文字。文字文字文字文字文字文字：文字文字文字。文字，文字文字文字文字文字⋯文字文字文字文字文字文字⋯文字文字文字文字文字文字，文字文字文字文字⋯文字文字。文字文字文字文字，文字。文字文字，文字文字文字文字文字，文字文字文字文字文字⋯文字文字文字。','2023-02-05 08:39:06'),(25,'中文文章 10','大壯',7,'tset7@test.com','別日曲山遊人北幾春色單于孤白雲。承恩，夜心美人金闕亦鶴樓相生王孫，長安城西無萬里⋯歸情開不萬事行朝朝山夜雨，天白雲公成明月青山空，西山陽歌舞玉北斗草彈天地間。門歸去一身湖鳴見淚痕⋯寒長風青客不音書一枝雙，野故人上雲山：深一日鳥飛二十年，今日獨手金山西何，影花落黃鶴美酒路酒行不樂手。','2023-02-05 08:39:06'),(26,'如何學寫code','Jay哥',10,'tset10@test.com','code好難RRRRRRRRR','2023-02-05 08:39:06'),(27,'如何做trade','Frank',1,'tset1@test.com','怎模trade怎麼賠','2023-02-05 08:39:06'),(28,'台灣 Number 1 !!!!','小明',9,'tset9@test.com','台灣 Number one拉拉啦啦啦啦啦啦','2023-02-05 08:39:06'),(29,'如何變beautiful','大壯',7,'tset7@test.com','如何變beautiful','2023-02-05 08:39:06'),(30,'如何變handsome','大壯',7,'tset7@test.com','如何變handsome','2023-02-05 08:39:06'),(31,'標題亂碼嘗試&^%$%@^$%^%@','Frank',1,'tset1@test.com','此文是亂碼喔gfkger;@#$#@gakㄕㄜKLK','2023-02-05 08:39:06');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tset1@test.com','haha123','2023-02-05 08:37:12'),(2,'tset2@test.com','hehe123','2023-02-05 08:37:12'),(3,'tset3@test.com','wawa123','2023-02-05 08:37:12'),(4,'tset4@test.com','1234567','2023-02-05 08:37:12'),(5,'tset5@test.com','7654321','2023-02-05 08:37:12'),(6,'tset6@test.com','0000000','2023-02-05 08:37:12'),(7,'tset7@test.com','handsame123','2023-02-05 08:37:12'),(8,'tset8@test.com','beautiful123','2023-02-05 08:37:12'),(9,'tset9@test.com','haha123','2023-02-05 08:37:12'),(10,'tset10@test.com','hehe123','2023-02-05 08:37:12');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-05 16:40:14
