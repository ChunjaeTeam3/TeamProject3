<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 당첨자 발표 </title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
</head>
<body>

<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 영역 끝 -->

<!-- 배너 영역 시작 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 당첨자 발표 </h1>
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

<!-- 공지사항 영역 시작 -->
<div class="content" id="content" style="margin-top: 20px;">
    <div class="row column text-center" style="margin-top:100px;">
        <div class="container">
            <div>
                <table class="table">
                    <thead>
                    <tr>
                        <th width="10%" class="has-text-centered">글번호</th>
                        <th width="50%">글제목</th>
                        <th width="15%" class="has-text-centered">작성자</th>
                        <th width="25%" class="has-text-centered">작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${winnerList }" var="win" varStatus="status">
                        <tr>
                            <td>${win.wno }</td>
                            <td><a href="${path}/winner/detail.do?wno=${win.wno}"
                                   style="color: #000000;">${win.title }</a></td>
                            <td class="has-text-centered">${win.author }</td>
                            <td class="has-text-centered">
                                <fmt:parseDate value="${win.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                                <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty winnerList}">
                        <tr>
                            <td colspan="6" class="has-text-centered"> 게시글이 없습니다.</td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
                <!-- pagnation -->
                <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
                    <c:if test="${curPage > 5}">
                        <a href="${path}/winner/list.do?page=${page.blockStartNum - 1}" class="pagination-previous">Previous</a>
                    </c:if>
                    <c:if test="${page.blockLastNum < page.totalPageCount}">
                        <a href="${path}/winner/list.do?page=${page.blockLastNum + 1}" class="pagination-next">Next
                            page</a>
                    </c:if>

                    <ul class="pagination-list">
                        <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                            <c:choose>
                                <c:when test="${i == curPage}">
                                    <li>
                                        <a href="${path}/winner/list.do?page=${i}" class="pagination-link is-current"
                                           aria-label="Page ${i}" aria-current="page">${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a href="${path}/winner/list.do?page=${i}" class="pagination-link"
                                           aria-label="Page ${i}" aria-current="page">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- 공지사항 영역 끝-->

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

</body>
</html>