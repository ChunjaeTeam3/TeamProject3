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
    <title>이벤트 목록</title>
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
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 이벤트 </h1>
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

<!-- 이벤트 영역 시작 -->
<div class="content" id="content" style="margin-top: 20px;">
    <div class="row column text-center" style="margin-top:100px;">
        <div class="container">
            <div>
            <!-- 이벤트 관리자만 글쓰기 가능 처리 -->
            <c:if test='${sid eq "admin"}'>
            <div class="button-group" style="float:right; margin-left:20px;">
                <a class="button is-primary" href="${path }/event/insert.do" style="background-color: #41228e">글쓰기</a>
            </div>
            </c:if>
            <table class="table">
                <thead>
                <tr>
                    <th class="has-text-centered" width="80">번호</th>
                    <th class="has-text-centered">제목</th>
                    <th class="has-text-centered" width="200">이벤트상태</th>
                    <th class="has-text-centered" width="120">시작일</th>
                    <th class="has-text-centered" width="120">종료일</th>
                    <th class="has-text-centered" width="100">조회수</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${eventList }" var="event" varStatus="status">
                    <tr>
                        <td class="has-text-centered" style="line-height: 83px">${status.count }</td>
                        <td >
                            <a href="${path}/event/detail.do?eno=${event.eno }" style="color: #000000; text-decoration: none; line-height: 83px;">${event.title }</a>
                        </td>
                        <c:if test='${event.status eq "1"}'>
                            <td class="has-text-centered" style="line-height: 83px"><span class="tag is-success is-light is-medium">진행 중</span></td>
                        </c:if>
                        <c:if test='${event.status eq "0"}'>
                            <td class="has-text-centered" style="line-height: 83px"><span class="tag is-danger is-light is-medium">종료</span></td>
                        </c:if>
                        <td class="has-text-centered" style="line-height: 83px">${event.sdate}</td>
                        <td class="has-text-centered" style="line-height: 83px">${event.edate}</td>
                        <td class="has-text-centered" style="line-height: 83px">${event.cnt }</td>
                    </tr>
                </c:forEach>
                <c:if test="${empty eventList}">
                    <tr>
                        <td colspan="6" class="has-text-centered"> 작성된 이벤트가 없습니다. </td>
                    </tr>
                </c:if>
                </tbody>
            </table>
            <!-- pagnation -->
            <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
                    <c:if test="${curPage > 5}">
                        <a href="${path}/event/list.do?page=${page.blockStartNum - 1}" class="pagination-previous" >Previous</a>
                    </c:if>
                    <c:if test="${page.blockLastNum < page.totalPageCount}">
                        <a href="${path}/event/list.do?page=${page.blockLastNum + 1}" class="pagination-next" >Next page</a>
                    </c:if>

                    <ul class="pagination-list">
                        <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                            <c:choose>
                                <c:when test="${i == curPage}">
                                    <li>
                                        <a href="${path}/notice/list.do?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="pagination-link is-current" aria-label="Page ${i}" aria-current="page" >${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a href="${path}/notice/list.do?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>" class="pagination-link" aria-label="Page ${i}" aria-current="page" >${i}</a>
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
<!-- 이벤트 영역 끝-->

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>