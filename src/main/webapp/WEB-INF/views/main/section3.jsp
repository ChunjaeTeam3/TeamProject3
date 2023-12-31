<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!-- section3(이벤트) 영역 시작 -->
<section class="section mb-100">
    <div class="container">
        <div class="has-text-centered">
            <br><br>
            <h2 class="section-title mb-20" style="font-weight: bold;">티스푼이 제공하는</h2>
        </div>
        <div class="columns" style="margin-top: 50px">
            <div class="column is-half">
                <div style="position: relative">
                    <h4 class="section-title mb-0" style="font-weight: bold; display: inline-block;"> 공지사항 <i class="fa-solid fa-star" style="color: #41228e;"></i> </h4>
                    <a href="${path}/notice/list.do" class="button is-rounded" style="position: absolute; right: 10px;"> 더보기 </a>
                </div>
                <table class="table is-fullwidth is-striped is-hoverable">
                    <c:forEach var="notice" items="${noticeList}">
                        <tr onclick="javascript: location.href='${path}/notice/detail.do?seq=${notice.seq}'" style="cursor: pointer;">
                            <td>${notice.seq}</td>
                            <td>${notice.title}</td>
                            <td>${notice.regdate}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="column is-half">
                <div style="position: relative">
                    <h4 class="section-title mb-0" style="font-weight: bold; display: inline-block;"> 진행 중인 이벤트 <i class="fa-solid fa-trophy" style="color: #41228e;"></i> </h4>
                    <a href="${path}/event/list.do" class="button is-rounded" style="position: absolute; right: 10px;"> 더보기 </a>
                </div>
                <table class="table is-fullwidth is-striped is-hoverable">
                    <c:forEach var="event" items="${eventList}" varStatus="state">
                        <tr onclick="javascript: location.href='${path}/event/detail.do?eno=${event.eno}'" style="cursor:pointer;">
                            <td>${state.index + 1}</td>
                            <td>${event.title}</td>
                            <td>${event.sdate}</td>
                            <td>${event.edate}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</section>
<!-- section3(이벤트) 영역 끝 -->