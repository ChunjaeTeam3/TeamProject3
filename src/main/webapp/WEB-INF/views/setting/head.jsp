<%@ page contentType="text/html;" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<!-- 파비콘 설정 -->
<!-- 표준 파비콘 -->
<link rel="shortcut icon" type="image/png" href="${path1}/resources/images/tspoon_favicon.png">
<!-- 애플 계열 모바일 -->
<link rel="apple-touch-icon-precomposed" href="${path1}/resources/images/tspoon_favicon.png">
<!-- IE 계열 브라우저 -->
<meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="msapplication-TileImage" content="${path1}/resources/images/tspoon_favicon.png">
<!-- 파이어폭스, 오페라, 또는 구형 크롬/사파리 -->
<link rel="icon" href="${path1}/resources/images/tspoon_favicon.png" sizes="64x64">

<!-- Plugin -->
<link rel="stylesheet" href="${path1}/resources/plugins/bulma/bulma.min.css">
<link rel="stylesheet" href="${path1 }/resources/plugins/slick/slick.css">
<link rel="stylesheet" href="${path1}/resources/plugins/themify-icons/themify-icons.css">

<!-- Main Stylesheet -->
<link href="${path1}/resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/bulma@0.9.4/css/bulma.min.css" />
<link rel="stylesheet" type="text/css" href="${path1}/resources/css/showcase.css" />
<script src="https://kit.fontawesome.com/2828f7885a.js" integrity="sha384-WAsFbnLEQcpCk8lM1UTWesAf5rGTCvb2Y+8LvyjAAcxK1c3s5c0L+SYOgxvc6PWG" crossorigin="anonymous"></script>

<!-- jQuery -->
<script src="${path1}/resources/plugins/jQuery/jquery.min.js"></script>
<script src="${path1}/resources/plugins/slick/slick.min.js"></script>
<script src="${path1}/resources/plugins/shuffle/shuffle.min.js"></script>

<!-- Main Script -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://kit.fontawesome.com/67fc414e58.js" crossorigin="anonymous"></script>
<script src="${path1}/resources/js/script.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${path1}/resources/js/showcase.js"></script>
<link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet">
<script src="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.js"></script>
<script>
    AOS.init({
        easing: "ease-out",
        duration: 800,
    });
</script>
