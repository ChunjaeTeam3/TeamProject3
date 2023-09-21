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
    <title>이벤트 신청</title>
    <jsp:include page="../setting/head.jsp"></jsp:include>
</head>
<body>
<div class="container" style="padding: 20px">
    <form name="child" action="${path}/apply/insert.do" method="post">
    <div>
        <p style="font-weight: bold; text-align:center; font-size:35px;">이벤트 신청</p>
    </div>
    <div class="field is-horizontal" style="height: 60px; margin-bottom:50px;">
        <div class="field-label is-normal" >
            <label class="label">이름</label>
        </div>
        <div class="field-body">
            <div class="field">
                <p class="control">
                    <input type="text" name="name" id="name" placeholder="이름 입력" maxlength="98" class="input" required>
                </p>
            </div>
        </div>
    </div>
    <div class="field is-horizontal" style="height: 60px; margin-bottom:50px;">
        <div class="field-label is-normal">
            <label class="label">전화번호</label>
        </div>
        <div class="field-body">
            <div class="field">
                <p class="control">
                    <input type="tel" name="tel" id="tel" placeholder="전화번호 입력" maxlength="98" class="input" required>
                </p>
            </div>
        </div>
    </div>
    <input type="hidden" name="id" id="id" value="${sid}">
    <input type="hidden" id="eno" name="eno" value="${event.eno} ">
    <input type="submit" class="button is-fullwidth is-primary" style="height:72px" value="신청">
    </form>
</div>
</body>
</html>