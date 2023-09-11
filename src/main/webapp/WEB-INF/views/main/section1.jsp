<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section1(소개) 영역 시작 -->
<div class="section-light about-me" id="about-me">
    <div class="container">
        <div class="column is-12 about-me">
            <h1 class="title has-text-centered section-title">소개</h1>
        </div>
        <div class="columns is-multiline">
            <div class="column is-6 has-vertically-aligned-content" data-aos="fade-right">
                <p class="is-larger">&emsp;&emsp;
                    <strong>
                    내 아이의 하루를 담다! 부모의 하루를 열다!
                    아이 교육에 필요한 정보만을 한 번에 담은 우리 아이 통합 관리 플랫폼!
                    </strong>
                </p>
                <br />
                <p>
                    어느덧 성큼 다가온 새학기!
                    근심 없는 학부모가 되기 위한 꼼꼼한 준비!
                    입학 전 무엇을 어떻게 준비해야 하는지 티스푼과 함께 살펴볼까요?
                </p>
                <br />
                <div class="is-divider"></div>
                <div class="columns about-links">
                    <div class="column">
                        <p class="heading">
                            <strong>Give me a ring</strong>
                        </p>
                        <p class="subheading">
                            1577-0902
                        </p>
                    </div>
                    <div class="column">
                        <p class="heading">
                            <strong>Email Me</strong>
                        </p>
                        <p class="subheading">
                            teaspoon@example.com
                        </p>
                    </div>
                    <div class="column">
                        <p class="heading">
                            <strong>View my portfolio</strong>
                        </p>
                        <p class="subheading">
                            teaspoon.com
                        </p>
                    </div>
                </div>
            </div>
            <div class="column is-6 right-image " data-aos="fade-left">
                <img class="is-rounded" src="${path}/resources/images/about/introduce.png" alt="introduce"/>
            </div>
        </div>
    </div>
</div>
<!-- section1(소개) 영역 끝 -->