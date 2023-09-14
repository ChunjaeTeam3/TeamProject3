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
    <title>Q & A</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

    <style>
        table tbody tr:nth-child(2n) {
            background-color: #d3d3d3;
        }
    </style>
</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> Q & A </h1>
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

<!--QnA List-->

<div class="container">
    <table class="table is-fullwidth is-center">
        <thead>
        <tr>
            <th width="10%" class="has-text-centered">글번호</th>
            <th width="50%" class="has-text-centered">글제목</th>
            <th width="10%" class="has-text-centered">작성자</th>
            <th width="15%" class="has-text-centered">조회수</th>
            <th width="15%" class="has-text-centered">작성일</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${qnaList }" var="qna" varStatus="status">
        <tr>
            <td class="has-text-centered">${qna.qno}</td>
<%--            <!-- 비회원일때 -->--%>
<%--            <c:if test="${empty sid}">--%>
<%--                <c:if test="${qna.lev==0}">--%>
<%--                    <td>${qna.title}</td>--%>
<%--                </c:if>--%>
<%--                <c:if test="${qna.lev==1}">--%>
<%--                    <td>&nbsp;&nbsp;&nbsp;&nbsp;⌞${qna.title}</td>--%>
<%--                </c:if>--%>
<%--            </c:if>--%>
<%--            <!-- 회원일때-->--%>
<%--            <c:if test="${!empty sid}">--%>
                <c:if test="${qna.lev==0}">
                    <td>
                        <a href="${path}/qna/detail.do?qno=${qna.qno}">${qna.title}</a>
                    </td>
                </c:if>
                <c:if test="${qna.lev==1}">
                    <td>
                        <a href="${path}/qna/detail.do?qno=${qna.qno}">&nbsp;&nbsp;&nbsp;&nbsp;⌞${qna.title}</a>
                    </td>
                </c:if>
<%--            </c:if>--%>
            <td class="has-text-centered">${qna.author}</td>
            <td class="has-text-centered">${qna.visited}</td>
            <td class="has-text-centered">${qna.visited}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
        <!--회원일 경우만 글 등록 버튼 보이게-->
<%--    <c:if test="${ !empty sid }">--%>
        <div class="buttons">
            <a class="button is-right" href="${path}/qna/insert.do"> 질문하기</a>
        </div>
<%--    </c:if>--%>



</div>
</body>
</html>