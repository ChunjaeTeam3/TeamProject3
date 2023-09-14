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
    <title>질문 등록하기</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>


</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 질문 등록하기 </h1>
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

<!--질문 등록하기-->

<div class="container">
    <form action="${path}/qna/questionInsert.do" method="post">
        <!--질문 제목-->
        <div class="field is-horizontal">
            <div class="field-label is-normal">
                <label class="label">제목</label>
            </div>
            <div class="field-body">
                <div class="field">
                    <p class="control">
                        <input class="input" type="text" name="title" id="title" placeholder="제목" required>
                    </p>
                </div>
            </div>
        </div>
        <!--질문 내용-->
        <div class="field is-horizontal">
            <div class="field-label is-normal">
                <label class="label">질문 내용</label>
            </div>
            <div class="field-body">
                <div class="field">
                    <p class="control">
                        <textarea class="textarea" name="content" id="content" placeholder="질문내용을 입력하시오" rows="8" cols="100" maxlength="800" style="resize: none;"></textarea>
                    </p>
                </div>
            </div>
        </div>

        <div class="button-group">
            <a class="button" href="${path }/qna/list.do">글 목록</a>
            <input class="button" type="submit" value="글등록">
        </div>
    </form>
</div>
</body>
</html>