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

    <style>
        h1 { font-size: 40pt; }
        h3 { font-size: 20pt; }
    </style>
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> Community </h1>
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
        <div class="buttons has-addons is-centered mb-5">
            <c:if test="${empty curCategory}">
                <label class="button is-primary is-active">
            </c:if>
            <c:if test="${!empty curCategory}">
                <label class="button is-primary">
            </c:if>
                <input type="radio" checked="checked" onclick="javascript:location.href='${path}/community/list.do'"/> 전체
                </label>
            <c:forEach var="cate" items="${categories}">
                <c:if test="${cate.cate eq curCategory}">
                    <label class="button is-primary is-active">
                </c:if>
                <c:if test="${cate.cate ne curCategory}">
                    <label class="button is-primary">
                </c:if>
                    <input type="radio" checked="checked" onclick="javascript:location.href='${path}/community/list.do?cate=${cate.cate}'"/> ${cate.cateName}
                    </label>
            </c:forEach>
        </div>

        <div class="container">
            <form action="${path}/community/list.do" method="get" class="field has-addons has-addons-right">
                <p class="control">
                <span class="select">
                    <select id="type" name="type">
                        <option value="T"> 제목 </option>
                        <option value="C"> 내용 </option>
                        <option value="W"> 작성자 </option>
                    </select>
                </span>
                </p>
                <p class="control">
                    <c:if test="${!empty curCategory}">
                        <input type="hidden" id="cate" name="cate" value="${curCategory}">
                    </c:if>
                    <input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" autocomplete="off" value="${page.keyword}">
                </p>
                <p class="control">
                    <input type="submit" class="button is-primary" value="검색" />
                </p>
            </form>

            <table class="table is-hoverable is-fullwidth">
                <thead>
                <tr>
                    <th class="has-text-centered"> # </th>
                    <th class="has-text-centered"> 카테고리 </th>
                    <th class="has-text-centered"> 제목 </th>
                    <th class="has-text-centered"> 작성자 </th>
                    <th class="has-text-centered"> 작성일 </th>
                    <th class="has-text-centered"> 조회수 </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${list}">
                    <tr onclick="location.href='${path}/community/getCommunity.do?cno=${item.cno}&page=${curPage}<c:if test="${!empty curCategory}">&cate=${curCategory}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>'" style="cursor: pointer">
                        <th class="has-text-centered">${item.cno}</th>
                        <td class="has-text-centered">${item.cateName}</td>
                        <td class="has-text-centered" width="300">${item.title}</td>
                        <td class="has-text-centered">${item.author}</td>
                        <td class="has-text-centered">${item.resdate}</td>
                        <td class="has-text-centered" width="80">${item.cnt}</td>
                    </tr>
                </c:forEach>
                <c:if test="${empty list}">
                    <tr>
                        <td colspan="6" class="has-text-centered"> 게시글이 없습니다. </td>
                    </tr>
                </c:if>
                </tbody>
            </table>
            <!-- pagination -->
            <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
                <c:if test="${curPage > 5}">
                    <a href="${path}/community/list.do?page=${page.blockStartNum - 1}" class="pagination-previous">Previous</a>
                </c:if>
                <c:if test="${page.blockLastNum < page.totalPageCount}">
                    <a href="${path}/community/list.do?page=${page.blockLastNum + 1}" class="pagination-next">Next page</a>
                </c:if>

                <ul class="pagination-list">
                    <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                        <c:choose>
                            <c:when test="${i == curPage}">
                                <li>
                                    <a href="${path}/community/list.do?page=${i}<c:if test="${!empty curCategory}">&cate=${curCategory}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="pagination-link is-current" aria-label="Page ${i}" aria-current="page">${i}</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <a href="${path}/community/list.do?page=${i}<c:if test="${!empty curCategory}">&cate=${curCategory}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="pagination-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </ul>
            </nav>
        </div>
    </div>
</section>

<%@ include file="../layout/footer.jsp"%>

<form action="#">
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
