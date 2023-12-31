<%@ page contentType="text/html;" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>당첨자 발표 상세보기</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
<link rel="stylesheet" href="${path}/resources/css/firework.css">
</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 당첨자 발표 </h1>
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
<!-- 헤더 사이드 영역 끝 -->

<!--당첨자 추첨 상세보기-->
<div class="content" id="content" style="margin-top: 100px;">
    <div class="container">
        <table id="table">
            <tbody>
                <tr style="border-top: solid grey 1px;">
                    <td style="font-weight: bold; font-size: 30px;">${dto.title }</td>
                    <td style="min-width:10%; max-width: 15%; text-align: right; padding-top:30px;">
                        작성자 | ${dto.author}
                    </td>
                    <td style="width: 170px; padding-right: 0px; padding-top:30px;">
                        작성일 | <fmt:parseDate value="${dto.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                        <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                    </td>
                </tr>
                <tr style="border-bottom: solid grey 1px;">
                    <td style="padding-top: 50px; padding-bottom: 50px;"><p>${dto.content }</p></td>
                </tr>
            </tbody>
        </table>
        <div class="buttons is-right mb-100" style="margin-top: 30px;">
            <a class="button" href="${path }/winner/list.do">목록</a>
            <c:if test='${sid eq "admin" && not empty sid}'>
                <a class="button" href="${path }/winner/delete.do?wno=${dto.wno}">삭제</a>
            </c:if>
        </div>
    </div>
</div>

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <input type="hidden" id="wno" name="wno" value="${dto.wno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<script src="${path}/resources/js/firework.js"></script>
</body>
</html>