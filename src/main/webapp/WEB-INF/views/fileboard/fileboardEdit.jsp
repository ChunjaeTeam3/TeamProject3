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
<section class="section">
    <div class="container">
        <div class="columns is-desktop is-justify-content-center">
            <div class="column is-8-desktop">
                <div class="p-6 bg-white shadow rounded content">
                    <form action="${path }/fileboard/edit.do" id="writeform" method="post" enctype="multipart/form-data">
                        <div class="columns is-multiline">
                            <div class="form-group column is-12">
                                <label for="title"> 제목 </label>
                                <input type="text" class="input" id="title" name="title" placeholder="제목을 입력해주세요" autocomplete="off" autofocus required>
                            </div>
                            <!-- 내용 입력 부분 -->
                            <div class="form-group column is-12">
                                <label for="content"> 내용 </label>
                                <textarea name="content" id="content" class="textarea has-fixed-size" cols="30" rows="20" placeholder="내용을 입력해주세요" required></textarea>
                            </div>
                            <!-- 파일 선택 부분 -->
                            <div class="form-group column is-8">
                                <div class="file has-name">
                                    <label class="file-label">
                                        <input class="file-input" type="file" name="upfile" multiple="multiple">
                                        <span class="file-cta">
                                            <span class="file-icon mb-0">
                                                <i class="fas fa-upload mb-0"></i>
                                            </span>
                                            <span class="file-label mb-0">
                                                파일 선택
                                            </span>
                                        </span>
                                        <span class="file-name">선택된 파일이 없습니다.</span>
                                    </label>
                                </div>
                            </div>
                            <div class="column is-4 has-text-right">
                                <button type="reset" class="button"> 초기화 </button>
                                <button type="submit" class="button is-primary"> 작성하기 </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 자료실 글쓰기 끝 -->

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
<!-- 파일 입력 요소 변경 시 파일 이름 표시 -->
<script>
    $(".file-input").on("change", () => {
        let fileName = '';
        let fileLength = $(".file-input")[0].files.length;
        if(fileLength > 1) {
            fileName = fileLength + "개의 파일";
        } else {
            fileName = $(".file-input").val().split("\\").pop();
        }
        $(".file-name").text("\t 선택한 파일 : " + fileName);
    });
</script>
</html>
