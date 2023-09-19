<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- contextPath 값을 내장객체 변수로 저장 -->
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${contextPath}/">스프링</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${contextPath}/">메인</a></li>
					<li><a href="boardMain.do">게시판</a></li>
				</ul>

				<c:if test="${empty mvo}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${contextPath}/loginForm.do"><span class="glyphicon glyphicon-log-in"> 로그인</span></a></li>
						<li><a href="${contextPath}/joinForm.do"><span class="glyphicon glyphicon-user"> 회원가입</span></a></li>
					</ul>
				</c:if>
				<c:if test="${not empty mvo}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${contextPath}/updateForm.do"><span class="glyphicon glyphicon-edit"> 회원정보수정</span></a></li>
						<li><a href="#"><span class="glyphicon glyphicon-picture"> 프로필사진등록</span></a></li>
						<li><a href="${contextPath}/logout.do"><span class="glyphicon glyphicon-log-out"> 로그아웃</span></a></li>
					</ul>
				</c:if>


			</div>
		</div>
	</nav>
</body>
</html>