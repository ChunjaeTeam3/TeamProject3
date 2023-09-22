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
<jsp:include page="../layout/header.jsp" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<!-- page title -->
<section class="hero is-info welcome is-medium">
    <div class="hero-body">
        <div class="container">
            <h1 class="title mb-40">
                Hello, Admin.
            </h1>
            <h2 class="subtitle">
                I hope you are having a great day!
            </h2>
        </div>
    </div>
</section>
<!-- /page title -->

<br>
<div class="container" style="margin-bottom: 200px;">
    <div class="columns">
        <div class="column is-3 ">
            <aside class="menu is-hidden-mobile">
                <ul class="menu-list" style="text-align: left; height: 400px;color: orange;font-weight: bold; border-right: solid 3px;width: 250px;">
                    <br>
                    <li><a href="${path}/admin/list.do">통계</a></li>
                    <li><a href="${path}/admin/adminMemberList.do"> 회원 관리</a></li>
                    <li><a href="${path}/admin/adminEventList.do">이벤트 관리</a></li>
                    <li><a href="${path}/admin/communityMgmt.do">커뮤니티 관리</a></li>
                    <li><a href="${path}/admin/filterInsert.do">게시판 관리</a></li>
                    <li><a href="${path}/admin/questionList.do">QnA 관리</a></li>
                    <li><a href="${path}/admin/adminFileList.do">자료실</a></li>
                </ul>
            </aside>
        </div>
        <div class="row column text-center" >
            <br>
            <div class="container">
                <div>
                    <%--커뮤니티 목록--%>
                    <div class="container">
                        <table class="table is-hoverable is-fullwidth">
                            <thead>
                            <tr>
                                <th class="has-text-centered"> # </th>
                                <th class="has-text-centered"> 카테고리 </th>
                                <th class="has-text-centered"> 제목 </th>
                                <th class="has-text-centered"> 작성자 </th>
                                <th class="has-text-centered"> 작성일 </th>
                                <th class="has-text-centered"> 조회수 </th>
                                <th class="has-text-centered"> 비고 </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${list}">
                                <tr onclick="location.href='${path}/community/getCommunity.do?cno=${item.cno}'" style="cursor: pointer">
                                    <th class="has-text-centered" style="line-height: 40px">${item.cno}</th>
                                    <td class="has-text-centered" style="line-height: 40px">${item.cateName}</td>
                                    <td width="300" style="line-height: 40px">${item.title}</td>
                                    <td class="has-text-centered" style="line-height: 40px">${item.author}</td>
                                    <td class="has-text-centered" style="line-height: 40px">${item.resdate}</td>
                                    <td class="has-text-centered" width="80" style="line-height: 40px">${item.cnt}</td>
                                    <td class="has-text-centered" width="80">
                                        <a href="${path}/admin/communityDelete.do?cno=${item.cno}&page=${curPage}" class="button is-danger is-outlined mb-0">
                                    <span class="icon is-small" style="font-size: 20px">
                                      <i class="fas fa-times"></i>
                                    </span>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty list}">
                                <tr>
                                    <td colspan="6" class="has-text-centered"> 규칙을 위반하는 게시글이 없습니다 : ) </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>

                        <!-- pagination -->
                        <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
                            <c:if test="${curPage > 5}">
                                <a href="${path}/admin/communityMgmt.do?page=${page.blockStartNum - 1}<c:if test="${!empty cate}">&cate=${cate}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="pagination-previous">Previous</a>
                            </c:if>
                            <c:if test="${page.blockLastNum < page.totalPageCount}">
                                <a href="${path}/admin/communityMgmt.do?page=${page.blockLastNum + 1}<c:if test="${!empty cate}">&cate=${cate}</c:if><c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="pagination-next">Next page</a>
                            </c:if>

                            <ul class="pagination-list">
                                <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                                    <c:choose>
                                        <c:when test="${i == curPage}">
                                            <li>
                                                <a href="${path}/admin/communityMgmt.do?page=${i}" class="pagination-link is-current" aria-label="Page ${i}" aria-current="page">${i}</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                                <a href="${path}/admin/communityMgmt.do?page=${i}" class="pagination-link" aria-label="Page ${i}" aria-current="page">${i}</a>
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
</div>
<script async type="text/javascript" src="../js/bulma.js"></script>
<script type="text/javascript">
    jQuery(function ($){
        $("#member-table").DataTable();
    })
</script>

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->


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
