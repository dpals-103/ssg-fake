/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.14-MariaDB : Database - a1
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`body`,`count`,`boardId`,`memberId`,`regDate`,`updateDate`) values 
(1,'? 사이트 안내','# ?안녕하세요 코린이 Je-ya입니다!<br/>\r\nQ. 이곳은 무슨 사이트 인가요?\r\n**이 블로그는 개발을 갓 배우기 시작한 제가 처음으로 만든 홈페이지 입니다!?**\r\n```\r\n개발 공부와 관련된 글들과 직접 만든 디자인물 등을 업로드하려고 해요?\r\n아직은 많이 부족하지만? 배우고 있는 기능들로 계속 업데이트하겠습니다 :)\r\n```',0,1,1,'2020-12-20 03:25:50','2020-12-20 03:25:52'),
(2,'MySQL 기본명령어 모음집_1탄','# ?내가 보려고 만드는 MySQL 기본명령어 모음집 -- 1탄\r\n# ? 데이터 조회하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## ? 데이터베이스 조회 (a.k.a 데이터가 모여있는 폴더)\r\n## `SHOW DATABASES;`\r\n##### ? 생성되어 있는 데이터베이스의 목록을 조회합니다. \r\n\r\n<br>\r\n\r\n## ? 테이블 조회 (a.k.a 하나의 엑셀파일)\r\n## `SHOW TABLES`;\r\n##### ? 선택되어 있는 데이터베이스 안에 만들어져 있는 테이블들의 목록을 조회합니다. \r\n<br>\r\n```\r\n✅ USE a1;\r\n---- \'a1\' 이라는 데이터베이스를 선택합니다. \r\n```\r\n<br>\r\n## `DESC \'테이블명\';`\r\n##### ? 선택한 테이블의 칼럼구조와 속성을 조회합니다.\r\n<br>\r\n<br>\r\n<br>\r\n## ? ROW(로우) 조회를 위한 명령어 (a.k.a 엑셀파일의 한 행, 실질적인 데이터가 들어있는 곳)\r\n\r\n\r\n## `SELECT id;`\r\n##### ? id 칼럼의 row의 값을 선택하여 조회합니다.\r\n<br>\r\n```\r\n✅ SELECT id FROM article;\r\n```\r\n',0,2,1,'2020-12-21 03:25:50','2020-12-21 18:05:20'),
(3,'MySQL 기본명령어 모음집_2탄','# ?내가 보려고 만드는 MySQL 기본명령어 모읍집 -- 2탄\r\n# ? 데이터 생성하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## ? 데이터베이스 생성하기 (a.k.a 데이터를 모을 폴더를 만들자)\r\n## `CREATE DATABASES 데이터베이스명;`\r\n##### ? 데이터베이스를 생성합니다.  \r\n\r\n<br>\r\n\r\n## ? 테이블 구조 및 칼럼 생성 (a.k.a 하나의 엑셀파일과 그 안의 항목을 만들자)\r\n## `CRATE TABLES(COLUMN 내용);`;\r\n##### ? 괄호 안에 만들어낼 COLUMN 내용과 속성을 지정합니다.  \r\n<br>\r\n```\r\n✅ CREATE TABLES article (\r\n    id INT(10),\r\n    title char(30)\r\n);\r\n\r\n----- article 이라는 테이블을 만들고 그 안에 숫자형 데이터 id와 문자 데이터를 갖는 title 칼럼을 생성합니다. \r\n```\r\n<br>\r\n\r\n## `주로 쓰는 COLUMN 속성들`\r\n```\r\n✅ INT(10) : 숫자형 데이터. 괄호 안의 숫자는 입력되는 값의 자릿수를 의미합니다. \r\n\r\n✅ AUTO_INCREMENT : 숫자가 자동으로 증가합니다.\r\n\r\n✅ PRIMATY KEY() : \'기본 키\'. 데이터를 구분하기 위해 괄호안의 항목에 제약을 겁니다. \r\n\r\n✅ DATETIME : \'시간\' 을 나타냅니다. \r\n\r\n✅ VARCHAR(100) : 문자 데이터 속성입니다. 괄호의 숫자는 영문기준으로 100개의 문자가 저장될 수 있으며, 한글 기준으로 대략 30자 정도 입력될 수 있음을 나타냅니다.(한글은 1글자 당 약 3바이트). ~256까지 사용가능 하며, 데이터의 길이를 예측하기 힘들거나 변경할 가능성이 낮을 때 사용합니다. \r\n\r\n✅ CHAR(): 마찬가지로 문자 데이터 이며, 데이터의 길이가 고정되어 있기 때문에 메모리 차지가 덜 합니다.\r\n\r\n✅ TEXT : 문자를 아주 많이 입력해야 할 때 사용 합니다. (EX. 게시글의 본문 등)\r\n\r\n✅ NOT NULL : ROW값에 NULL을 받을 수 없습니다. \r\n```\r\n<BR>\r\n<BR>\r\n## ? ROW(로우) 값을 생성하기 (a.k.a 항목에 맞는 값을 넣어주자)\r\n## `INSERT INTO 테이블명 SET 칼럼명 = 값 `\r\n##### ? 값을 입력할 때는 모든 항목의 값을 빠짐없이 입력해야 합니다\r\n<br>\r\n```\r\n✅ INSERT INTO article\r\nSET id = 10, \r\ntitle = \'안녕\',  ----------------- 텍스트 작성 시 작은 따옴표 사용\r\nregDate = NOW()   -------------------- 현재 시간을 나타냅니다\r\n`body` = \'헬로\';  --------------- sql에 내장되어 있는 단어의 경우 백틱(`)으로 구분합니다.\r\n                                 마지막 항목 작성 후 ; 로 작성 마무리를 합니다. \r\n```\r\n',0,2,1,'2020-12-21 00:16:22','2020-12-21 00:16:25');

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
