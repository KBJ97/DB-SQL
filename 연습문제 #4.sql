#날짜 : 2023/06/23
#이름 : 김병준
#내용 : SQL 연습문제4

#실습4-1
CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES;

#실습4-2
CREATE TABLE `Customer`(
	`custId`		INT 				AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10) 	NOT NULL,
	`address`	VARCHAR(20),		
	`phone`		CHAR(13)		
);
CREATE TABLE `Book`(
	`bookId`			INT				NOT NULL PRIMARY KEY,
	`bookName`		VARCHAR(20)		NOT NULL,
	`publisher`		VARCHAR(20)		NOT NULL,
	`price`			INT 			
);
CREATE TABLE `Order`(
	`orderId`		INT		AUTO_INCREMENT PRIMARY KEY,
	`custId`			INT		NOT NULL,
	`bookId`			INT		NOT NULL,
	`salePrice`		INT		NOT NULL,
	`orderDate`		DATE		NOT NULL
);
#실습4-3
INSERT INTO `Customer` VALUES (1,'박지성','영국 맨체스타','000-5000-0001');
INSERT INTO `Customer` VALUES (2,'김연아','대한민국 서울','000-6000-0001');
INSERT INTO `Customer` VALUES (3,'장미란','대한민국 강원도','000-7000-0001');
INSERT INTO `Customer` VALUES (4,'추신수','미국 클리블랜드','000-8000-0001');
INSERT INTO `Customer` (`custid`,`name`,`address`) VALUES (5,'박세리','대한민국 대전');

INSERT INTO `Book` VALUES (1,'축구의 역사','굿스포츠',7000);
INSERT INTO `Book` VALUES (2,'축구아는 여자','나무수',13000);
INSERT INTO `Book` VALUES (3,'축구의 이해','대한미디어',22000);
INSERT INTO `Book` VALUES (4,'골프 바이블','대한미디어',35000);
INSERT INTO `Book` VALUES (5,'피겨 교본','굿스포츠',8000);
INSERT INTO `Book` VALUES (6,'역도 단계별기술','굿스포츠',6000);
INSERT INTO `Book` VALUES (7,'야구의 추억','이상미디어',20000);
INSERT INTO `Book` VALUES (8,'야구를 부탁해','이상미디어',13000);
INSERT INTO `Book` VALUES (9,'올림픽 이야기','삼성당',7500);
INSERT INTO `Book` VALUES (10,'Olympic Champions','Pearson',13000);

INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,1,1,6000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2,1,3,21000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,2,5,8000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4,3,6,6000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (5,4,7,20000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (6,1,2,12000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (7,4,8,13000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (8,3,10,12000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (9,2,10,7000,NOW());
INSERT INTO `Order` (`orderid`,`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (10,3,8,13000,NOW());

#실습4-4
SELECT `custid`,`name`,`address` FROM `Customer`; 

#실습4-5
SELECT `bookname`,`price` FROM `Book`;

#실습4-6
SELECT `price`,`bookname`FROM `Book`;

#실습4-7
SELECT * FROM `Book`;

#실습4-8
SELECT `publisher` FROM `Book`;

#실습4-9
SELECT DISTINCT `publisher` FROM `Book`;
SELECT `publisher` FROM `Book` GROUP BY `publisher`;

#실습4-10
SELECT * FROM `Book` WHERE `price` >= 20000; 

#실습4-11
SELECT * FROM `Book` WHERE `price` < 20000;

#실습4-12
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

#실습4-13
SELECT `bookid`,`bookname`,`price` FROM `Book` WHERE `price` BETWEEN 15000 AND 30000;

#실습4-14
SELECT * FROM `Book` WHERE `bookid` IN (2,3,5);

#실습4-15 !
SELECT * FROM `Book` WHERE `bookid` % 2 = 0;
SELECT * FROM `Book` WHERE MOD(`bookid`,2) = 0;

#실습4-16
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

#실습4-17
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국%';

#실습4-18
SELECT * FROM `Customer` WHERE `phone` IS NOT NULL; 

#실습4-19
SELECT * FROM `Book` WHERE `publisher` ='굿스포츠' OR `publisher` = '대한미디어';

#실습4-20
SELECT `publisher` FROM `Book` WHERE `bookname` = '축구의 역사';

#실습4-21
SELECT `publisher` FROM `Book` WHERE `bookname` LIKE '%축구%';

#실습4-22
SELECT * FROM `Book` WHERE `bookname` LIKE '_구%';

#실습4-23
SELECT * FROM `Book` WHERE `price` >=20000 AND `bookname` LIKE '%축구%';

#실습4-24
SELECT * FROM `Book` ORDER BY `bookname`;

#실습4-25
SELECT * FROM `Book` ORDER BY `price` ,`bookname`;

#실습4-26
SELECT * FROM `Book` ORDER BY `price` DESC,`publisher` ASC;

#실습4-27
SELECT * FROM `Book` ORDER BY `price` DESC LIMIT 3;

#실습4-28
SELECT * FROM `Book` ORDER BY `price` ASC LIMIT 3;

#실습4-29
SELECT SUM(`saleprice`) AS '총판매액' FROM `Order`;

#실습4-30
SELECT 
	SUM(`saleprice`) AS '총판매액',
	AVG(`saleprice`) AS '평균값',
	MIN(`saleprice`) AS '최저가',
	MAX(`saleprice`) AS '최고가'
FROM `Order`;

#실습4-31
SELECT COUNT(`orderid`) AS '판매건수' FROM `Order`;

#실습4-32 !
SELECT 
	`bookId`,
	REPLACE(`bookName`,'야구','농구') AS `bookName`,
	`publisher`, 
	`price` 
FROM `Book`;

#실습4-33 !
SELECT `custid`,
 		COUNT(*) AS `수량`
 FROM `Order` 
 WHERE `salePrice` >=8000 
 GROUP BY `custid` 
 HAVING `수량`>=2;

#실습4-34
SELECT * FROM `Customer` AS a  JOIN `Order` AS b ON a.custId=b.custId;

SELECT * FROM `Customer` AS a JOIN `Order` AS b USING(`custId`);

SELECT * FROM `Customer` a, `Order` b WHERE a.custId=b.custId;

#실습4-35
SELECT * FROM `Customer` AS a  JOIN `Order` AS b ON a.custId=b.custId ORDER BY a.`custid`;

#실습4-36
SELECT `name`, `saleprice` FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId=b.custId ;

#실습4-37
SELECT `name`, SUM(`saleprice`) 
FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId=b.custId
GROUP BY `name` ORDER BY `name`;

#실습4-38
SELECT `name`,`bookname` 
FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId=b.custId
JOIN `Book` AS c ON b.bookId=c.bookId;
 
#실습4-39
SELECT `name`,`bookname` 
FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId=b.custId
JOIN `Book` AS c ON b.bookId=c.bookId
WHERE `price`=20000;

#실습4-40
SELECT `name`,`saleprice` 
FROM `Customer` AS a 
left JOIN `Order` AS b ON a.custId=b.custId;

#실습4-41
SELECT SUM(`saleprice`) AS '총매출' 
FROM `Customer` AS a 
JOIN `Order` AS b ON a.custId=b.custId
WHERE `name`='김연아';

SELECT SUM(`saleprice`) AS '총매출'  
FROM `Order` 
WHERE `custid`=(SELECT `custid` FROM `Customer` WHERE `name`='김연아');

#실습4-42 !
SELECT `bookname`
FROM `Book` ORDER BY `price` DESC LIMIT 1;

SELECT `bookname`
FROM `Book` WHERE `price`=(SELECT MAX(`price`) FROM `Book`);

#실습4-43
SELECT `name` FROM `Customer` AS a 
left JOIN `Order` AS b ON a.custId=b.custId
WHERE b.salePrice IS NULL ;

SELECT `name` FROM `Customer`
WHERE `custid` NOT IN(SELECT DISTINCT `custid` FROM `Order`); 

#실습4-44
INSERT INTO `Book` (`bookid`,`bookname`,`publisher`)VALUES (11,'스포츠의학','한솔의학서적');

INSERT INTO `Book` SET `bookid`=11,`bookname`='스포츠의학',`publisher`='한솔의학서적';

#실습4-45 !
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custid`=5;

#실습4-46 !
DELETE FROM `Customer` WHERE `custid`=5;
