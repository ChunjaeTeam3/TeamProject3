<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>로그인</title>
  <c:set var="path" value="${pageContext.request.contextPath}"/>
  <jsp:include page="../setting/head.jsp" />
  <style>
    .login-hr {border: 1px solid orange; /* 주황색 테두리 색상 지정 */ }
  </style>

  <link rel="icon" type="image/png" href="${path}/resources/images/tspoonfabicon.png">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet"> -->
  <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="${path}/css/login.css">
</head>
<body>

<section class="hero is-link is-fullheight">
  <div class="hero-body">
    <div class="container has-text-centered">
      <div class="column is-4 is-offset-4">
        <h3 class="title has-text-white">로그인</h3>
        <hr class="login-hr">
        <p class="subtitle has-text-weight-bold">티스푼을 찾아주셔서 감사합니다.</p>
        <div class="box" style="border: 3px solid orange;">
<!--         로그인 이미지 구역-->
          <figure class="avatar">
            <a href="/">
              <img src="${path }/resources/images/tspoon.png">
            </a>
          </figure>
<!--          로그인 폼-->
          <form action="${path }/member/loginpro.do" method="post" name="login">
            <div class="field">
              <div class="control">
                <input type="text" name="id" id="id" class="input is-large" type="" placeholder="아이디"  required autofocus="">
              </div>
            </div>

            <div class="field">
              <div class="control">
                <input class="input is-large" type="password" name="pw" id="pw" placeholder="비밀번호" required>
              </div>
            </div>

            <div class="field">
              <label class="checkbox">
                <input type="checkbox">
                아이디 저장
              </label>

            </div>
            <button class="button is-block is-info is-large is-fullwidth">로그인 <i class="fa fa-sign-in" aria-hidden="true"></i></button>
          </form>
<!--          로그인 하단 메뉴-->
        </div>
        <p class="has-text-white">
          <a href="${path}/member/term.do">회원가입</a> &nbsp;·&nbsp;
          <a href="../..">비밀번호를 잊어버리셨나요?</a> &nbsp;·&nbsp;
          <a href="${path}/faq/list.do">고객지원</a>
        </p>
      </div>
    </div>
  </div>
</section>
</body>
</html>
