<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!--헤더 영역 시작 -->
<header>
    <nav class="navbar is-dark is-fixed-top" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="index.html">
                <img src="${path}/resources/images/logo.png" width="112" height="28">
            </a>

            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navigation">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navigation" class="navbar-menu">
            <div class="navbar-end">
                <a href="index.html" class="navbar-item">Home</a>
                <a href="about.html" class="navbar-item">About</a>
                <a href="blog.html" class="navbar-item">blog</a>
                <a href="portfolio.html" class="navbar-item">portfolio</a>
                <a href="contact.html" class="navbar-item">contact</a>
            </div>
        </div>
    </nav>
</header>
<!--헤더 영역 끝 -->