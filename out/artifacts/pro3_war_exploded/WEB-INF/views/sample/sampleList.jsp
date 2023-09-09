<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>샘플 목록</title>
</head>
<body>
    <h2>샘플 목록</h2>
    <c:if test="${!empty sampleList}">
    <ul>
        <c:forEach items="${sampleList }" var="sample">
        <li>
            <span>번호 : ${sample.no }</span><br>
            <span>이름 : ${sample.name }</span><hr>
        </li>
        </c:forEach>
    </ul>
    </c:if>
    <c:if test="${empty sampleList}">
        <p>해당 목록이 존재하지 않습니다.</p>
    </c:if>
</body>
</html>
