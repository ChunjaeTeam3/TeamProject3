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
    <title>이벤트 수정하기</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
    <script type="text/javascript" src="${path}/resources/ckeditor/ckeditor.js"></script>
</head>
<body>

<!-- 헤더 영역 시작 -->
<jsp:include page="../layout/header.jsp" />
<!-- 헤더 영역 끝 -->

<!-- 배너 영역 시작 -->
<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary" style="font-size: 40px;"> 이벤트 수정하기 </h1>
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

<div class="content" style="margin-top: 100px;">
    <div class="row column text-center">
        <div class="container">
            <form action="${path }/event/edit.do" method="post">
                <div class="field is-horizontal" style="height: 60px; margin-bottom:0px;">
                    <div class="field-label is-normal">
                        <label class="label">제목</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <p class="control">
                                <input type="hidden" name="eno" id="eno" value="${event.eno }" >
                                <input type="text" name="title" id="title" value="${event.title }" maxlength="98" class="input" required>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="field is-horizontal" style="height: 60px; margin-bottom:0px;">
                    <div class="field-label is-normal">
                        <label class="label">이벤트 상태</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <div class="control" style="padding-top:10px;">
                                <label class="radio">
                                    <c:if test="${event.status == 1}">
                                        <input type="radio" name="status" id="now" value="1" checked> 진행중
                                    </c:if>
                                    <c:if test="${event.status != 1}">
                                        <input type="radio" name="status" id="now" value="1"> 진행중
                                    </c:if>
                                </label>
                                <label class="radio">
                                    <c:if test="${event.status == 0}">
                                        <input type="radio" name="status" id="end" value="0" checked> 종료
                                    </c:if>
                                    <c:if test="${event.status != 0}">
                                        <input type="radio" name="status" id="end" value="0"> 종료
                                    </c:if>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="field is-horizontal" style="height: 60px; margin-bottom:0px;">
                    <div class="field-label is-normal">
                        <label class="label">시작일</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <p class="control">
                                <input type="date" name="sdate" id="sdate" class="input" placeholder="시작일 지정해주세요" value="${event.sdate}" autocomplete="off" required>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="field is-horizontal" style="height: 60px; margin-bottom:0px;">
                    <div class="field-label is-normal">
                        <label class="label">종료일</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <p class="control">
                                <input type="date" name="edate" id="edate" class="input" placeholder="종료일 지정해주세요" value="${event.edate}" autocomplete="off" required>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">내용</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                            <div class="control">
                                <textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required>
                                    ${event.content}
                                </textarea>
                                <script>
                                    CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path}/event/imageUpload.do'});
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="button-group" style="margin-top: 30px; margin-bottom: 100px;">
                    <c:if test='${sid eq "admin"}'>
                        <input type="submit" class="button is-primary" style="float:right; margin-left:10px;" value="글 수정" >
                        <a class="button" href="${path }/event/list.do" style="color:#000000; text-decoration:none; float:right;">글 목록</a>
                    </c:if>
                </div>
            </form>

            <script>
                // 시작일 변경 시 종료일 처리
                $("#sdate").change(() => {
                    $("#edate").prop("min", $("#sdate").val());
                    // 종료일이 변경한 시작일보다 빠른 경우
                    if($("#edate").val() < $("#sdate").val()) {
                        $("#edate").val($("#sdate").val());
                    }
                });
                // 종료일 변경 시 시작일 처리
                $("#edate").change(() => {
                    $("#sdate").prop("max", $("#edate").val());
                })
            </script>
        </div>
    </div>
</div>

<!-- 푸터 영영 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 영역 끝 -->

<form action="#">
    <input type="hidden" name="eno" value="${event.eno}">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

</body>
</html>