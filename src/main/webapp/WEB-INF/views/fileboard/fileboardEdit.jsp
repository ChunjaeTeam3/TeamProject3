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
    <title>자료실 글쓰기</title>
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
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 자료실 글쓰기 </h1>
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


<!-- 자료실 글쓰기 시작 -->
<div class="content" id="contents" style="margin-top: 100px;">
    <div class="row column text-center">
        <div class="container">
            <form action="${path }/fileboard/edit.do" id="writeform" method="post" enctype="multipart/form-data">
                <div class="field is-horizontal" style="height: 60px; margin-bottom:0px;">
                    <div class="field-label is-normal">
                        <label class="label">제목</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <p class="control">
                                <input type="hidden" id="articleno" name="articleno" value="${fileboard.articleno}">
                                <input type="text" name="title" id="title" value="${fileboard.title }" placeholder="제목 입력" maxlength="98" class="input" required>
                            </p>
                        </div>
                    </div>
                </div>
                <%--        내용 입력부분--%>
                <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">내용</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <div class="control">
                                <textarea name="content" id="content" class="textarea is-focused" placeholder="내용 입력" rows="8" cols="100" maxlength="800" required>${fileboard.content}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <%--                파일 선택부분--%>
                <div class="file is-horizontal" style="margin-left: 180px">
                    <label class="file-label">
                        <input class="file-input" type="file" name="upfile" multiple="multiple">
                        <span class="file-cta">
                                <span class="file-icon">
                                    <i class="fas fa-upload"></i>
                                </span>
                                  <span class="file-label">
                                              파일 선택
                                  </span>
                             </span>
                    </label>
                    <p id="file-name-display"></p>
                </div>
                <%--                글작성 초기화 버튼부분--%>
                <div class="field is-horizontal" style="margin-top: 30px;">
                    <div class="field-label"></div>
                    <div class="field-body">
                        <div class="field is-grouped is-grouped-right">
                            <div class="control">
                                <button type="submit" id="writeBtn" class="button is-primary">글작성</button>
                                <button type="reset" class="button is-info">초기화</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 공지사항 글쓰기 끝 -->

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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // 파일 입력 요소 변경 시 파일 이름 표시
    $('.file-input').on('change', function () {
        var fileName = $(this).val().split('\\').pop();
        $('#file-name-display').text('\t선택한 파일: ' + fileName);
    });
</script>
</html>
