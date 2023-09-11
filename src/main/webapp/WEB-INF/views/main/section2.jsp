<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section2(소개) 영역 시작 -->
<section class="section">
    <div class="container">
        <div class="has-text-centered">
            <h2 class="section-title">서비스</h2>
        </div>
        <div class="columns is-multiline">
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <i class="ti-palette icon mb-10 is-inline-block"></i>
                        <h4 class="mb-20">UI Design</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card active-bg-primary hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <i class="ti-vector icon mb-10 is-inline-block"></i>
                        <h4 class="mb-20">UX Design</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card hover-shadow shadow">
                    <div class="card-content has-text-centered">
                        <i class="ti-panel icon mb-10 is-inline-block"></i>
                        <h4 class="mb-20">Interaction Design</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                            dolore magna aliqua.</p>
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