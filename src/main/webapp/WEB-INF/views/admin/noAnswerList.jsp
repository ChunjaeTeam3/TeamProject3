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
    <title>미답변 질문 목록</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>

    <style>
        table tbody tr:nth-child(2n) {
            background-color: #d3d3d3;
        }
        table > thead {
            background-color: #d3d3d3;
        }
    </style>
</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 미답변 질문 </h1>
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
<!-- 헤더 사이드 영역 끝 -->

<!--QnA List-->
<div class="content" id="content" style="margin-top: 20px;">
    <div class="container" style="margin-top: 60px">
        <table class="table is-fullwidth is-center">
            <thead>
            <tr>
                <th width="10%" class="has-text-centered">글번호</th>
                <th width="50%" class="has-text-centered">글제목</th>
                <th width="10%" class="has-text-centered">작성자</th>
                <th width="20%" class="has-text-centered">작성일</th>
                <th width="10%" class="has-text-centered">답변하기</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${noAnswerList }" var="noAnswer" varStatus="status">
                <tr>
                    <td class="has-text-centered">${status.count}</td>
                    <td><a href="${path}/qna/detail.do?qno=${noAnswer.qno}" style="color: #000000;">${noAnswer.title}</a></td>
                    <td class="has-text-centered">${noAnswer.author}</td>
                    <td class="has-text-centered">${noAnswer.resdate}</td>
                    <td class="has-text-centered"><a href="${path}/qna/answerInsert.do?qno=${noAnswer.qno}" class="button">답변</a></td>
                </tr>
            </c:forEach>
            <c:if test="${empty noAnswerList}">
                <tr>
                    <td colspan="6" class="has-text-centered"> 질문이 없습니다. </td>
                </tr>
            </c:if>
            </tbody>
        </table>
        <!-- pagination -->
        <nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
            <c:if test="${curPage > 5}">
                <a href="${path}/admin/questionList.do?page=${page.blockStartNum - 1}" class="pagination-previous">Previous</a>
            </c:if>
            <c:if test="${page.blockLastNum < page.totalPageCount}">
                <a href="${path}/admin/questionList.do?page=${page.blockLastNum + 1}" class="pagination-next">Next page</a>
            </c:if>

            <ul class="pagination-list">
                <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                    <c:choose>
                        <c:when test="${i == curPage}">
                            <li>
                                <a href="${path}/admin/questionList.do?page=${i}" class="pagination-link is-current" aria-label="Page ${i}" aria-current="page">${i}</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a href="${path}/admin/questionList.do?page=${i}" class="pagination-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </ul>
        </nav>
    </div>
</div>
<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->
</body>
</html>