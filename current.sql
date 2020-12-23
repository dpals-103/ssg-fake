/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.11-MariaDB : Database - a1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`a1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `a1`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `body` text NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  `boardId` int(10) unsigned NOT NULL DEFAULT 0,
  `memberId` int(10) unsigned NOT NULL DEFAULT 1,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`body`,`count`,`boardId`,`memberId`,`regDate`,`updateDate`) values 
(1,'? 사이트 안내','# ?안녕하세요 코린이 Je-ya입니다!<br/>\r\nQ. 이곳은 무슨 사이트 인가요?\r\n**이 블로그는 개발을 갓 배우기 시작한 제가 처음으로 만든 홈페이지 입니다!?**\r\n```\r\n개발 공부와 관련된 글들과 직접 만든 디자인물 등을 업로드하려고 해요?\r\n아직은 많이 부족하지만? 배우고 있는 기능들로 계속 업데이트하겠습니다 :)\r\n```',0,1,1,'2020-12-20 03:25:50','2020-12-20 03:25:52'),
(2,'MySQL 기본명령어 모음집_1탄','# ?내가 보려고 만드는 MySQL 기본명령어 모읍집 -- 2탄\r\n# ? 데이터 생성하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## ? 데이터베이스 생성하기 (a.k.a 데이터를 모을 폴더를 만들자)\r\n## `CREATE DATABASES 데이터베이스명;`\r\n##### ? 데이터베이스를 생성합니다.  \r\n\r\n<br>\r\n\r\n## ? 테이블 구조 및 칼럼 생성 (a.k.a 하나의 엑셀파일과 그 안의 항목을 만들자)\r\n## `CRATE TABLES(COLUMN 내용);`;\r\n##### ? 괄호 안에 만들어낼 COLUMN 내용과 속성을 지정합니다.  \r\n<br>\r\n```\r\n✅ CREATE TABLES article (\r\n    id INT(10),\r\n    title char(30)\r\n);\r\n\r\n----- article 이라는 테이블을 만들고 그 안에 숫자형 데이터 id와 문자 데이터를 갖는 title 칼럼을 생성합니다. \r\n```\r\n<br>\r\n\r\n## `주로 쓰는 COLUMN 속성들`\r\n```\r\n✅ INT(10) : 숫자형 데이터. 괄호 안의 숫자는 입력되는 값의 자릿수를 의미합니다. \r\n\r\n✅ AUTO_INCREMENT : 숫자가 자동으로 증가합니다.\r\n\r\n✅ PRIMATY KEY() : \'기본 키\'. 데이터를 구분하기 위해 괄호안의 항목에 제약을 겁니다. \r\n\r\n✅ DATETIME : \'시간\' 을 나타냅니다. \r\n\r\n✅ VARCHAR(100) : 문자 데이터 속성입니다. 괄호의 숫자는 영문기준으로 100개의 문자가 저장될 수 있으며, 한글 기준으로 대략 30자 정도 입력될 수 있음을 나타냅니다.(한글은 1글자 당 약 3바이트). ~256까지 사용가능 하며, 데이터의 길이를 예측하기 힘들거나 변경할 가능성이 낮을 때 사용합니다. \r\n\r\n✅ CHAR(): 마찬가지로 문자 데이터 이며, 데이터의 길이가 고정되어 있기 때문에 메모리 차지가 덜 합니다.\r\n\r\n✅ TEXT : 문자를 아주 많이 입력해야 할 때 사용 합니다. (EX. 게시글의 본문 등)\r\n\r\n✅ NOT NULL : ROW값에 NULL을 받을 수 없습니다. \r\n```\r\n<BR>\r\n<BR>\r\n## ? ROW(로우) 값을 생성하기 (a.k.a 항목에 맞는 값을 넣어주자)\r\n## `INSERT INTO 테이블명 SET 칼럼명 = 값 `\r\n##### ? 값을 입력할 때는 모든 항목의 값을 빠짐없이 입력해야 합니다\r\n<br>\r\n```\r\n✅ INSERT INTO article\r\nSET id = 10, \r\ntitle = \'안녕\',  ----------------- 텍스트 작성 시 작은 따옴표 사용\r\nregDate = NOW()   -------------------- 현재 시간을 나타냅니다\r\n`body` = \'헬로\';  --------------- sql에 내장되어 있는 단어의 경우 백틱(`)으로 구분합니다.\r\n                                 마지막 항목 작성 후 ; 로 작성 마무리를 합니다. \r\n```\r\n',0,2,1,'2020-12-21 03:25:50','2020-12-21 18:05:20'),
(3,'MySQL 기본명령어 모음집_2탄','# ?내가 보려고 만드는 MySQL 기본명령어 모읍집 -- 2탄\r\n# ? 데이터 생성하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## ? 데이터베이스 생성하기 (a.k.a 데이터를 모을 폴더를 만들자)\r\n## `CREATE DATABASES 데이터베이스명;`\r\n##### ? 데이터베이스를 생성합니다.  \r\n\r\n<br>\r\n\r\n## ? 테이블 구조 및 칼럼 생성 (a.k.a 하나의 엑셀파일과 그 안의 항목을 만들자)\r\n## `CRATE TABLES(COLUMN 내용);`;\r\n##### ? 괄호 안에 만들어낼 COLUMN 내용과 속성을 지정합니다.  \r\n<br>\r\n```\r\n✅ CREATE TABLES article (\r\n id INT(10),\r\n title char(30)\r\n);\r\n\r\n----- article 이라는 테이블을 만들고 그 안에 숫자형 데이터 id와 문자 데이터를 갖는 title 칼럼을 생성합니다. \r\n```\r\n<br>\r\n\r\n## `주로 쓰는 COLUMN 속성들`\r\n```\r\n✅ INT(10) : 숫자형 데이터. 괄호 안의 숫자는 입력되는 값의 자릿수를 의미합니다. \r\n\r\n✅ AUTO_INCREMENT : 숫자가 자동으로 증가합니다.\r\n\r\n✅ PRIMATY KEY() : \'기본 키\'. 데이터를 구분하기 위해 괄호안의 항목에 제약을 겁니다. \r\n\r\n✅ DATETIME : \'시간\' 을 나타냅니다. \r\n\r\n✅ VARCHAR(100) : 문자 데이터 속성입니다. 괄호의 숫자는 영문기준으로 100개의 문자가 저장될 수 있으며, 한글 기준으로 대략 30자 정도 입력될 수 있음을 나타냅니다.(한글은 1글자 당 약 3바이트). ~256까지 사용가능 하며, 데이터의 길이를 예측하기 힘들거나 변경할 가능성이 낮을 때 사용합니다. \r\n\r\n✅ CHAR(): 마찬가지로 문자 데이터 이며, 데이터의 길이가 고정되어 있기 때문에 메모리 차지가 덜 합니다.\r\n\r\n✅ TEXT : 문자를 아주 많이 입력해야 할 때 사용 합니다. (EX. 게시글의 본문 등)\r\n\r\n✅ NOT NULL : ROW값에 NULL을 받을 수 없습니다. \r\n```\r\n<BR>\r\n<BR>\r\n## ? ROW(로우) 값을 생성하기 (a.k.a 항목에 맞는 값을 넣어주자)\r\n## `INSERT INTO 테이블명 SET 칼럼명 = 값 `\r\n##### ? 값을 입력할 때는 모든 항목의 값을 빠짐없이 입력해야 합니다\r\n<br>\r\n```\r\n✅ INSERT INTO article\r\nSET id = 10, \r\ntitle = \'안녕\' : 텍스트 작성 시 작은 따옴표 사용\r\nregDate = NOW() : 현재 시간을 나타냅니다\r\n`body` = \'헬로\'; : sql에 내장되어 있는 단어의 경우 백틱(`)으로 구분합니다.\r\n마지막 항목 작성 후 ; 로 작성 마무리를 합니다. \r\n```',0,2,1,'2020-12-21 00:16:22','2020-12-21 00:16:25'),
(4,'CSS 선택자를 알아보자!','# ? CSS 기본선택자!\r\n<br>\r\n## 크게 3가지 선택자로 구분지을 수 있어요!\r\n\r\n## ?`자식선택자;`\r\n\r\n## ?`형제선택자;`\r\n\r\n## ?`후손(손자)선택자;`\r\n<br>\r\n## ✅ 자식 선택자 \' > \'\r\n\r\n##### 부모 바로 밑의 직계자식을 선택합니다\r\n<br>\r\n```\r\n<section>\r\n <div>\r\n <cell>\r\n </cell>\r\n </div>\r\n <div>\r\n <cell>\r\n </cell>\r\n </div>\r\n</section>\r\n```\r\n##### ?section > div \r\n> div 2개가 선택됩니다. \r\n<br>\r\n<br>\r\n## ✅ 인접형제 선택자 \' + \'\r\n\r\n##### 인접해있는(붙어있는) 형제 선택자를 선택합니다! \r\n<br>\r\n```\r\n<section>\r\n <div1>\r\n <cell>\r\n </cell>\r\n </div1>\r\n <div2>\r\n <cell>\r\n </cell>\r\n </div2>\r\n <div3>\r\n <cell>\r\n </cell>\r\n </div3>\r\n</section>\r\n```\r\n##### ? section > div1 + div2 \r\n> : div1과 인접해있는 div2를 선택할 수 있습니다.\r\n> : 인접된 형제를 선택하므로  div1은 div3은 선택할 수 없습니다. \r\n<br>\r\n<br>\r\n## ✅ 후손(손자)선택자  \" \"\r\n\r\n##### 해당 엘리먼트에 속한 자식 또는 후손을 모두 선택할 수 있습니다 \r\n<br>\r\n```\r\n<section>\r\n <div1 class =\"child\">\r\n <cell>\r\n </cell>\r\n </div1>\r\n <div2 class =\"child\">\r\n <cell>\r\n </cell>\r\n </div2>\r\n <div3 class =\"child\">\r\n <cell>\r\n </cell>\r\n </div3>\r\n</section>\r\n```\r\n##### ? section  cell \r\n> section 에 속한 모든 cell 를 선택합니다. \r\n##### ? section  .child \r\n> section 에 속한 클래스명이 .child인 엘리먼트를 모두 선택합니다.',0,2,1,'2020-12-23 11:08:35','2020-12-23 11:08:38'),
(5,'CSS display속성을 알아보자!','# ? CSS display에 대해 알아보자!\r\n<br>\r\n## 주로 3가지 기능을 많이 사용해요! \r\n## ?`inline-block;`\r\n\r\n## ?`block;`\r\n\r\n## ?`flex;`\r\n> flex는 내용이 아주 많은 관계로 다음편에서 정리해볼께요! : )\r\n<br>\r\n<br>\r\n## ✅ inline-block\r\n\r\n##### ?엘리먼트들이 기본적으로 줄바꿈 없이 한줄에 나란히 배치되요!\r\n<br>\r\n? 감싸고 있는 콘텐츠 크기에 맞춰 최소한으로 유연하게 줄어드는 특징을 가져요!\r\n( 글자 크기에 딱 맞춰 배경색을 지정해야 할 때 주로 사용해요!) \r\n<br>\r\n? 감싸고 있는 콘텐츠가 없다면 크기가 아예 사라집니다!\r\n<br>\r\n? inline의 속성을 가지고 있기 때문에 가능한 범위라면 한줄을 여럿이 함께 사용합니다!\r\n<br>\r\n? 글자요소들은 기본적으로 inline 속성을 가지고 있는데, 이건 magin이나 padding을 사용할 수 없어요 ㅠ 하지만 inline-block은 가능합니다! \r\n\r\n## ✅ block\r\n\r\n##### ?엘리먼트들이 마치 블럭처럼 쌓이는 모습이에요!\r\n<br>\r\n? block으로 지정된 엘리먼트들은 줄바꿈이 들어가 한 줄을 혼자 차지하는 모습을 보여요! \r\n<br>\r\n? 최대한 유연하게 늘어나는 속성을 가지고 있어요! \r\nex. a태그는 기본적으로 inline 속성이라 범위가 넓지 않아요. 이럴 때\r\n클릭범위를 넓히기 위해서 block 속성을 지정해줍니다! ',0,2,1,'2020-12-23 11:31:26','2020-12-23 11:31:28');

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `regDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`title`,`regDate`) values 
(1,'Notice','2020-12-20 03:22:51'),
(2,'IT','2020-12-20 03:22:51');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loginId` char(30) NOT NULL,
  `loginPw` varchar(50) NOT NULL,
  `name` char(30) NOT NULL,
  `regDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id`,`loginId`,`loginPw`,`name`,`regDate`) values 
(1,'admin','admin','제야','2020-12-20 03:22:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
