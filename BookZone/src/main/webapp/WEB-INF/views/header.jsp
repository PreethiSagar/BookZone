<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="http://localhost:8080/BookZone/resources/images/favicon.ico" type="image/x-icon" />
<link href="http://localhost:8080/BookZone/resources/css/style.css" rel="stylesheet">
<link href="http://localhost:8080/BookZone/resources/css/headerStyle.css" rel="stylesheet">
<link href="http://localhost:8080/BookZone/resources/css/footerStyle.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>${pageTitle}</title>
</head>
<body>

<!-- Header Navbar Content - Start -->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 container paddZero">
		<nav id="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<ul class="nav navbar-nav">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bookzone-nav">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</ul>
			</div>
			<div class="collapse navbar-collapse spaces5 bottom5" id="bookzone-nav">	
			<img src="http://localhost:8080/BookZone/resources/images/logo.png" class="logoImgStyle shiftLeft left5" />			
				<ul class="nav navbar-right navbar-nav right0">
					<li><a href="<c:url value="/" />">BookZone</a></li>
					<li><a href="<c:url value="/category" />">Category</a></li>
					<c:if test="${pageContext.request.userPrincipal.name==null}">
						<li><a href="${pageContext.request.contextPath}/goToLogin">Sign In</a></li>
						<li><a href="<c:url value="/register" />">Sign Up</a></li>
					</c:if>					
					<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;My Cart</a></li>					
					<li>
						<a class="dropdown-toggle navbarTitleStyle" data-toggle="dropdown" href="#">Admin Roles<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/category" />">Manage Categories</a></li>
							<li><a href="<c:url value="/supplier" />">Manage Suppliers</a></li>
							<li><a href="<c:url value="/product" />">Manage Products</a></li>
						</ul>
					</li>
					<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
					</c:if>
				</ul>
			</div>
		</nav>
</div>
<!-- Header Navbar Content - End -->