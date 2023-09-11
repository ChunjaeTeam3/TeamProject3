<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section2(소개) 영역 시작 -->
<section class="section" id="services">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title" style="font-weight: bold;">서비스</h2>
        </div>
        <div class="columns is-multiline">
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <img src="${path}/resources/images/icons/board2.png" alt="board" class="ti-palette icon mb-10 is-inline-block"/>
                        <h4 class="mb-20"  style="font-weight: bold;">게시판</h4>
                        <p>공지사항을 한번에 체크할 수 있습니다.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <img src="${path}/resources/images/icons/check1.png" alt="dailycheck" class="ti-palette icon mb-10 is-inline-block" />
                        <h4 class="mb-20" style="font-weight: bold;">출석체크</h4>
                        <p>매일 댓글 남기기로 출석체크를 할 수 있습니다.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <img src="${path}/resources/images/icons/community.png" alt="community" class="ti-palette icon mb-10 is-inline-block"/>
                        <h4 class="mb-20"  style="font-weight: bold;">커뮤니티</h4>
                        <p>많은 학부모들과 교류할 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <div style="width: 100%;">
            <img src="${path}/resources/images/about/service.png" alt="service"/>
        </div>
    </div>
</section>
<!-- section2(소개) 영역 끝 -->