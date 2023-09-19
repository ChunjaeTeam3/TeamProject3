<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
    <title>자료 상세보기</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
</head>
<body>

<!-- 헤더 영역 시작 -->
<%@ include file="../layout/header.jsp"%>
<%--<jsp:include page="../layout/header.jsp"/>--%>
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
                        <c:forEach var="item" items="${fileboard2}">
                            <a href="${pageContext.request.contextPath}/resources/upload/${item.saveFolder}/${item.saveFile}"
                               download="${item.originFile }"><i class="fas fa-file" style="color: #54c066;"></i> ${item.originFile }
                            </a>
                        </c:forEach>
                    </td>
                </tr>
                </tbody>
            </table>

            <%-- 버튼 그룹부분 --%>
            <div class="buttons is-right mb-100">
                <a class="button" href="${path }/fileboard/list.do">목록</a>
                <c:if test='${sid eq "admin"}'>
                    <a class="button" href="${path }/fileboard/edit.do?articleno=${fileboard.articleno}">수정</a>
                    <a class="button" href="${path }/fileboard/delete.do?articleno=${fileboard.articleno}">삭제</a>
                </c:if>
            </div>
        </div>
    </div>
</div>
<!-- 공지사항 글 상세보기 끝 -->

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <input type="hidden" id="articleno" name="articleno" value="${fileboard.articleno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

</body>
</html>