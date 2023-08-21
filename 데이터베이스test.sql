INSERT INTO `Customer`(`cust_jumin`, `cust_name`, `cust_addr`, `cust_birth`, `cust_email`, `cust_phnum`, `cust_job`) VALUES ('760121-1234567', '정우성', '서울', '1976-01-21',NULL, '010-1101-7601', '배우');
INSERT INTO `Customer`(`cust_jumin`, `cust_name`, `cust_addr`, `cust_birth`, `cust_email`, `cust_phnum`, `cust_job`) VALUES ('750611-1234567', '이정재', '서울', '1975-06-11',NULL, '010-1102-7506', '배우');
INSERT INTO `Customer`VALUES ('890530-1234567', '전지현', '대전', '1989-05-30','jjh@naver.com', '010-1103-8905', '자영업');
INSERT INTO `Customer`VALUES ('790413-1234567', '이나영', '대전', '1979-04-13','lee@naver.com', '010-2101-7904', '회사원');
INSERT INTO `Customer`VALUES ('660912-1234567', '원빈', '대전', '1966-09-12','one@daum.net', '010-2104-6609', '배우');
INSERT INTO `Customer`VALUES ('790728-1234567', '장동건', '대구', '1979-07-28','jang@naver.com', '010-3101-7907', '배우');
INSERT INTO `Customer`VALUES ('840615-1234567', '고소영', '대구', '1984-06-15','goso@daum.net', '010-4101-8406', '회사원');
INSERT INTO `Customer`VALUES ('651021-1234567', '김연아', '대구', '1965-10-21','yuna@daum.net', '010-5101-6510', '운동선수');
INSERT INTO `Customer`(`cust_jumin`, `cust_name`, `cust_addr`, `cust_birth`, `cust_email`, `cust_phnum`, `cust_job`) VALUES ('721128-1234567', '유재석', '부산', '1972-11-28',NULL, '010-6101-7211', '개그맨');
INSERT INTO `Customer`(`cust_jumin`, `cust_name`, `cust_addr`, `cust_birth`, `cust_email`, `cust_phnum`, `cust_job`) VALUES ('920907-1234567', '강호동', '부산', '1992-09-07',NULL, '010-7101-9209', '개그맨');
INSERT INTO `Customer`VALUES ('891209-1234567', '조인성', '광주', '1989-12-09','join@gmail.com', '010-7104-8912', '배우');
INSERT INTO `Customer`VALUES ('770314-1234567', '강동원', '광주', '1977-03-14','dong@naver.com', '010-8101-7703', '배우');

INSERT INTO `Card` VALUES ('2111-1011-1001', '760121-1234567', '1011-1001-1001', '2020-01-21', '1000000', '2020-02-10', 'check');
INSERT INTO `Card` VALUES ('2041-1011-1002','890530-1234567','1011-1001-1002','2020-06-11','3000000','2020-06-15','check');
INSERT INTO `Card` VALUES ('2011-1011-1003','790413-1234567','1011-1001-1003','2020-05-30','5000000','2020-06-25','check');
INSERT INTO `Card` (`card_no`, `cust_jumin`, `acc_id`, `card_register_date`, `card_limit_money`, `card_approve_date`, `card_type`)VALUES ('2711-1011-1004', '660912-1234567', NULL, '2020-04-13', '1000000', '2020-05-10', 'credit');
INSERT INTO `Card` VALUES ('2611-1011-1005','840615-1234567','1011-1002-1005','2020-09-12','1500000','2020-10-10','check');
INSERT INTO `Card` VALUES ('2781-1011-1006','651021-1234567','1011-1002-1006','2020-07-28','10000000','2020-8-15','check');
INSERT INTO `Card` VALUES ('2345-1011-1007','721128-1234567','1011-1001-1007','2020-06-15','2000000','2020-07-25','check');
INSERT INTO `Card` (`card_no`,`cust_jumin`,`acc_id`,`card_register_date`,`card_limit_money`,`card_approve_date`,`card_type`)VALUES ('2221-1011-1008','920907-1234567',Null,'2020-10-21','5000000','2020-11-15','credit');
INSERT INTO `Card` VALUES ('2144-1011-1009','891209-1234567','1011-1001-1009','2020-11-28','1000000','2020-12-10','check');
INSERT INTO `Card` (`card_no`,`cust_jumin`,`acc_id`,`card_register_date`,`card_limit_money`,`card_approve_date`,`card_type`)VALUES ('2789-1011-1010','770314-1234567',NULL,'2020-09-07','1000000','2020-10-10','credit');

