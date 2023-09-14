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
    <title>Q&A 상세보기</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> Q & A 상세보기 </h1>
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

<!--QnA 상세보기-->

<div class="container">
    <table id="table is-fullwidth is-center">
        <tbody>
        <tr>
            <th style="background-color:#dcdcdc">글 번호</th>
            <td>${dto.qno }</td>
        </tr>
        <tr>
            <th style="background-color:#dcdcdc">글 제목</th>
            <td>${dto.title }</td>
        </tr>
        <tr>
            <th style="background-color:#dcdcdc">글 내용</th>
            <td><p>${dto.content }</p></td>
        </tr>
        <tr>
            <th style="background-color:#dcdcdc">작성자</th>
            <td>${dto.author }</td>
        </tr>
        <tr>
            <th style="background-color:#dcdcdc">작성일시</th>
            <td>${dto.resdate }</td>
        </tr>
        <tr>
            <th style="background-color:#dcdcdc">읽은 횟수</th>
            <td>${dto.visited }</td>
        </tr>
        </tbody>
    </table>
    <div class="button-group">
        <a class="button" href="${path }/qna/list.do">글 목록</a>
        <a class="button" href="${path }/qna/delete.do?qno=${dto.qno}">글 삭제</a>
        <a class="button" href="${path }/qna/edit.do?qno=${dto.qno}">글 수정</a>
    </div>
</div>
</body>
</html>