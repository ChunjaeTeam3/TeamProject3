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
	<title>FAQ </title>
	<jsp:include page="../setting/head.jsp"></jsp:include>
	<style>
		.faqlist .message-body {background-color: #f1f1f1; }
		.message-body { display:none; }
		.message-header:after { content:"▼"; padding-left: 36px;}
		.message-header.on:after { content:"▲";}
	</style>
</head>
<body>

	<!-- 헤더 영역 시작 -->
	<jsp:include page="../layout/header.jsp" />
	<!-- 헤더 영역 끝 -->

	<!-- 배너 영역 시작 -->
	<section class="page-title background-primary is-relative">
	<div class="container">
		<div class="has-text-centered">
			<h1 class="has-text-white font-tertiary" style="font-size: 40px;"> FAQ </h1>
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


	<!-- FAQ 영역 시작 -->
	<div class="content" id="content" style="margin-top: 20px;">
		<div class="row column text-center">
			<div class="container">
				<div class=" table">
					<!-- 검색 엔진 시작 -->
					<form action="${path}/faq/list.do" method="get" class="field has-addons has-addons-right" style="margin-top: 100px;">
						<p class="control">
                <span class="select">
                    <select id="type" name="type">
                        <option value="T"> 제목 </option>
                        <option value="C"> 내용 </option>
                        <option value="W"> 작성자 </option>
                    </select>
                </span>
						</p>
						<p class="control">
							<input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${page.keyword}" autocomplete="false">
						</p>
						<p class="control">
							<input type="submit" class="button is-primary" value="검색" />
						</p>
					</form>
					<!-- 검색 엔진 끝 -->

					<ul class="faqlist" style="list-style: none;">
						<c:forEach items="${faqList }" var="faq" varStatus="status">
						<li>
							<div class="message-header" style="margin-bottom: 0px; background-color: #485fc7">${faq.question }</div>
							<div class="message-body" style="margin-bottom: 30px; background-color: rgb(245,245,245);">${faq.answer }</div>
						</li>
						</c:forEach>
						<c:if test="${empty faqList}">
							<div class="has-text-centered"> FAQ가 없습니다. </div>
						</c:if>
					</ul>
					<script>
						$(document).ready(function(){
							$(".faqlist li").click(function(){
								$(this).find(".message-body").slideToggle(500);
								$(this).find(".message-header").toggleClass("on");
							});
						});
					</script>
				</div>
			</div>
	    </div>
	</div>
	<!-- FAQ 영역 끝-->

	<!-- 푸터 영영 시작 -->
	<jsp:include page="../layout/footer.jsp"/>
	<!-- 푸터 영역 끝 -->

</body>
</html>