<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

</head>
<body>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp" />
<!-- 헤더 영역 끝 -->

<!-- 배너 영역 시작 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 회원 관리 </h1>
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

<br>
<div class="row column text-center" >
<div class="container" style="margin-bottom: 200px;">
    <div class="columns">
        <div class="column is-3 ">
            <aside class="menu is-hidden-mobile">
                <ul class="menu-list" style="text-align: left; height: 400px;color: orange;font-weight: bold; border-right: solid 3px;width: 250px;">
                    <br>
                    <li><a href="${path}/admin/adminMemberList.do"> 회원통계</a></li>
                    <li><a href="${path}/admin/adminEventList.do">이벤트</a></li>
                    <li><a >공지사항</a></li>
                    <li><a href="${path}/admin/noAnswerList.do">QnA</a></li>
                    <li><a href="${path}/admin/adminFileList.do">자료실</a></li>
                </ul>
            </aside>
        </div>
        <div class="row column text-center" >
            <br>
            <div class="container">
                <div>
                    <%--회원 목록--%>
                    <table class="table" id="member-table">
                        <thead>
                        <tr>
                            <th width="100">아이디</th>
                            <th width="100">이름</th>
                            <th width="120">가입일</th>
                            <th width="80">강퇴</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${memberList}" var="member" varStatus="status">
                            <tr>
                                <td>${member.id }</td>
                                <td>${member.name}</td>
                                <td>
                                    <fmt:parseDate value="${member.regdate}" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                                    <fmt:formatDate value="${resdate}" pattern="yyyy-MM-dd" />
                                </td>
                                <td>
                                    <div class="button-group" style="align-items: center">
                                        <a class="button is-danger" href="${path}/admin/memberDelete.do?id=${member.id }">강퇴</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty memberList}">
                            <tr>
                                <td colspan="5" class="has-text-centered"> 가입한 회원이 없습니다. </td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
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

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>
