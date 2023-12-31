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
    <title>당첨자 발표 등록</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>


</head>
<body>

<!--헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!--헤더 영역 끝 -->
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
<!-- 헤더 사이드 영역 끝 -->

<!--등록하기-->

<div class="content" style="margin-top: 100px;">
    <div class="row column text-center">
        <div class="container">
            <form action="${path}/admin/winnerInsert.do" method="post">
                <!--제목-->
                <div class="field is-horizontal">
                    <div class="field-label is-normal" style="height: 60px; margin-bottom:0px;">
                        <label class="label">제목</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <p class="control">
                                <input type="hidden" id="eno" name="eno" value="${event.eno}">
                                <input class="input" type="text" name="title" id="title" maxlength="98" value="${event.title} 당첨자 발표" required>
                            </p>
                        </div>
                    </div>
                </div>
                <!--내용-->
                <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">내용</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <p class="control">
                                <textarea class="textarea is-focused" name="content" id="content" rows="8" cols="100" maxlength="800" style="resize: none;" required>
<c:forEach var="win" items="${winners}" varStatus="status">
${status.count}. id : ${win.id} / 이름 : ${win.name} <br>
</c:forEach>
당첨자는 개별 연락 드릴 예정입니다.
                                </textarea>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="button-group" style="margin-top: 30px; margin-bottom: 100px;">
                    <input class="button is-primary" type="submit" value="글등록" style="float:right; margin-left:10px;">
                    <a class="button" href="${path }/winner/winnerList.do" style="float:right;">글 목록</a>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <input type="hidden" id="eno" name="eno" value="${event.eno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>
</body>
</html>