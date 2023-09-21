<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath() %>"/>
<footer class="footer mb-0">
    <div class="container">
        <div class="footer-link">
            <div class="columns">
                <div class="column is-one-quarter">
                    <p class="title is-4">
                        <a href="${path}">HOME</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="${path}/community/list.do">커뮤니티</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}/community/list.do">커뮤니티</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}/fileboard/list.do">자료실</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}/news/list.do">교육뉴스</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="{path}/event/list.do">이벤트</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="{path}/event/list.do">진행 중 이벤트</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">당첨자 발표</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="${path}/notice/list.do">고객지원</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}/notice/list.do">공지사항</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}/faq/list.do">FAQ</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}/qna/list.do">Q&A</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="content has-text-centered">
            <p style="color:#fff">
                <a href="${path}"><strong> 티스푼 </strong></a><br>
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved by Chunjae_Team3
            </p>
        </div>
    </div>
</footer>