<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본인 확인</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
</head>
<body>

<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp" />
<!-- 헤더 영역 끝 -->

<!-- 배너 영역 시작 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 본인 확인 </h1>
        </div>
    </div>
    <!-- background shapes -->
    <img src="${path}/resources/images/illustrations/page-title.png" alt="illustrations" class="bg-shape-1 w-100">
    <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="illustrations" class="bg-shape-2">
    <img src="${path}/resources/images/illustrations/dots-cyan.png" alt="illustrations" class="bg-shape-3">
    <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="illustrations" class="bg-shape-4">
    <img src="${path}/resources/images/illustrations/leaf-yellow.png" alt="illustrations" class="bg-shape-5">
    <img src="${path}/resources/images/illustrations/leaf-cyan-lg.png" alt="illustrations" class="bg-shape-7">
</section>
<!-- 배너 영역 끝 -->
<form action="${path }/member/loginpro2.do" method="post" name="loginForm">
    <div class="container is-max-desktop" style="margin-top: 150px; margin-bottom: 150px">
        <p style="margin-left: 200px; margin-bottom: 30px"> <strong style="font-size: 26px; font-weight: bold;">보안을 위해 비밀번호를 다시 한번 입력 해주세요.</strong></p>
        <div class="columns is-center">
            <div class="column is-one-fifth has-text-right">
                <label for="pw" style="line-height:40px">비밀번호</label>
            </div>
            <div class="column">
                <input type="password" name="pw" id="pw"  class="input" placeholder="비밀번호 입력" required>
            </div>
            <div class="column is-one-fifth"><input type="submit" class="button is-primary" value="로그인"></div>
        </div>
    </div>
</form>

<jsp:include page="../layout/footer.jsp"/>

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>
</body>
</html>
