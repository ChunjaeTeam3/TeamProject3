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
    <title>자료실 관리</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

</head>
<body>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 영역 끝 -->

<!-- 배너 영역 시작 -->
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

<br>
<div class="container mb-100" style="margin-top: 50px">
    <div class="columns">
        <div class="column is-3 ">
            <aside class="menu is-hidden-mobile">
                <ul class="menu-list" style="font-weight: bold">
                    <li><a href="${path}/admin/list.do"> 대시보드</a></li>
                    <li><a href="${path}/admin/adminMemberList.do"> 회원 관리</a></li>
                    <li><a href="${path}/admin/adminEventList.do">이벤트 관리</a></li>
                    <li><a href="${path}/admin/communityMgmt.do">커뮤니티 관리</a></li>
                    <li><a href="${path}/admin/filterInsert.do">필터링 단어 관리</a></li>
                    <li><a href="${path}/admin/questionList.do">QnA 관리</a></li>
                    <li><a href="${path}/admin/adminFileList.do">자료실</a></li>
                </ul>
            </aside>
        </div>
            <div class="row column text-center">
                <br>
                <div class="container">
                    <div>
                        <%--자료실 --%>
                        <table class="table" id="file-table">
                            <thead>
                            <tr>
                                <th width="80">번호</th>
                                <th width="200">제목</th>
                                <th width="80">작성자</th>
                                <th width="120">작성일</th>
                                <th width="80">삭제</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${fileboardList}" var="fileboard" varStatus="status">
                                <tr>
                                    <td>${fileboard.articleno}</td>
                                    <td><a href="${path}/fileboard/detail.do?articleno=${fileboard.articleno}"
                                           style="color: #000000;">${fileboard.title}</a></td>
                                    <td>${fileboard.id}</td>
                                    <td>
                                        <fmt:parseDate value="${fileboard.regdate}" var="resdate"
                                                       pattern="yyyy-MM-dd HH:mm:ss"/>
                                        <fmt:formatDate value="${resdate}" pattern="yyyy-MM-dd"/>
                                    </td>
                                    <td>
                                        <div class="button-group" style="align-items: center">
                                            <a class="button is-danger"
                                               href="${path}/fileboard/delete.do?articleno=${fileboard.articleno}">삭제</a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty fileboardList}">
                                <tr>
                                    <td colspan="5" class="has-text-centered"> 등록된 자료가 없습니다.</td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script async type="text/javascript" src="../js/bulma.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        $("#file-table").DataTable();
    })
</script>

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
