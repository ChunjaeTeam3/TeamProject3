## 📍Chunjae Project 03
천재교육 풀스택 JAVA 과정 2기 3차 팀 프로젝트 _ 티스푼 페이지
<br><br>

## 🖥️ 프로젝트 소개
"teaspoon" 이라는 학부모 교육 커뮤니티 사이트입니다.
<br><br>

### 📌 주요기능
* **회원기능** (로그인, 로그아웃, 회원가입)
* **마이페이지** (본인확인, 개인정보수정)
* **관리자페이지** (회원관리, 이벤트관리, 커뮤니티관리, 욕설 필터 기능, QnA[미답변 질문글] 관리, 자료실 관리, 페이징 처리)
* **커뮤니티** (카테코리, 글 목록, 글 상세보기, 글[이미지 첨부] 등록하기, 글 수정하기, 글 삭제하기, 댓글, 페이징 처리, 검색 기능)
* **자료실** (글 목록, 글 상세보기, 글[파일 첨부] 등록하기, 글 수정하기, 글 삭제하기, 페이징 처리, 검색 기능)
* **교육 뉴스** (뉴스 목록[크롤러], 뉴스 링크 이동)
* **이벤트** (글 목록, 글 상세보기, 글[이미지 첨부] 등록하기, 글 수정하기, 글 삭제하기, 신청하기, 페이징 처리)
* **이벤트 당첨** (신청자 목록, 당첨자 추첨하기, 당첨글 등록하기, 당첨글 삭제하기)
* **출석체크** (출석체크 목록, 출석체크하기)
* **공지사항** (글 목록, 글 상세보기, 글 등록하기, 글 수정하기, 글 삭제하기, 페이징 처리, 검색기능)
* **QnA** (글 목록, 글 상세보기, 글[질문글, 답변글] 등록하기, 글 수정하기, 글 삭제하기, 페이징 처리) 
* **FAQ**

## 🕰️ 개발 기간
* 23.09.04일 - 23.09.22일
<br><br>

### 🧑‍🤝‍🧑 맴버구성

