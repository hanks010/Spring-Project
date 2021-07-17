<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>


<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Tasty Recipes</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/nice-select.css">
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/gijgo.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet" href="resources/css/slick.css">
<link rel="stylesheet" href="resources/css/slicknav.css">
<link rel="stylesheet" href="resources/css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->

</head>

<!-- class="rounded-circle" -->

<body>
	<!-- header-start -->
	<header>
		<div class="header-area ">
			<div id="sticky-header" class="main-header-area ">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-2">
							<div class="logo">
								<a href="/"> <img src="resources/img/logo.png" alt="">
								</a>
							</div>
						</div>
						<div class="col-xl-6 col-lg-7">
							<div class="main-menu   d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="/">home</a></li>
										<li><a href="#">Recipes <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="blog.html">blog</a></li>
												<li><a href="single-blog.html">single-blog</a></li>
											</ul></li>
										<li><a href="#">pages <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="recipes_details.html">Recipes Details</a></li>
												<li><a href="elements.html">elements</a></li>
											</ul></li>
										<sec:authorize access="isAuthenticated()">
											<li><a href="/rboard/user/insert">Recipe Insert</a></li>
											<li><a href="/logout">Logout(<sec:authentication
														property="principal.user.username" />)
											</a></li>
										</sec:authorize>
										<sec:authorize access="isAnonymous()">
											<li><a href="/signin">Login</a></li>
											<li><a href="/signup">Join Us</a></li>
										</sec:authorize>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 d-none d-lg-block">
							<div class="search_icon">
								<a href="#"> <i class="ti-search"></i>
								</a>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->
	<!-- JS here -->
	<script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/isotope.pkgd.min.js"></script>
	<script src="resources/js/ajax-form.js"></script>
	<script src="resources/js/waypoints.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	<script src="resources/js/imagesloaded.pkgd.min.js"></script>
	<script src="resources/js/scrollIt.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/nice-select.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/plugins.js"></script>
	<script src="resources/js/gijgo.min.js"></script>

	<!--contact js-->
	<script src="resources/js/contact.js"></script>
	<script src="resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="resources/js/jquery.form.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
	<script src="resources/js/mail-script.js"></script>

	<script src="resources/js/main.js"></script>
</body>