<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> 출석체크 </title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <jsp:include page="../setting/head.jsp" />
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<section class="page-title background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> 출석체크 </h1>
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

<section class="section">
    <div class="container">
        <div class="buttons has-addons is-centered mb-5">
            <div class="container is-max-desktop has-text-centered">
                <h3 class="mb-40"> ${calendarInfo.month}월 출석 달력📆 </h3>
                <c:forEach var="i" begin="0" end="5">
                    <div class="columns">
                    <c:forEach var="j" begin="0" end="6">
                        <c:set var="date" value="${(7 * i + j) - (calendarInfo.startDayOfWeek - 1)}"></c:set>
                        <c:if test="${date < 1 or date > calendarInfo.endDay}">
                            <div class="column m-1 rounded-lg" style="height: 80px;"></div>
                        </c:if>
                        <c:if test="${date > 0 and date <= calendarInfo.endDay and !fn:contains(list, ' '+=date+=' ')}">
                            <div class="column m-1 rounded-lg" style="height: 80px; background-color: #DDD;">
                                <h5 style="font-family: sans-serif"> ${date} </h5>
                            </div>
                        </c:if>
                        <c:if test="${date > 0 and date <= calendarInfo.endDay and fn:contains(list, ' '+=date+=' ')}">
                            <div class="column m-1 rounded-lg" style="height: 80px; background-color: #A2B29F">
                                <h5 style="font-family: sans-serif"> ${date} </h5>
                            </div>
                        </c:if>
                    </c:forEach>
                    </div>
                </c:forEach>

                <!-- 오늘 이미 출석체크를 했다면 버튼 비활성화 -->
                <div class="has-text-centered">
                    <c:if test="${attendChk}">
                        <a href="${path}/attendance/addAttend.do" class="button is-info is-rounded is-large" disabled> 출석체크 완료 </a>
                    </c:if>
                    <!-- 오늘 출석체크를 하지 않았다면 버튼 활성화 -->
                    <c:if test="${!attendChk}">
                        <a href="${path}/attendance/addAttend.do" class="button is-info is-rounded is-large"> 출석체크 </a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="../layout/footer.jsp"%>

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<!-- jQuery -->
<script src="${path}/resources/plugins/jQuery/jquery.min.js"></script>
<!-- slick slider -->
<script src="${path}/resources/plugins/slick/slick.min.js"></script>
<!-- filter -->
<script src="${path}/resources/plugins/shuffle/shuffle.min.js"></script>

<!-- Main Script -->
<script src="${path}/resources/js/script.js"></script>
</body>
</html>