**팀장 : [김이호](https://github.com/leeho7029)**
* 화면설계서 작성
* 시퀀스 다이어그램 작성
* 자료실 기능 구현
   * 파일첨부 기능 구현
   * 관리자 페이지 자료실 관리 기능구현
   * 페이징 처리 기능 구현
* 마이페이지
  * 본인확인 기능 구현
  * 나의 정보 수정 기능 구현
* 뉴스 크롤링 기능 구현
* 페이징 처리 기능 구현
* 로그인 화면 제작
* 관리자 페이지 화면 제작

<br><br>
**팀원 : [김보경](https://github.com/emssme)**
* 시퀀스 다이어그램 작성
* 요구사항정의서 작성
* 사이드바 기능 구현
* QNA 기능 구현
  * 관리자 페이지 미답변 질문글 관리 기능 구현
* 이벤트 당첨 구현
  * 이벤트 추첨 기능 구현
  * 당첨자 발표 기능 구현
  * 당첨자 익명처리 기능 구현
* 메인페이지 화면 제작
  
<br><br>
**팀원 : [김현경](https://github.com/beubeu95)**
* usecasediagram 작성
* WBS 작성
* 공지사항 기능 구현
* FAQ 기능 구현
* 이벤트 기능 구현
  * 이벤트 신청 기능 구현
* 관리자 페이지 회원관리 기능 구현
* 로그인 기능 구현

<br><br>
**팀원 : [신예은](https://github.com/shinyeeun789)**
* 커뮤니티 기능 구현
    * 검색 기능 구현
    * 페이징 처리 기능 구현
    * 욕설 필터 기능 구현
    * 커뮤니티 관리 기능 구현
* 출석체크 기능 구현
* 마이페이지
  * 로그인 아이디 기억하기 기능구현
  * 회원가입 기능 구현
* 관리자페이지
  * 관리자 페이지 화면 제작
  * 통계페이지 기능 구현
  * 방문자수, 포인트 기능 구현
* 메이페이지 화면 제작



<br><br>
### ⚙️ 개발 환경
#### ✅FRONTEND : <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/css-0769AD?style=for-the-badge&logo=css&logoColor=white"><img src="https://img.shields.io/badge/bulma-00D1B2?style=for-the-badge&logo=bulma&logoColor=white"><img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> 
#### ✅BACKEND : <img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"><img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"><img src="https://img.shields.io/badge/intellijidea-000000?style=for-the-badge&logo=intellijidea&logoColor=white">

#### ✅DATABASE : <img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white"><img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">

#### ✅Server : <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
<br><br>
<hr>
<br><br>

# ⚒프로젝트 설계

### 📂개념적 설계 (USECASE DIAGRAM)
<p align="center"><img alt="usecasediagram1" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/5d7568bc-8393-4c69-9a0a-3fa2e6a8d416"></p>

<br><br>

### 📂DATABASE - 테이블 ERD
<p align="center"><img alt="database_erd" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/92897e4d-2d76-4cf4-b946-19519225270b"></p>
<br><br>

### 📂DATABASE - 테이블 구현
#### MEMBER
<p align="center"><img alt="member" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/6fd3822e-fa97-43e9-b121-3248afddeb9e"></p>

#### NOTICE
<p align="center"><img alt="notice" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/5b58b765-2d76-4deb-bc08-1bb5a07caa89"></p>

#### QNA
<p align="center"><img alt="qna" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/942658b3-6e34-4279-8e1a-3eacb654c465"></p>

#### FAQ
<p align="center"><img alt="faq" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/4fd4251d-c5c9-4f4a-acb3-746a8e85bbca"></p>

#### COMMUNITY
<p align="center"><img alt="community" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/c3e9028f-99ae-47f1-a0b5-5758c5d01fb0"></p>

#### COMMENT
<p align="center"><img alt="comment" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/d437bcc4-9f40-4bb6-90c4-8a47bc39689b"></p>

#### CATEGORY
<p align="center"><img alt="category" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/8ed62864-7437-4d72-b5fb-261dba012f1c"></p>

#### FILEBOARD
<p align="center"><img alt="fileboard" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/60e0f97a-6ded-4ae1-bc77-f2250720b08a"></p>

#### FILEINFO
<p align="center"><img alt="fileinfo" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/fc58bfae-235c-45ec-8ab8-d22db8c84a01"></p>

#### FILTERWORD
<p align="center"><img alt="filterword" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/eccbca79-d6d9-4f58-8201-e2824e306ab6"></p>

#### ATTENDANCE
<p align="center"><img alt="attendance" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/a6038b73-7c27-4a66-b216-c2f9fe10cd3c"></p>

#### APPLY
<p align="center"><img alt="apply" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/cb61fb01-4768-4798-a534-0edbead3416a></p>
                    
#### EVENT
<p align="center"><img alt="event" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/e05b56d2-a19a-4704-b525-65ad424295d4></p>
                    
#### WINNER
<p align="center"><img alt="winner" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/fd08e7af-5061-4103-a1c1-c5e9c4f71e17></p>
                    
#### WINNERLIST
<p align="center"><img alt="winnerlist" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/0beb90a0-5d20-4cb7-a97b-2459361d1e40></p>
<br><br>

### 📂CLASS DIAGRAM
![classdiagram](https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/70d52932-fbed-4b38-a99d-da1044a55987)
<br><br>

### 📂시퀀스 다이어그램 (Sequence Diagram)

#### 회원
<p align="center"><img alt="시퀀스다이아그램1" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/c23d7e4d-74dc-4be4-bc9c-ee483b01b734"></p>

#### 관리자
<p align="center"><img alt="시퀀스다이아그램2" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/1cc981cb-0743-40dd-ab87-457574e24ec6"></p>

#### 교육뉴스
<p align="center"><img alt="시퀀스다이아그램3" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/0a95da73-c51b-47fc-868c-1ef49a67db3c"></p>

#### 공지사항
<p align="center"><img alt="시퀀스다이아그램4" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/93e6a5ce-a106-4010-a208-f35cec71a539"></p>

#### QnA
<p align="center"><img alt="시퀀스다이아그램5" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/abe77b6a-596d-4da4-9156-85820404a71f"></p>

#### FAQ & HOME
<p align="center"><img alt="시퀀스다이아그램6" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/f4411160-4048-419f-b8dc-231e63f0ebae"></p>

#### 커뮤니티
<p align="center"><img alt="시퀀스다이아그램7" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/cf3da737-b3af-4160-9a88-ca0c78b409fe"></p>

#### 댓글
<p align="center"><img alt="시퀀스다이아그램8" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/ffec9f3d-745e-416e-9166-1122ed0ef3c0"></p>

#### 자료실
<p align="center"><img alt="시퀀스다이아그램9" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/bc1a76fc-9cb1-4bc4-a81f-08b2ad11a38f"></p>

#### 이벤트
<p align="center"><img alt="시퀀스다이아그램10" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/c49b118a-c2ef-40b1-84f5-ead08ab6cf75"></p>

#### 이벤트 신청
<p align="center"><img alt="시퀀스다이아그램11" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/d008e280-199e-4a29-9114-51486016beeb"></p>

#### 당첨자 
<p align="center"><img alt="시퀀스다이아그램12" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/e6f79e13-f0b7-4249-95be-4003ea1de11f"></p>

<br><br>


# 📎기능 구현
## 메인 페이지
- 사이드바
- 카카오톡 1:1 상담 기능
<p align="center"><img alt="메인페이지" src="https://github.com/ChunjaeTeam3/TeamProject3/assets/138674233/d640b37c-0983-4b74-9170-d876649e445f"></p>

## 🗂 회원 기능
### 1. 로그인
#### (1) 일반 로그인
