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

<div style="margin-top: 50px;">
 <p style="font-weight: bold; font-size:24px; text-align: center;">이벤트에 성공적으로 신청되셨습니다! </p>
 <div>
     <button class="button is-dark" onclick="check()" style="margin-top:24px; margin-left:300px;">닫기</button>
 </div>
 <script>
     function check(){ window.close(); }
 </script>
</div>
</body>
</html>