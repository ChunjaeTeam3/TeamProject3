<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="<%=request.getContextPath() %>" />

<header>
    <nav class="navbar is-dark is-fixed-top" role="navigation" aria-label="main navigation">
        <div class="navbar-brand" style="padding:0;">
            <a class="navbar-item" href="${path}" style="padding:0;">
                <img src="${path}/resources/images/tspoon_logo.png" style="max-height: none;">
            </a>

            <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navigation">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navigation" class="navbar-menu">
            <div class="navbar-end">
                <a href="${path}" class="navbar-item">소개</a>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a href="${path}" class="navbar-item" style="color:#fff;">커뮤니티</a>
                    <div class="navbar-dropdown">
                        <a href="" class="navbar-item">공지사항</a>
                        <a href="${path}/community/list.do" class="navbar-item">커뮤니티</a>
                        <a href="" class="navbar-item">자료실</a>
                        <a href="" class="navbar-item">식단표</a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a href="${path}" class="navbar-item" style="color:#fff;">이벤트</a>
                    <div class="navbar-dropdown">
                        <a href="" class="navbar-item">진행 중 이벤트</a>
                        <a href="" class="navbar-item">당첨자 발표</a>
                    </div>
                </div>
                <div class="navbar-item has-dropdown is-hoverable">
                    <a href="${path}" class="navbar-item" style="color:#fff;">고객지원</a>
                    <div class="navbar-dropdown">
                        <a href="" class="navbar-item">FAQ</a>
                        <a href="" class="navbar-item">Q&A</a>
                    </div>
                </div>
                <div class="buttons">
                    <a href="${path}/term.do" class="button is-header-button">
                        <strong>Sign up</strong>
                    </a>
                    <a href="" class="button is-light" >
                        <strong>Log in</strong>
                    </a>
                </div>
            </div>
        </div>
    </nav>
</header>
