<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="includes/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cookbook</title>
    <!-- Favicon은 link:favicon 태그에 아이콘 이미지를 넣는다. -->
    <link rel="shortcut icon" href="img/chef.png" type="image/x-icon">
    <!-- FontAwesome Libary CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- 레시피 메인 CSS -->
    <link rel="stylesheet" href="style.css">
<body>

    <!-- 첫페이지 시작 -->
    <header id="main-page">
        <div class="logo-box">
           <h1><img src="img/chef.png"alt="logo"  class="logo"></h1>
            <!-- <a href="index.html">
                <i class="fab fa-airbnb"></i> airbnb
            </a> -->
        </div>
        <!-- 네비메뉴 -->
        <nav class="main-navi">
            
            <div class="search">
                <button class="btn">
                    <div>요리명을 입력하세요</div>
                    <div class="bicon">
                        <i class="fas fa-search"></i>
                    </div>
                </button>
            </div>
            <div class="menu">
                <a href=""><img src="img/글쓰기.png"></a>
                <a href=""><img src="img/장바구니.png"></a>
                <a href=""><img src="img/로그인.png"></a>
            </div>
        </nav>
            </header>
    <!-- 첫페이지 끝 -->
    
     <!-- 레시피 best3  -->
    <section id="around">
        <h1>레시피 best3</h1>
        <div class="grid">
            <div class="item">
                <img src="img/햄에그샌드위치.jpg" style="max-width: 100%; height: auto;"> 
                <div>초간단 햄에그샌드위치</div>
            </div>
            <div class="item">
                <img src="img/연어스테이크.jpg" style="max-width: 100%; height: auto;"> 
                <div>연어 스테이크</div>
            </div>
            <div class="item">
                <img src="img/홈메이드피자.jpg"style="max-width: 100%; height: auto;">
                <div>홈메이드 피자</div>
            </div>
            <!-- <div class="item">
                <img src="img/홈메이드피자.jpg" alt="">
                <div>홈메이드 피자</div>
            </div> -->
           
        </div>
    </section>
    <!-- 최근 레시피 -->
    <section id="live">
        <h1>최근 레시피</h1>
        <div class="grid">
            <div class="item">
                <img src="img/전주비빔밥.jpg" alt="">
                <div>전주비빔밥</div>
            </div>
            <div class="item">
                <img src="img/치즈돈까스.jpg" alt="">
                <div>치즈돈까스</div>
            </div>
            <div class="item">
                <img src="img/치즈김밥.jpg" alt="">
                <div>치즈김밥</div>
            </div>
            <div class="item">
                <img src="img/고기냉면.jpg" alt="">
                <div>고기냉면</div>
            </div>
            <div class="item">
                <img src="img/토마토스파게티.jpg" alt="">
                <div>토마토스파게티</div>
            </div>
            <div class="item">
                <img src="img/대패삼겹살.jpg" alt="">
                <div>img/대패삼겹살</div>
            </div>
        </div>
    </section>
