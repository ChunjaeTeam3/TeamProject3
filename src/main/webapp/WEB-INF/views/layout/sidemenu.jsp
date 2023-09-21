<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<c:set var="path" value="<%=request.getContextPath() %>" />
<style>
    div, ul, li {-webkit-box-sizing: border-box;-moz-box-sizing: border-box;box-sizing: border-box;padding:0;margin:0}
    a {text-decoration:none;}

    .menu {position:absolute;width:100px;top:50%;margin-top:-50px;right:10px;background:#fff; border-radius: 20px; border: 1px solid #333333; z-index: 1;}
    .menu ul {position:relative;float:left;width:100%;display:inline-block;*display:inline;}
    .menu ul li {float:left;width:100%;border-bottom:1px solid #ddd;text-align:center;display:inline-block;*display:inline;}
    .menu ul li a {position:relative;float:left;width:100%;height:40px;line-height:30px;text-align:center;color:#333333;font-size:9.5pt; padding-top: 7px;}
    .menu ul li a:hover {color:#000;}
    .menu ul li:last-child {border-bottom:0;}
</style>

<div class="menu">
    <ul>
        <li>
            <a href="${path}"><i class="fa-solid fa-house"></i> Home</a>
        </li>
        <li>
            <a href="#about-me"><i class="fa-solid fa-user-tie"></i> 소개</a>
        </li>
        <li>
            <a href="#services"><i class="fa-solid fa-gift"></i></i> 서비스</a>
        </li>
        <li>
            <a href="#my-work"><i class="fa-solid fa-book"></i> 추천 교재</a>
        </li>
        <li>
            <a href="#skills"><i class="fa-brands fa-youtube"></i> 추천 강의</a>
        </li>
        <li>
            <a href="#location"><i class="fa-solid fa-map"></i> 회사 위치</a>
        </li>
    </ul>
</div>

<script>
    $(document).ready(function(){
        var currentPosition = parseInt($(".menu").css("top"));
        $(window).scroll(function() {
            var position = $(window).scrollTop();
            $(".menu").stop().animate({"top":position+currentPosition+"px"},500);
        });
    });
</script>