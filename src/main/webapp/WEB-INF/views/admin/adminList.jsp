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
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 관리자 게시판 </h1>
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

<div class="container" style="margin-bottom: 200px;">
    <div class="columns">
        <div class="column is-3 ">
            <aside class="menu is-hidden-mobile">
                <p class="menu-label">
                    관리자 페이지
                </p>
                <ul class="menu-list">
                    <li><a href="${path}/admin/adminMemberList.do"> 회원통계</a></li>
                    <li><a href="${path}/admin/adminEventList.do">이벤트</a></li>
                    <li><a >공지사항</a></li>
                    <li><a href="${path}/admin/noAnswerList.do">QnA</a></li>
                    <li><a href="${path}/admin/adminFileList.do">자료실</a></li>
                </ul>
            </aside>
        </div>
        <div class="column is-9">
            <section class="hero is-info welcome is-small">
                <div class="hero-body">
                    <div class="container">
                        <h1 class="title">
                            Hello, Admin.
                        </h1>
                        <h2 class="subtitle">
                            I hope you are having a great day!
                        </h2>
                    </div>
                </div>
            </section>
            <section class="info-tiles">
                <div class="tile is-ancestor has-text-centered">
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="title">전체 게시글</p>
                            <p class="subtitle">Users</p>
                        </article>
                    </div>
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="title">전체 게시글</p>
                            <p class="subtitle">전체 게시글</p>
                        </article>
                    </div>
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="title">전체 게시글</p>
                            <p class="subtitle">이벤트 참여자수</p>
                        </article>
                    </div>
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="title">전체 게시글</p>
                            <p class="subtitle">미완료질문글</p>
                        </article>
                    </div>
                </div>
            </section>
            <div class="columns" style="height: 400px">
                <div class="column is-6">
                    <div class="card events-card">
                        <header class="card-header">
                            <p class="card-header-title">
                                이벤트
                            </p>
                            <a href="#" class="card-header-icon" aria-label="more options">
                  <span class="icon">
                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                  </span>
                            </a>
                        </header>
                        <div class="card-table">
                            <div class="content">
                                <table class="table is-fullwidth is-striped">
                                    <tbody>
                                    <tr>
                                        <td width="5%"><i class="fa fa-bell-o"></i></td>
                                        <td>진행중인 이벤트1</td>
                                        <td class="level-right"><a class="button is-small is-primary" href="#">Action</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <footer class="card-footer">
                            <a href="#" class="card-footer-item">View All</a>
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

</body>
</html>