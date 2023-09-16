<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="fileboard" value="${dto}"/>
<c:set var="fileboard2" value="${dto2}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자료 상세보기</title>
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
            <h1 class="has-text-white font-tertiary"> 자료 상세보기 </h1>
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

<!-- 공지사항 글 상세보기 시작-->
<div class="content" id="content" style="margin-top: 100px;">
    <div class="row column text-center">
        <div class="container">
<%--            내용 부분--%>
    <table class="table">
        <thead>
        <tr>
            <th class="item2">제목</th>
            <th class="item3">작성일</th>
            <th class="item4">작성자</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="item2">${fileboard.title}</td>
            <td class="item3">${fileboard.regdate}</td>
            <td class="item4">${fileboard.id}</td>
        </tr>
        <tr>
            <td colspan="3">
                ${fileboard.content}
            </td>
        </tr>
        <tr>
            <th class="item2" colspan="3">학습자료(클릭하여 다운로드)</th>
        </tr>
        <tr>
            <td colspan="3">
                <c:if test="${!empty fileboard2.originFile}">
                    <a href="${pageContext.request.contextPath}/resources/upload/${fileboard2.saveFolder}/${fileboard2.saveFile}" download="${fileboard2.originFile }"><i class="fas fa-file" style="color: #54c066;"></i> ${fileboard2.originFile }</a>
                </c:if>
            </td>
        </tr>
        </tbody>
    </table>

<%--            버튼 그룹부분--%>
    <div class="button-group" style="margin-top: 30px; margin-left: 1070px; margin-bottom: 100px;">
        <c:if test='${sid eq "admin"}'>
            <a class="button" href="${path }/fileboard/delete.do?articleno=${fileboard.articleno}">글 삭제</a>
            <a class="button" href="${path }/fileboard/edit.do?articleno=${fileboard.articleno}">글 수정</a>
        </c:if>
        <a class="button" href="${path }/fileboard/list.do" style="float:right;">글 목록</a>
    </div>
        </div>
    </div>
</div>
<!-- 공지사항 글 상세보기 끝 -->

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

</body>
</html>