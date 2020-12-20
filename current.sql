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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`body`,`count`,`boardId`,`memberId`,`regDate`,`updateDate`) values 
(1,'? 사이트 안내','# ?안녕하세요 코린이 Je-ya입니다!<br/>\r\nQ. 이곳은 무슨 사이트 인가요?\r\n**이 블로그는 개발을 갓 배우기 시작한 제가 처음으로 만든 홈페이지 입니다!?**\r\n```\r\n개발 공부와 관련된 글들과 직접 만든 디자인물 등을 업로드하려고 해요?\r\n아직은 많이 부족하지만? 배우고 있는 기능들로 계속 업데이트하겠습니다 :)\r\n```',0,1,1,'2020-12-20 03:25:50','2020-12-20 03:25:52'),
(2,'MySQL 기본명령어 모음집_1탄','# ?내가 보려고 만드는 MySQL 기본명령어 모읍집 -- 1탄\r\n# ? 데이터 조회하기!\r\n설명순서는 큰 단위에서 작은 단위 순으로!\r\n***\r\n<br>\r\n<br>\r\n## ? 데이터베이스 조회 (a.k.a 데이터가 모여있는 폴더)\r\n## `SHOW DATABASES;`\r\n##### ? 생성되어 있는 데이터베이스의 목록을 조회합니다. \r\n\r\n<br>\r\n\r\n## ? 테이블 조회 (a.k.a 하나의 엑셀파일)\r\n## `SHOW TABLES`;\r\n##### ? 선택되어 있는 데이터베이스 안에 만들어져 있는 테이블들의 목록을 조회합니다. \r\n<br>\r\n```\r\n✅ USE a1;\r\n----> \'a1\' 이라는 데이터베이스를 선택합니다. \r\n```\r\n<br>\r\n\r\n## `DESC \'테이블명\';`\r\n##### ? 선택한 테이블의 칼럼구조와 속성을 조회합니다.\r\n<br>\r\n<br>\r\n<br>\r\n## ? ROW(로우) 조회를 위한 명령어 (a.k.a 엑셀파일의 한 행, 실질적인 데이터가 들어있는 곳)\r\n\r\n\r\n## `SELECT id;`\r\n#### ? id 칼럼의 row의 값을 선택하여 조회합니다.\r\n```\r\n✅ SELECT id FROM article;\r\n----> aritlce 테이블에서 id칼럼의 값을 조회합니다. \r\n```\r\n<br>\r\n## `FROM article(테이블명);`\r\n##### ? row를 조회할 테이블을 지정합니다.\r\n```\r\n✅ SELECT * FROM forest;\r\n----> forest 테이블에 있는 모든 정보를 조회합니다.\r\n```\r\n<br>\r\n## `where id=2;`\r\n##### ? id칼럼의 값이 2인 row를 조회합니다.\r\n```\r\n✅ SELECT * FROM article where id = 2;\r\n----> aritlce 테이블에서 id칼럼의 값이 2인 로우를 모두 조회합니다. \r\n```\r\n<br>\r\n## `AND title = \'banana\'`\r\n##### ?\'where\' 명령어를 사용할 때 추가적인 조건은 AND 와 함께 사용합니다.\r\n```\r\n✅ SELECT * FROM article where id = 2 AND title = \'banana\';\r\n----> aritlce 테이블에서 id가 2이고, title이 banana인 row를 조회합니다. \r\n```\r\n\r\n## `ORDER BY id DESC\'`\r\n##### ? \'id값을 통해 역순으로 정렬한다\'\r\n```\r\n✅ ORDER BY (기준칼럼)  : 기준 칼럼을 통해 정렬\r\n✅ DESC  : 역순 (내림차순)\r\n✅ DESC  : 순차 (오름차순) \r\n목록으로돌아가기\r\n```\r\n',0,2,1,'2020-12-20 03:25:50','2020-12-20 03:25:52');

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