INSERT INTO `Account` VALUES ('1011-1001-1001','760121-1234567','자유입출금','4160000','Y','2020-01-21');
INSERT INTO `Account` VALUES ('1011-1001-1002','890530-1234567','자유입출금','376000','Y','2020-06-11');
INSERT INTO `Account` VALUES ('1011-1001-1003','790413-1234567','자유입출금','1200000','Y','2020-05-30');
INSERT INTO `Account` VALUES ('1011-2001-1004','660912-1234567','정기적금','1000000','N','2020-04-13');
INSERT INTO `Account` VALUES ('1011-1002-1005','840615-1234567','자유입출금','820000','Y','2020-09-12');
INSERT INTO `Account` VALUES ('1011-1002-1006','651021-1234567','자유입출금','3520000','Y','2020-07-28');
INSERT INTO `Account` VALUES ('1011-1001-1007','721128-1234567','자유입출금','7620500','Y','2020-06-15');
INSERT INTO `Account` VALUES ('1011-2001-1008','920907-1234567','정기적금','3400000','N','2020-10-21');
INSERT INTO `Account` VALUES ('1011-1001-1009','891209-1234567','자유입출금','1763000','Y','2020-11-28');
INSERT INTO `Account` VALUES ('1011-2001-1010','770314-1234567','정기적금','1080000','N','2020-09-07');

INSERT INTO `Transaction` VALUES ('1','1011-1001','입금','2월 정기급여','3500000','2020-02-10');
INSERT INTO `Transaction` VALUES ('2','1011-1001','출금','ATM 출금','300000','2020-02-10');
INSERT INTO `Transaction` VALUES ('3','1011-1002','입금','2월 급여','2800000','2020-02-10');
INSERT INTO `Transaction` VALUES ('4','1011-1007','출금','2월 공과금','116200','2020-02-10');
INSERT INTO `Transaction` VALUES ('5','1012-1001','출금','ATM 출금','50000','2020-02-10');
INSERT INTO `Transaction` VALUES ('6','1011-1001','입금','홍길동 이체','400000','2020-02-10');
INSERT INTO `Transaction` VALUES ('7','1011-1007','출금','2월 관리비','145000','2020-02-10');
INSERT INTO `Transaction` VALUES ('8','1011-1001','입금','홍길동 입금','200000','2020-02-10');
INSERT INTO `Transaction` VALUES ('9','1011-1002','입금','연말정산 환급','112000','2020-02-10');
INSERT INTO `Transaction` VALUES ('10','1012-1006','출금','ATM 출금','30000','2020-02-10');


SELECT * FROM `Customer`;
SELECT * FROM `Card`;
SELECT * FROM `Account`;
SELECT * FROM `Transaction`;

SELECT A.`cust_name`, `cust_addr`, `cust_birth`, `cust_email`, `cust_phnum`, `cust_job`
FROM `Card` AS B
JOIN `Customer` AS A ON B.`cust_jumin` = A.`cust_jumin`
WHERE B.`card_type` = 'credit';

SELECT C.`cust_name`, C.`cust_jumin`, C.`cust_phnum`, C.`cust_addr`
FROM `Account` AS A
JOIN `Customer` AS C ON A.`cust_jumin` = C.`cust_jumin`
WHERE A.`acc_balance` >= 4000000;
