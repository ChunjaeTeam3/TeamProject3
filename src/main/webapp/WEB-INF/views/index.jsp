<%@ page contentType="text/html;" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Kross | Portfolio Template</title>
    <jsp:include page="setting/head.jsp"></jsp:include>

</head>
<body>

    <!--헤더 영역 시작 -->
    <jsp:include page="layout/header.jsp"/>
    <!--헤더 영역 끝 -->

    <!-- 헤더 사이드 영역 시작 -->
    <section class="hero-area has-background-primary" id="parallax">
        <div class="container">
            <div class="columns">
                <div class="column is-11-desktop is-offset-1-desktop">
                    <h1 class="has-text-white font-tertiary">Hi! I’m <br> Christoher <br> UX designer</h1>
                </div>
            </div>
        </div>
        <div class="layer-bg is-full">
            <img class="image is-full" src="${path}/resources/images/illustrations/leaf-bg.png" alt="bg-shape">
        </div>
        <div class="layer" id="l2">
            <img src="${path}/resources/images/illustrations/dots-cyan.png" alt="bg-shape">
        </div>
        <div class="layer" id="l3">
            <img src="${path}/resources/images/illustrations/leaf-orange.png" alt="bg-shape">
        </div>
        <div class="layer" id="l4">
            <img src="${path}/resources/images/illustrations/dots-orange.png" alt="bg-shape">
        </div>
        <div class="layer" id="l5">
            <img src="${path}/resources/images/illustrations/leaf-yellow.png" alt="bg-shape">
        </div>
        <div class="layer" id="l6">
            <img src="${path}/resources/images/illustrations/leaf-cyan.png" alt="bg-shape">
        </div>
        <div class="layer" id="l7">
            <img src="${path}/resources/images/illustrations/dots-group-orange.png" alt="bg-shape">
        </div>
        <div class="layer" id="l8">
            <img src="${path}/resources/images/illustrations/leaf-pink-round.png" alt="bg-shape">
        </div>
        <div class="layer" id="l9">
            <img src="${path}/resources/images/illustrations/leaf-cyan-2.png" alt="bg-shape">
        </div>
        <!-- social icon -->
        <div class="list list-hero-social">
            <a class="list-item has-text-white" href="#"><i class="ti-facebook"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-instagram"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-dribbble"></i></a>
            <a class="list-item has-text-white" href="#"><i class="ti-twitter"></i></a>
        </div>
        <!-- /social icon -->
    </section>
    <!-- 헤더 사이드 영역 끝 -->

    <!-- 메인 페이지 영역 시작-->

        <!--위로 가기 아이콘 부분 시작-->
        <form action="#home">
            <button id="toTop" title="Go to top">
                <i class="fas fa-angle-up"></i>
            </button>
        </form>
        <!--위로 가기 아이콘 부분 끝-->

        <!-- 메인페이지 메뉴바 영역 시작 -->
        <div class="header-wrapper" id="home">
            <section class="hero is-large">
                <!-- 모바일 -->
                <nav class="navbar is-fixed-top is-transparent is-hidden-desktop">
                    <div class="navbar-brand">
                        <div class="navbar-burger burger" data-target="mobile-nav">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <div id="mobile-nav" class="navbar-menu">
                        <div class="navbar-end">
                            <div class="navbar-item">
                                <a class="navbar-item" href="#home">
                                    Home
                                </a>
                            </div>
                            <div class="navbar-item">
                                <a class="navbar-item" href="#about-me">
                                    About Me
                                </a>
                            </div>
                            <div class="navbar-item">
                                <a class="navbar-item" href="#services">
                                    Services
                                </a>
                            </div>
                            <div class="navbar-item">
                                <a class="navbar-item" href="#skills">
                                    Skills
                                </a>
                            </div>
                            <div class="navbar-item">
                                <a class="navbar-item" href="#my-work">
                                    My Work
                                </a>
                            </div>
                            <div class="navbar-item">
                                <a class="navbar-item" href="#contact">
                                    Contact
                                </a>
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- 모바일 -->
                <!-- PC -->
                <div class="hero-foot ">
                    <div class="hero-foot--wrapper">
                        <div class="columns">
                            <div class="column is-12 hero-menu-desktop has-text-centered is-fixed-top">
                                <ul>
                                    <li class="is-active">
                                        <a href="#home">Home</a>
                                    </li>
                                    <li>
                                        <a href="#about-me">About Me</a>
                                    </li>
                                    <li>
                                        <a href="#services">Services</a>
                                    </li>
                                    <li>
                                        <a href="#skills">Skills</a>
                                    </li>
                                    <li>
                                        <a href="#my-work">My Work</a>
                                    </li>
                                    <li>
                                        <a href="#contact">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- PC -->
            </section>
        </div>
        <!-- 메인페이지 메뉴바 영역 끝 -->

        <!-- 메인페이지 콘텐츠 영역 시작 -->
        <div class="main-content">
            <!-- Begin About Me Section -->
            <div class="section-light about-me" id="about-me">
                <div class="container">
                    <div class="column is-12 about-me">
                        <h1 class="title has-text-centered section-title">About Me</h1>
                    </div>
                    <div class="columns is-multiline">
                        <div
                                class="column is-6 has-vertically-aligned-content"
                                data-aos="fade-right"
                        >
                            <p class="is-larger">
                                &emsp;&emsp;<strong
                            >Showcase is a modern, beautiful personal website template to
                                showcase who you are, as well as projects you've worked on in
                                the past.</strong
                            >
                            </p>
                            <br />
                            <p>
                                Showcase was built from the ground up with Bulma to be fast and
                                responsive out of the box with all source files well documented
                                for easy to customization. The Showcase template gives you a
                                personal space to share what you are all about as a creative
                                designer, developer, photographer, and more!
                            </p>
                            <br />
                            <div class="is-divider"></div>
                            <div class="columns about-links">
                                <div class="column">
                                    <p class="heading">
                                        <strong>Give me a ring</strong>
                                    </p>
                                    <p class="subheading">
                                        123-456-7890
                                    </p>
                                </div>
                                <div class="column">
                                    <p class="heading">
                                        <strong>Email Me</strong>
                                    </p>
                                    <p class="subheading">
                                        hello@example.com
                                    </p>
                                </div>
                                <div class="column">
                                    <p class="heading">
                                        <strong>View my portfolio</strong>
                                    </p>
                                    <p class="subheading">
                                        example.com
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="column is-6 right-image " data-aos="fade-left">
                            <img
                                    class="is-rounded"
                                    src="https://picsum.photos/id/366/600/375"
                                    alt=""
                            />
                        </div>
                    </div>
                </div>
            </div>
            <!-- End About Me Content -->
            <div class="section-dark resume">
                <div class="container">
                    <div
                            class="columns is-multiline"
                            data-aos="fade-in"
                            data-aos-easing="linear"
                    >
                        <div class="column is-12 about-me">
                            <h1 class="title has-text-centered section-title">
                                View My Resume
                            </h1>
                        </div>
                        <div class="column is-10 has-text-centered is-offset-1">
                            <h2 class="subtitle">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                eiusmod tempor incididunt ut labore et doloremagna aliqua
                            </h2>
                            <form action="example.docs">
                                <button class="button">
                                    Download Resume&emsp;<i class="fad fa-download fa-lg"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Begin Services Content -->
            <div class="section-color services" id="services">
                <div class="container">
                    <div class="columns is-multiline">
                        <div
                                class="column is-12 about-me"
                                data-aos="fade-in"
                                data-aos-easing="linear"
                        >
                            <h1 class="title has-text-centered section-title">Services</h1>

                            <h2 class="subtitle">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                                eiusmod tempor incididunt ut labore et dolore magna aliqua
                            </h2>
                            <br />
                        </div>
                        <div class="columns is-12">
                            <div
                                    class="column is-4 has-text-centered"
                                    data-aos="fade-in"
                                    data-aos-easing="linear"
                            >
                                <i class="fad fa-meteor fa-3x"></i>
                                <hr />
                                <h2>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                                </h2>
                            </div>
                            <div
                                    class="column is-4 has-text-centered"
                                    data-aos="fade-in"
                                    data-aos-easing="linear"
                            >
                                <i class="fas fa-paint-brush fa-3x"></i>
                                <hr />
                                <h2>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                                </h2>
                            </div>
                            <div
                                    class="column is-4 has-text-centered"
                                    data-aos="fade-in"
                                    data-aos-easing="linear"
                            >
                                <i class="fas fa-rocket fa-3x"></i>
                                <hr />
                                <h2>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                                </h2>
                            </div>
                        </div>
                        <hr />
                        <div class="columns is-12">
                            <div
                                    class="column is-4 has-text-centered"
                                    data-aos="fade-in"
                                    data-aos-easing="linear"
                            >
                                <i class="fas fa-upload fa-3x"></i>
                                <hr />
                                <h2>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                                </h2>
                            </div>
                            <div
                                    class="column is-4 has-text-centered"
                                    data-aos="fade-in"
                                    data-aos-easing="linear"
                            >
                                <i class="fas fa-bus fa-3x"></i>
                                <hr />
                                <h2>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                                </h2>
                            </div>
                            <div
                                    class="column is-4 has-text-centered"
                                    data-aos="fade-in"
                                    data-aos-easing="linear"
                            >
                                <i class="fas fa-code fa-3x"></i>
                                <hr />
                                <h2>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                                    do eiusmod tempor incididunt ut labore et dolore magna aliqua
                                </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Services Content -->
            <!-- Begin Skills Content -->
            <div class="section-light skills" id="skills">
                <div class="container">
                    <div class="columns is-multiline">
                        <div class="column is-12 about-me">
                            <h1 class="title has-text-centered section-title">Skills</h1>
                        </div>
                        <div
                                class="column is-6"
                                data-aos="fade-in"
                                data-aos-easing="linear"
                        >
                            <h1>Adobe Experience Design</h1>
                            <progress class="progress" value="70" max="100">30%</progress>
                            <h1>Adobe After Effects</h1>
                            <progress class="progress" value="65" max="100">30%</progress>
                            <h1>Visual Studio Code</h1>
                            <progress class="progress" value="58" max="100">45%</progress>
                            <h1>Sketch</h1>
                            <progress class="progress" value="90" max="100">60%</progress>
                        </div>
                        <div
                                class="column is-6"
                                data-aos="fade-in"
                                data-aos-easing="linear"
                        >
                            <h1>HTML</h1>
                            <progress class="progress" value="85" max="100">30%</progress>
                            <h1>CSS</h1>
                            <progress class="progress" value="95" max="100">30%</progress>
                            <h1>VueJS</h1>
                            <progress class="progress" value="70" max="100">45%</progress>
                            <h1>React</h1>
                            <progress class="progress" value="60" max="100">60%</progress>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Skills Content -->
            <!-- Begin Work Content -->
            <div class="section-dark my-work" id="my-work">
                <div class="container">
                    <div
                            class="columns is-multiline"
                            data-aos="fade-in"
                            data-aos-easing="linear"
                    >
                        <div class="column is-12">
                            <h1 class="title has-text-centered section-title">My Work</h1>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=0');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=10');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=20');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=30');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=40');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=50');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=60');"
                                ></figure>
                            </a>
                        </div>
                        <div class="column is-3">
                            <a href="#">
                                <figure
                                        class="image is-2by1 work-item"
                                        style="background-image: url('https://picsum.photos/320/180?image=70');"
                                ></figure>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Work Content -->
            <!-- Begin Contact Content -->
            <div class="section-light contact" id="contact">
                <div class="container">
                    <div
                            class="columns is-multiline"
                            data-aos="fade-in-up"
                            data-aos-easing="linear"
                    >
                        <div class="column is-12 about-me">
                            <h1 class="title has-text-centered section-title">
                                Get in touch
                            </h1>
                        </div>
                        <div class="column is-8 is-offset-2">
                            <form
                                    action="https://formspree.io/email@example.com"
                                    method="POST"
                            >
                                <div class="field">
                                    <label class="label">Name</label>
                                    <div class="control has-icons-left">
                                        <input
                                                class="input"
                                                type="text"
                                                placeholder="Ex. Jane Smith"
                                                name="Name"
                                        />
                                        <span class="icon is-small is-left">
                            <i class="fas fa-user"></i>
                            </span>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Email</label>
                                    <div class="control has-icons-left">
                                        <input
                                                class="input"
                                                type="email"
                                                placeholder="Ex. hello@arctheme.com"
                                                name="Email"
                                        />
                                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                            </span>
                                    </div>
                                </div>
                                <div class="field">
                                    <label class="label">Message</label>
                                    <div class="control">
                            <textarea
                                    class="textarea"
                                    placeholder="Textarea"
                                    name="Message"
                            ></textarea>
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="control ">
                                        <button class="button submit-button">
                                            Submit&nbsp;&nbsp;
                                            <i class="fas fa-paper-plane"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Contact Content -->
        </div>
        <!-- 메인페이지 콘텐츠 영역 끝 -->

    <!--메인 페이지 영역 끝-->

    <!-- 푸터 영영 시작 -->
   <jsp:include page="layout/footer.jsp"/>
    <!-- 푸터 영역 끝 -->

</body>
</html>