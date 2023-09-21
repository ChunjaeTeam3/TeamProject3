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
    <title>이벤트 참여자 목록</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 이벤트 참여자 목록 </h1>
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
            <c:forEach items="${applyList }" var="apply" varStatus="status">
                <tr>
                    <td class="has-text-centered">${apply.appno}</td>
                    <td class="has-text-centered">${apply.eno}</td>
                    <td class="has-text-centered">${apply.id}</td>
                    <td class="has-text-centered">${apply.name}</td>
                    <td class="has-text-centered">${apply.tel}</td>
                </tr>
            </c:forEach>
            <c:if test="${empty applyList}">
                <tr>
                    <td colspan="6" class="has-text-centered"> 참여자가 없습니다. </td>
                </tr>
            </c:if>
            </tbody>
        </table>
        <script type="text/javascript">
            jQuery(function ($){
                $("#apply-table").DataTable();
            })
        </script>
        <div class="buttons is-right mb-100" style="margin-top: 30px;">
            <a class="button is-primary" href="${path}/admin/winners.do?eno=${eno}"> 당첨자 추첨 </a>
        </div>
    </div>
</div>
<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->
</body>
</html>