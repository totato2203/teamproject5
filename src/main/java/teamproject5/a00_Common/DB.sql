-- 회원정보 테이블 생성
CREATE TABLE MEMBER (
	id varchar2(50) PRIMARY KEY,
	password varchar2(50) NOT NULL,
	mname varchar2(50) NOT NULL,
	phoneNum varchar2(50) NOT NULL,
	email varchar2(50) NOT NULL,
	point NUMBER,
	paypassword char(6)
)

-- 자유게시판 테이블 생성
CREATE TABLE freeBoard(
	freeNum NUMBER PRIMARY KEY,
	freeTitle varchar2(50) NOT NULL,
	freeContent varchar2(1000) NOT NULL,
	freeDate DATE NOT NULL,
	mname varchar2(50) NOT NULL
)

-- 물품 테이블 생성
CREATE TABLE product(
	productNum NUMBER PRIMARY KEY,
	pname varchar2(50) NOT NULL,
	price NUMBER NOT NULL,
	cnt NUMBER NOT NULL
);
CREATE SEQUENCE product_seq
	INCREMENT BY 1
	START WITH 1000
	MAXVALUE 9999
	MINVALUE 1000
	cache 2;

INSERT INTO product values(product_seq.nextval, '사과', 2000, 5);

DROP TABLE product;

SELECT * FROM product;

-- 주문 테이블 생성
CREATE TABLE orderTable(
	productNum number,
	id varchar2(50),
	cnt number
)
-- 문제정답테이블 생성
CREATE TABLE quiz(
	quizId varchar2(5) PRIMARY KEY,
	problem varchar2(1000) NOT NULL,
	ans varchar2(1000) NOT NULL,
	cag_id varchar2(5) NOT NULL,
	ans_num varchar2(5) NOT NULL
);
-- 카테고리테이블 생성
CREATE TABLE category(
	cag_id varchar2(5) PRIMARY KEY,
	cag_name varchar2(50) NOT NULL
);
