<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> 커뮤니티 </title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <jsp:include page="../setting/head.jsp" />
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="has-text-white font-tertiary"> 글 상세 보기 </h2>
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

<section class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-one-quarter">
                <p> 카테고리 </p>
                <input type="text" value="${detail.cateName}" class="input" readonly>
            </div>
            <div class="column">
                <p> 제목 </p>
                <input type="text" value="${detail.title}" class="input" readonly>
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <p> 작성자 </p>
                <input type="text" value="${detail.author}" class="input" readonly>
            </div>
            <div class="column">
                <p> 작성일 </p>
                <input type="text" value="${detail.resdate}" class="input" readonly>
            </div>
            <div class="column is-one-fifth">
                <p> 조회수 </p>
                <input type="text" value="${detail.cnt}" class="input" readonly>
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <textarea class="textarea" cols="30" rows="10"> ${detail.content} </textarea>
            </div>
        </div>
        <div class="buttons is-right">
            <a href="${path}/community/list.do?page=${page}<c:if test="${!empty curCategory}">&cate=${curCategory}</c:if><c:if test="${!empty keyword}">&type=${type}&keyword=${keyword}</c:if>" class="button is-primary"> 목록 </a>
            <a href="${path}/community/edit.do?cno=${detail.cno}" class="button is-primary"> 수정 </a>
            <a href="${path}/community/delete.do?cno=${detail.cno}" class="button is-primary"> 삭제 </a>
        </div>
    </div>
</section>

<%@ include file="../layout/footer.jsp"%>

<form action="#">
    <input type="hidden" id="cno" name="cno" value="${detail.cno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<!-- jQuery -->
<script src="${path}/resources/plugins/jQuery/jquery.min.js"></script>
<!-- slick slider -->
<script src="${path}/resources/plugins/slick/slick.min.js"></script>
<!-- filter -->
<script src="${path}/resources/plugins/shuffle/shuffle.min.js"></script>

<!-- Main Script -->
<script src="${path}/resources/js/script.js"></script>
</body>
</html>
