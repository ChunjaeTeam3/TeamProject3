<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath() %>"/>
<footer class="footer">
    <div class="container">
        <div class="footer-link">
            <div class="columns">
                <div class="column is-one-quarter">
                    <p class="title is-4">
                        <a href="${path}">HOME</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">소개</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="${path}">커뮤니티</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">공지사항</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">커뮤니티</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">자료실</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">식단표</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="${path}">이벤트</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">진행 중 이벤트</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">당첨자 발표</a>
                    </p>
                </div>
                <div class="column is-one-quarter">
                    <p class="title is-5">
                        <a href="${path}">고객지원</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">FAQ</a>
                    </p>
                    <p class="bd-footer-link">
                        <a href="${path}">Q&A</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="content has-text-centered">
            <p style="color:#fff">
                <a href="${path}"><strong>TeaSpoon</strong></a><br>
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved by Chunjae_Team3
            </p>
        </div>
    </div>
</footer>