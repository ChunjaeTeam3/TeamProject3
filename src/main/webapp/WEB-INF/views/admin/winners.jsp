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
    <title>이벤트 당첨자 목록</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
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
<!-- 헤더 사이드 영역 끝 -->

<!--QnA List-->
<div class="content" id="content" style="margin-top: 20px;">
    <div class="container" style="margin-top: 60px">
        <table class="table is-fullwidth is-center" id="apply-table">
            <thead>
            <tr>
                <th width="15%" class="has-text-centered">신청번호</th>
                <th width="15%" class="has-text-centered">이벤트 글 번호</th>
                <th width="20%" class="has-text-centered">참여자 아이디</th>
                <th width="20%" class="has-text-centered">참여자 이름</th>
                <th width="30%" class="has-text-centered">참여자 전화번호</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${winners }" var="win" varStatus="status">
                <tr>
                    <td class="has-text-centered">${win.appno}</td>
                    <td class="has-text-centered">${win.eno}</td>
                    <td class="has-text-centered">${win.id}</td>
                    <td class="has-text-centered">${win.name}</td>
                    <td class="has-text-centered">${win.tel}</td>
                </tr>
            </c:forEach>
            <c:if test="${empty winners}">
                <tr>
                    <td colspan="6" class="has-text-centered"> 당첨자가 없습니다. </td>
                </tr>
            </c:if>
            </tbody>
        </table>
        <script type="text/javascript">
            jQuery(function ($){
                $("#apply-table").DataTable();
            })
        </script>
        <div class="button-group" style="margin-top: 30px; margin-bottom: 100px;">
            <a class="button is-primary" href="${path}/admin/winnerInsert.do?eno=${eno}" style="float:right;"> 당첨글 쓰기 </a>
        </div>
    </div>
</div>
<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->
</body>
</html>