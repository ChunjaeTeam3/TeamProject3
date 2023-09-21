<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath() %>"/>
<footer class="footer mb-0" style="padding-top:80px">
    <div class="container">
        <div class="footer-link">
            <div class="columns">
                <div class="column is-one-quarter">
                    <p class="title is-4">
                        <a href="/team33_war">HOME</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="/team33_war/community/list.do">커뮤니티</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/community/list.do">커뮤니티</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/fileboard/list.do">자료실</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/news/list.do">교육뉴스</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="/team33_war/event/list.do">이벤트</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/event/list.do">진행 중 이벤트</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/winner/list.do">당첨자 발표</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="/team33_war/notice/list.do">고객지원</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/notice/list.do">공지사항</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/faq/list.do">FAQ</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="/team33_war/qna/list.do">Q&amp;A</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="content has-text-centered">
            <p style="color:#fff; margin-top:100px">
                <a href="/team33_war" style="margin-top: 20px"><strong> 티스푼 </strong></a><br>
                Copyright ©<script>document.write(new Date().getFullYear());</script>2023
                All rights reserved by Chunjae_Team3
            </p>
        </div>
    </div>
</footer>