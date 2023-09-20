<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section2(소개) 영역 시작 -->
<section class="section" id="services" style="background-color: #0f2e41;">
    <div class="container">
        <div class="has-text-centered">
            <br><br>
            <h2 class="section-title has-text-white mb-20" style="font-weight: bold;">티스푼만의 서비스</h2>
        </div>

        <div class="has-text-centered">
            <img src="${path}/resources/images/about/service.png" alt="service" class="mb-40"/>
        </div>

        <div class="has-text-centered">
            <h3 class="has-text-white mb-20"> 서비스로 이동 </h3>
        </div>

        <div class="columns is-multiline mb-50">
            <div class="column">
                <div class="card card hover-wrapper">
                    <div class="card-content has-text-centered" onclick="javascript:location.href='${path}/community/list.do'" style="cursor:pointer;">
                        <img src="${path}/resources/images/icons/community.png" alt="community" class="ti-palette icon mb-10 is-inline-block"/>
                        <h4 class="mb-20"  style="font-weight: bold;"> 학부모 커뮤니티 </h4>
                        <p> 학부모를 위한 손쉬운 정보 공유 공간 </p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card hover-wrapper">
                    <c:if test="${sid eq null}">
                        <div class="card-content has-text-centered" onclick="javascript:location.href='${path}/member/login.do'" style="cursor:pointer;">
                            <img src="${path}/resources/images/icons/check1.png" alt="dailycheck" class="ti-palette icon mb-10 is-inline-block" />
                            <h4 class="mb-20" style="font-weight: bold;">출석체크</h4>
                            <p>로그인 후 버튼을 눌러 출석체크를 할 수 있습니다.</p>
                        </div>
                    </c:if>
                    <c:if test="${sid ne null}">
                        <div class="card-content has-text-centered" onclick="javascript:location.href='${path}/event/list.do'" style="cursor:pointer;">
                            <img src="${path}/resources/images/icons/check1.png" alt="dailycheck" class="ti-palette icon mb-10 is-inline-block" />
                            <h4 class="mb-20" style="font-weight: bold;">출석체크</h4>
                            <p>매일 버튼을 눌러 출석체크를 할 수 있습니다.</p>
                        </div>
                    </c:if>
                </div>
            </div>
            <div class="column">
                <div class="card hover-wrapper">
                    <div class="card-content has-text-centered" onclick="javascript:location.href='${path}/attendance/attendance.do'" style="cursor:pointer;">
                        <img src="${path}/resources/images/icons/board2.png" alt="board" class="ti-palette icon mb-10 is-inline-block"/>
                        <h4 class="mb-20"  style="font-weight: bold;">이벤트</h4>
                        <p>이벤트에 참여해 무료 도서를 획득할 수 있습니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section2(소개) 영역 끝 -->