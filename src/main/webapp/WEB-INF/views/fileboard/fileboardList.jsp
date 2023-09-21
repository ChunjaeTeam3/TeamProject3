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
    <title>자료실</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
</head>
<body>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 영역 끝 -->

<!-- 배너 영역 시작 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 자료실 </h1>
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
<div class="content" id="content" style="margin-top: 60px;">
    <div class="row column text-center">
        <div class="container">
            <div>
                <!-- 공지사항 관리자만 글쓰기 가능 처리 -->
                <%-- <c:if test='${sid eq "admin"}'> --%>
                <c:if test='${sid eq "admin"}'>
                    <div class="button-group" style="float:right; margin-left:20px;">
                        <a class="button" href="${path }/fileboard/insert.do">글쓰기</a>
                    </div>
                </c:if>
                <%-- </c:if> --%>
                <table class="table mb-100" id="file-table">
                    <thead>
                    <tr>
                        <td class="has-text-centered" style="width: 10%">#</td>
                        <td style="width: 65%">제목</td>
                        <td class="has-text-centered" style="width: 10%">작성자</td>
                        <td class="has-text-centered" style="width: 15%">
                            <fmt:parseDate value="${fileboard.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                            <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                        </td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${fileboardList }" var="fileboard" varStatus="status">
                        <tr>
                            <td class="has-text-centered">${status.count }</td>
                            <c:if test="${empty sid}">
                                <td>${fileboard.title }</td>
                            </c:if>
                            <c:if test="${!empty sid}">
                                <td ><a href="${path}/fileboard/detail.do?articleno=${fileboard.articleno }" style="color: #000000;">${fileboard.title }</a></td>
                            </c:if>
                            <td>${fileboard.id }</td>
                            <td class="has-text-centered">
                                <fmt:parseDate value="${fileboard.regdate }" var="resdate"
                                               pattern="yyyy-MM-dd HH:mm:ss"/>
                                <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty fileboardList}">
                        <tr>
                            <td colspan="6" class="has-text-centered"> 등록된 자료가 없습니다.</td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- 공지사항 영역 끝-->

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <input type="hidden" id="cno" name="cno" value="${detail.cno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<script type="text/javascript">
    jQuery(function ($) {
        $("#file-table").DataTable();
    })
</script>
</body>
</html>