CREATE DATABASE team33;
USE team33;

-- 회원
CREATE TABLE MEMBER(
	id VARCHAR(20) NOT NULL PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50),
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(20) NOT NULL,
	addr1 VARCHAR(200),
	addr2 VARCHAR(100),
	postcode VARCHAR(10),
	regdate DATETIME default CURRENT_TIMESTAMP,
	birth DATE,
	pt INT(11) DEFAULT 0,
	vistied INT(11) DEFAULT 0);
	
INSERT INTO MEMBER VALUES('admin','1234','관리자','admin@teaspoon.com','010-1234-1234',DEFAULT, DEFAULT,DEFAULT, DEFAULT,DEFAULT, DEFAULT,DEFAULT);
	
	
-- qna
CREATE TABLE qna(qno int PRIMARY KEY AUTO_INCREMENT,   		-- 번호
   title VARCHAR(100) NOT NULL,   									-- 제목
   content VARCHAR(1000) NOT NULL,   								-- 내용
   author VARCHAR(16),   												-- 작성자
   resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    			-- 등록일
   visited INT DEFAULT 0,   												-- 조회수
   lev INT DEFAULT 0, 													-- 질문(0), 답변(1)
   par INT,																	-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
   FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE
);

INSERT INTO	qna VALUES(DEFAULT, '질문1','질문1내용','admin',DEFAULT, DEFAULT, DEFAULT,1);
INSERT INTO	qna VALUES(DEFAULT, '답변1','답변1내용','admin',DEFAULT, DEFAULT, 1,1);

DROP TABLE qna;
SELECT * FROM qna;
