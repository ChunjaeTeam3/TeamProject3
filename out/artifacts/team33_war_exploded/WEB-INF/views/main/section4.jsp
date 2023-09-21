<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- section4(추천 강의) 영역 시작 -->
<section class="section" id="skills">
    <div class="container">
        <div class="has-text-centered">
            <br><br>
            <h2 class="section-title mb-20" style="font-weight: bold;">추천강의</h2>
        </div>
        <div class="columns is-multiline mb-40">
            <div class="column">
                <article class="card shadow">
                    <figure class="image is-4by3" style="padding-top: 0;">
                        <div class="player" style="width:800px; margin: 0 auto;">
                            <div class="vdo_fr">
                                <video id="video" style="width: 100%">
                                    <source src="${path}/resources/images/lecture_video03.mp4" type="video/mp4"/>
                                </video>
                            </div>
                            <div id="progress">
                                <div id="progressBar" class="mb-2"></div>
                            </div>
                            <div id="buttonbar" style="width: 100%">
                                <button id="play" class="player_btn"> <i class="fas fa-play"></i> </button>
                                <button id="pause" style="display: none" class="player_btn"> <i class="fas fa-pause"></i> </button>
                                <button id="stop" class="player_btn"> <i class="fas fa-stop"></i> </button>
                                <span id="currentTime"> 00:00 / 02:11 </span>
                                <div id="btn-right">
                                    <input id="vol" type="range" value="500" min="0" max="1000">
                                    <button id="volTxt" class="player_btn">50%</button>
                                    <button id="full" class="player_btn"><i class="fa-solid fa-expand"></i></button>
                                </div>
                            </div>
                            <script src="${path}/resources/js/vdo.js"></script>
                        </div>
                    </figure>
                    <div class="card-content has-text-centered">
                        <h4 class="mb-10" style="font-family:'sans-serif'; font-weight: bold;">[2024 수능 완성] 5등급에서 1등급까지! 노력은 배신하지 않아요! </h4>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>
<!-- section4(추천 강의) 영역 끝 -->