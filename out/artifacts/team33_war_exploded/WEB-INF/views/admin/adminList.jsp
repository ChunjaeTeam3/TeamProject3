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
    <title>관리자 게시판</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
</head>
<body>


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

<div class="container mb-100" style="margin-top: 50px">
    <div class="columns">
        <div class="column is-3 ">
            <aside class="menu is-hidden-mobile">
                <ul class="menu-list">
                    <li><a href="${path}/admin/adminMemberList.do"> 회원 관리</a></li>
                    <li><a href="${path}/admin/adminEventList.do">이벤트 관리</a></li>
                    <li><a href="${path}/admin/communityMgmt.do">커뮤니티 관리</a></li>
                    <li><a href="${path}/admin/filterInsert.do">게시판 관리</a></li>
                    <li><a href="${path}/admin/questionList.do">QnA 관리</a></li>
                    <li><a href="${path}/admin/adminFileList.do">자료실</a></li>
                </ul>
            </aside>
        </div>
        <div class="column is-9">
            <section class="info-tiles">
                <div class="tile is-ancestor has-text-centered">
                    <div class="tile is-parent hover-shadow">
                        <article class="tile is-child box">
                            <p class="subtitle"> <i class="fa-solid fa-user"></i> 회원 수 </p>
                            <p class="title"> ${memberCnt}명 </p>
                        </article>
                    </div>
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="subtitle"> <i class="fa-solid fa-list-ul"></i> 전체 게시글</p>
                            <p class="title"> ${communityCnt}개 </p>
                        </article>
                    </div>
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="subtitle"> <i class="fa-solid fa-gift"></i> 이벤트 참여자</p>
                            <p class="title"> ${applyCnt}명 </p>
                        </article>
                    </div>
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="subtitle"> <i class="fa-solid fa-question"></i> 미완료 질문글</p>
                            <p class="title"> ${noAnswerCnt}개 </p>
                        </article>
                    </div>
                </div>
            </section>
            <div class="columns" style="height: 400px">
                <div class="column is-12">
                    <div class="card events-card p-5">
                        <header class="card-header">
                            <p class="card-header-title">
                                진행 중인 이벤트
                            </p>
                        </header>
                        <div class="card-table">
                            <div class="content">
                                <table class="table is-fullwidth is-striped">
                                    <tbody>
                                    <c:forEach var="event" items="${ongoingEvents}" varStatus="state">
                                        <tr>
                                            <td style="vertical-align: middle"> <i class="fa-solid fa-bell"></i> ${event.title} </td>
                                            <td class="has-text-right" style="vertical-align: middle"><a class="button is-small is-primary" href="${path}/event/detail.do?eno=${event.eno}"> 상세보기 </a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <footer class="card-footer">
                            <a href="${path}/event/list.do" class="card-footer-item"> view all </a>
                        </footer>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script async type="text/javascript" src="../js/bulma.js"></script>

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <input type="hidden" id="cno" name="cno" value="${detail.cno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

</body>
</html>