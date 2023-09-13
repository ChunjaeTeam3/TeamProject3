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
	<title>공지사항 상세보기</title>
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
				<h1 class="has-text-white font-tertiary"> 공지사항 상세보기 </h1>
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
	<div class="content" id="content">
	    <div class="row column text-center">
	      <div class="container">
		      <table id="table1">
		      	<tbody>
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 번호</th>
		      			<td>${notice.seq }</td>
		      		</tr>	
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 제목</th>
		      			<td>${notice.title }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 내용</th>
		      			<td><p>${notice.content }</p></td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성자</th>
		      			<td>${notice.nickname }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성일시</th>
		      			<td>${notice.regdate }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">읽은 횟수</th>
		      			<td>${notice.visited }</td>
		      		</tr>
		      	</tbody>
		      </table>
				<div class="button-group">
				  <a class="button" href="${path }/notice/list.do">글 목록</a>
				  <%-- <c:if test='${sid eq "admin"}'> --%>
				  <a class="button" href="${path }/notice/delete.do?seq=${notice.seq}">글 삭제</a>
				  <a class="button" href="${path }/notice/edit.do?seq=${notice.seq}">글 수정</a>
				  <%-- </c:if> --%>
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