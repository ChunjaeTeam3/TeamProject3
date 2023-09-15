<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> 게시판 관리 </title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <jsp:include page="../setting/head.jsp" />
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<!-- page title -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 게시판 필터링 </h1>
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
<!-- /page title -->

<section class="section" data-background="${path}/resources/images/backgrounds/bg-dots.png">
    <div class="container" id="content">
        <div class="columns is-centered">
            <div class="column is-8-desktop">
                <div class="has-background-white card-content shadow-down p-6">
                    <form action="${path}/admin/filterInsert.do" class="columns is-multiline is-centered" method="post">
                        <div class="column is-10-tablet">
                            <label for="word" class="label"> 필터링할 단어 </label>
                            <div class="columns">
                                <div class="column is-four-fifths">
                                    <div class="control">
                                        <input type="text" class="input" id="word" name="word" placeholder="필터링할 단어를 입력해주세요" maxlength="100" autocomplete="off" autofocus required>
                                    </div>
                                </div>
                                <div class="column">
                                    <button type="submit" class="button is-primary is-fullwidth"> 추가 </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="container">
                        <table class="table is-hoverable is-fullwidth mt-5">
                            <tr>
                                <th class="has-text-centered"> # </th>
                                <th class="has-text-centered"> 필터링 단어 </th>
                                <th class="has-text-centered"> 비고 </th>
                            </tr>
                            <c:forEach var="filter" items="${filterList}">
                                <tr>
                                    <td class="has-text-centered" width="100" style="line-height: 40px"> ${filter.fno} </td>
                                    <td style="line-height: 40px"> ${filter.word} </td>
                                    <td class="has-text-centered" width="100" style="line-height: 40px"><a href="${path}/admin/filterDelete.do?fno=${filter.fno}&page=${curPage}" class="button has-text-centered is-primary"> 삭제 </a></td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty filterList}">
                                <tr>
                                    <td class="has-text-centered" colspan="3"> 필터링할 단어가 등록되지 않았습니다 : ) </td>
                                </tr>
                            </c:if>
                        </table>

                        <!-- pagination -->
                        <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
                            <c:if test="${curPage > 5}">
                                <a href="${path}/admin/filterInsert.do?page=${page.blockStartNum - 1}" class="pagination-previous">Previous</a>
                            </c:if>
                            <c:if test="${page.blockLastNum < page.totalPageCount}">
                                <a href="${path}/admin/filterInsert.do?page=${page.blockLastNum + 1}" class="pagination-next">Next page</a>
                            </c:if>

                            <ul class="pagination-list">
                                <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                                    <c:choose>
                                        <c:when test="${i == curPage}">
                                            <li>
                                                <a href="${path}/admin/filterInsert.do?page=${i}" class="pagination-link is-current" aria-label="Page ${i}" aria-current="page">${i}</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                                <a href="${path}/admin/filterInsert.do?page=${i}" class="pagination-link" aria-label="Page ${i}" aria-current="page">${i}</a>
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
    </div>
</section>

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<%@ include file="../layout/footer.jsp"%>

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
