<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> 회원가입 </title>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <jsp:include page="../setting/head.jsp" />

    <style>
        h1 { font-size: 40pt; }
        h3 { font-size: 20pt; }
    </style>
</head>
<body>
<%@ include file="../layout/header.jsp"%>

<!-- page title -->
<section class="page-title has-background-primary is-relative">
    <div class="container">
        <div class="has-text-centered">
            <h1 class="has-text-white font-tertiary"> Join Us </h1>
        </div>
    </div>
    <!-- background shapes -->
    <img src="${path}/resources/images/illustrations/page-title.png" alt="illustrations" class="bg-shape-1 w-100">
    <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="illustrations" class="bg-shape-2">
    <img src="${path}/resources/images/illustrations/dots-cyan.png" alt="illustrations" class="bg-shape-3">
    <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="illustrations" class="bg-shape-4">
    <img src="${path}/resources/images/illustrations/leaf-yellow.png" alt="illustrations" class="bg-shape-5">
    <img src="${path}/resources/images/illustrations/dots-group-cyan.png" alt="illustrations" class="bg-shape-6">
    <img src="${path}/resources/images/illustrations/leaf-cyan-lg.png" alt="illustrations" class="bg-shape-7">
</section>
<!-- /page title -->

<section class="section" data-background="${path}/resources/images/backgrounds/bg-dots.png">
    <div class="container" id="content">
        <div class="columns is-centered">
            <div class="column is-8-desktop">
                <div class="has-background-white card-content shadow-down p-6">
                    <h3 class="has-text-centered"> 회원가입 </h3>
                    <hr>
                    <form name="frm1" id="frm1" action="${path}/joinPro.do" class="columns is-multiline is-centered" method="post" onsubmit="return joinCheck(this)">
                        <div class="column is-10-tablet">
                            <label for="id" class="label"> 아이디 </label>
                            <div class="columns">
                                <div class="column is-10-tablet">
                                    <div class="control">
                                        <input type="text" class="input" id="id" name="id" placeholder="영문 소문자, 숫자를 혼용하여 아이디를 입력해주세요"
                                               pattern="^[a-z0-9]{8,16}" maxlength="16" autocomplete="off" autofocus required>
                                        <input type="hidden" name="id_chk" id="id_chk" value="no">
                                        <p id="msg" style="color: red"></p>
                                    </div>
                                </div>
                                <div class="column is-2-tablet pl-0">
                                    <button type="button" class="button is-success" onclick="idCheck()"> 중복 확인 </button>
                                </div>
                            </div>
                        </div>
                        <div class="column is-10-tablet">
                            <label for="pw" class="label"> 비밀번호 </label>
                            <div class="control">
                                <input type="password" id="pw" name="pw" placeholder="숫자, 영문, 특수문자 1개 이상 / 8자리 이상 16자리 이하" class="input"
                                       pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required>
                            </div>
                        </div>
                        <div class="column is-10-tablet">
                            <label for="pw_chk" class="label"> 비밀번호 확인 </label>
                            <div class="control">
                                <input type="password" id="pw_chk" name="pw_chk" placeholder="비밀번호 확인을 입력해주세요" class="input"
                                       pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required>
                                <p id="pw_msg" style="color:red;"></p>
                            </div>
                        </div>
                        <div class="column is-10-tablet">
                            <label for="name" class="label"> 이름 </label>
                            <div class="control">
                                <input type="text" id="name" name="name" placeholder="이름을 입력해주세요" class="input" autocomplete="off" required>
                            </div>
                        </div>
                        <div class="column is-10-tablet">
                            <label for="email" class="label"> 이메일 </label>
                            <div class="control">
                                <input type="email" id="email" name="email" placeholder="이메일을 입력해주세요" class="input" autocomplete="off" required>
                            </div>
                        </div>
                        <div class="column is-10-tablet">
                            <label for="tel" class="label"> 전화번호 </label>
                            <div class="control">
                                <input type="tel" id="tel" name="tel" placeholder="전화번호를 입력해주세요" class="input" autocomplete="off" required>
                            </div>
                        </div>
                        <div class="column is-10-tablet is-10">
                            <button type="submit" class="button is-primary is-fullwidth"> 회원가입 </button>
                            <p class="has-text-centered mt-4"> 이미 회원이신가요? <a href="${path}/login.do"> 로그인하기 </a> </p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(document).ready(function() {
        $("#id").keyup(function() {
            $("#id_chk").val("no");
            if($(this).val() != "") {
                $("#msg").html("아이디 중복 체크를 진행해주세요");
            }
        });
        $("#pw, #pw_chk").keyup(function() {
            $("#pw_msg").html("");
        });
    });

    // 아이디 중복 체크 함수
    function idCheck() {
        if($("#id").val() == "") {
            $("#msg").html("아이디를 입력한 후 중복 체크를 진행해주세요");
            $("#id").focus();
            return;
        }

        var params = { id: $("#id").val() }
        // DB 연결 후 ajax로 아이디 중복 체크해야 함!!
    }
</script>
<script>
    function joinCheck(f) {
        if(f.pw.value != f.pw_chk.value) {
            $("#pw_msg").html("비밀번호와 비밀번호 확인이 서로 다릅니다");
            f.pw.focus();
            return false;
        }
        if(f.id_chk.value != "yes") {
            $("#msg").html("아이디 중복 체크를 진행해주세요");
            f.id.focus();
            return false;
        }
    }
</script>

<form action="#">
    <button id="toTop" title="Go to top">
        <i class="fas fa-angle-up"></i>
    </button>
</form>

<%@ include file="../layout/footer.jsp"%>

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
