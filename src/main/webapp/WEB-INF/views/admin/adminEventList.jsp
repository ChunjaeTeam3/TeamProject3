<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>이벤트 관리</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

</head>
<body>
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp" />
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
                <ul class="menu-list" style="text-align: left; height: 400px;color: orange;font-weight: bold; border-right: solid 3px;width: 250px;">
                    <br>
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
        <div class="column is-9">
            <div class="row column text-center">
                <br>
                <div class="container">
                    <div>
                        <%--이벤트 목록--%>
                        <table class="table" id="event-table">
                            <thead>
                            <tr>
                                <th width="80">번호</th>
                                <th>제목</th>
                                <th width="200">이벤트상태</th>
                                <th width="120">작성일</th>
                                <th width="100">당첨</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${eventList }" var="event" varStatus="status">
                                <tr>
                                    <td>${event.eno }</td>
                                    <td ><a href="${path}/event/detail.do?eno=${event.eno }" style="color: #000000; text-decoration: none;">${event.title }</a></td>
                                    <c:if test='${event.status eq "1"}'>
                                        <td><span class="tag is-success is-light is-medium">진행 중</span></td>
                                    </c:if>
                                    <c:if test='${event.status eq "0"}'>
                                        <td><span class="tag is-danger is-light is-medium">종료</span></td>
                                    </c:if>
                                    <td>
                                        <fmt:parseDate value="${event.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                                        <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                                    </td>
                                    <td>
                                        <div class="button-group" style="align-items: center">
                                            <a class="button is-link" href="${path}/admin/applyList.do?eno=${event.eno }">참여자 확인</a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            <c:if test="${empty eventList}">
                                <tr>
                                    <td colspan="6" class="has-text-centered"> 작성된 이벤트가 없습니다. </td>
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
        jQuery(function ($){
            $("#event-table").DataTable();
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