<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:if test="${not empty cookie.userID}">
    <c:set value="checked" var="checked"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>로그인</title>
    <jsp:include page="../setting/head.jsp"/>
    <style>
        .login-hr {
            border: 1px solid orange; /* 주황색 테두리 색상 지정 */
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
</head>
<body>
<section class="hero is-fullheight">
    <div class="hero-body">
        <div class="container has-text-centered">
            <div class="column is-4 is-offset-4">
                <h3 class="has-text-white has-text-weight-bold">로그인</h3>
                <hr class="login-hr">
                <p class="subtitle has-text-weight-bold">티스푼을 찾아주셔서 감사합니다.</p>
                <div class="box" style="border: 3px solid orange;">
                    <!--         로그인 이미지 구역-->
                    <figure class="avatar mb-40">
                        <a href="/">
                            <img src="${path }/resources/images/tspoon.png" class="is-rounded">
                        </a>
                    </figure>
                    <!--          로그인 폼-->
                    <form action="${path }/member/loginpro.do" method="post" name="login">
                        <div class="field">
                            <div class="control">
                                <input type="text" name="id" id="id" class="input is-large" placeholder="아이디를 입력해주세요" value="${cookie.userID.value}" required autocomplete="off" autofocus>
                            </div>
                        </div>

                        <div class="field">
                            <div class="control">
                                <input type="password" class="input is-large" name="pw" id="pw" placeholder="비밀번호를 입력해주세요" required>
                            </div>
                        </div>

                        <div class="field has-text-left">
                            <label class="checkbox">
                                <input type="checkbox" name="saveId" value="save" ${checked}> 아이디 기억하기
                            </label>

                        </div>
                      <button class="button is-block is-info is-large is-fullwidth">로그인 <i class="fa fa-sign-in" aria-hidden="true"></i></button>
                    </form>
                    <!-- 로그인 하단 메뉴 -->
                </div>
                <div class="has-text-white">
                    <a href="${path}/member/term.do">회원가입</a> &nbsp;·&nbsp;
                    <a href="../..">비밀번호를 잊어버리셨나요?</a> &nbsp;·&nbsp;
                    <a href="${path}/faq/list.do">고객지원</a>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
