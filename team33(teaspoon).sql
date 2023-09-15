CREATE DATABASE team33;
USE team33;

SHOW TABLES;

-- 회원 테이블
CREATE TABLE MEMBER(
	id VARCHAR(20) PRIMARY KEY NOT NULL,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50),
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(20) NOT NULL,
	addr1 VARCHAR(200),
	addr2 VARCHAR(100),
	postcode VARCHAR(10),
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
	birth DATE,
	pt INT(11) DEFAULT 0,
	vistied INT(11) DEFAULT 0);

SELECT * FROM member;

-- 회원 테이블 더미데이터
INSERT INTO MEMBER
VALUES('admin', '1234', '관리자', 'admin@edu.com', '01012345678', NULL, NULL, NULL, DEFAULT, '1990-01-01', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES('shin', '1234', '신이름', 'shin@edu.com', '01032146578', NULL, NULL, NULL, DEFAULT, '2000-01-01', DEFAULT, DEFAULT);

UPDATE MEMBER SET pw='$2a$10$piyWPHz4GuwW0GxHZZfy1ORWtzKu7KPr9M0mFpw90hQJRQditQqJO' WHERE id = 'admin';
UPDATE MEMBER SET pw='$2a$10$RZPVsTktT7RmMp7Qoj9pd.xGfZmsvYgsnbalImORzqx5hRNIoqPnm' WHERE id = 'shin';

SELECT * FROM MEMBER;
-- 커뮤니티 카테고리 테이블 생성
CREATE TABLE category(
	cate VARCHAR(5) PRIMARY KEY NOT NULL,
	cateName VARCHAR(100) NOT NULL
);

-- 카테고리 테이블 데이터
INSERT INTO category VALUES('A', '자유게시판');
INSERT INTO category VALUES('B', '교육정보');
INSERT INTO category VALUES('C', '교재/학원 추천');
INSERT INTO category VALUES('D', '진로상담');


-- 커뮤니티 게시판 테이블 생성
CREATE TABLE community(
    cno INT PRIMARY KEY AUTO_INCREMENT,
    cate VARCHAR(5) NOT NULL,
    title VARCHAR(200) NOT NULL,
    content VARCHAR(1000),
    author VARCHAR(20),
    resdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
    cnt INT DEFAULT 0,
    FOREIGN KEY(cate) REFERENCES category(cate) ON DELETE CASCADE,
    FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE);
    
INSERT INTO community(cate, title, content, author)
VALUES ('A', '게시판 더미데이터1', '여기는 게시판 더미데이터1입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('B', '게시판 더미데이터2', '여기는 게시판 더미데이터2입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('C', '게시판 더미데이터3', '여기는 게시판 더미데이터3입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('D', '게시판 더미데이터4', '여기는 게시판 더미데이터4입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('A', '게시판 더미데이터5', '여기는 게시판 더미데이터5입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('B', '게시판 더미데이터6', '여기는 게시판 더미데이터6입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('C', '게시판 더미데이터7', '여기는 게시판 더미데이터7입니다', 'admin');
INSERT INTO community(cate, title, content, author)
VALUES ('D', '게시판 더미데이터8', '여기는 게시판 더미데이터8입니다', 'admin');

SELECT * FROM community ORDER BY cno DESC;


-- 커뮤니티 댓글 테이블 생성
CREATE TABLE COMMENT(
	comNo INT PRIMARY KEY AUTO_INCREMENT,
	cno INT NOT NULL,
	author VARCHAR(20) NOT NULL,
	resdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
	content VARCHAR(1000) NOT NULL,
	FOREIGN KEY(cno) REFERENCES community(cno) ON DELETE CASCADE,
	FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE
);

SELECT * FROM COMMENT;

/* 공지사항 테이블 생성 */
CREATE TABLE notice (
    seq INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content VARCHAR(1000) NOT NULL,
    nickname VARCHAR(20),
    regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
    visited INT DEFAULT 0
);

INSERT INTO notice VALUES (DEFAULT,'샘플 글 제목1  입니다.','여기는 샘플 글 1의 내용입니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'샘플 글 제목2  입니다.','여기는 샘플 글 2의 내용입니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'샘플 글 제목3  입니다.','여기는 샘플 글 3의 내용입니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'샘플 글 제목4  입니다.','여기는 샘플 글 4의 내용입니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'샘플 글 제목5  입니다.','여기는 샘플 글 5의 내용입니다.','admin',DEFAULT, DEFAULT);
INSERT INTO notice VALUES (DEFAULT,'샘플 글 제목6  입니다.','여기는 샘플 글 6의 내용입니다.','admin',DEFAULT, DEFAULT);

CREATE TABLE faq (
   fno INT  PRIMARY KEY AUTO_INCREMENT ,
   question VARCHAR(1000) NOT NULL,
   answer VARCHAR(1000) NOT NULL,
   cnt INT DEFAULT 0 NOT NULL
);

INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다1', '답변입니다1');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다2', '답변입니다2');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다3', '답변입니다3');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다4', '답변입니다4');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다5', '답변입니다5');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다6', '답변입니다6');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다7', '답변입니다7');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다8', '답변입니다8');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다9', '답변입니다9');
INSERT INTO faq(question, answer) VALUES('자주 묻는 질문입니다10', '답변입니다10');

CREATE TABLE fileInfo(
  no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  articleno INT,
  saveFolder VARCHAR(300) NOT NULL,
  originFile VARCHAR(300) NOT NULL,
  saveFile VARCHAR(300) NOT NULL);

CREATE TABLE fileboard (
  articleno int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id varchar(16) NOT NULL,
  title varchar(100) NOT NULL,
  content varchar(2000) NOT NULL,
  regdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);
