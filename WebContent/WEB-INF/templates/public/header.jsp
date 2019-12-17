<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/templates/taglib.jsp"%>
<div class="container">
	<a href="index.html" class="branding"> <img
		src="${pageContext.request.contextPath }/publicUrl/images/logo.png"
		alt="" class="logo">
		<div class="logo-type">
			<h1 class="site-title">Weather Forecast</h1>
		</div>
	</a>

	<!-- Default snippet for navigation -->
	<div class="main-navigation">
		<button type="button" class="menu-toggle">
			<i class="fa fa-bars"></i>
		</button>
		<ul class="menu">
			<li class="menu-item current-menu-item"><a href="index.html">Today</a></li>
			<li class="menu-item"><a href="news.html">The next 8 days</a></li>
			<li class="menu-item"><a href="contact.html">The next 16 days</a></li>
		</ul>
		<!-- .menu -->
	</div>
	<!-- .main-navigation -->

	<div class="mobile-navigation"></div>

</div>