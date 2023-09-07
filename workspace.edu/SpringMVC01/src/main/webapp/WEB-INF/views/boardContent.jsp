<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<% pageContext.setAttribute("newLineChar", "\n"); %>
	<div class="container">
	  <h2>Spring MVC01</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">Board</div>
	    <div class="panel-body">
	    	<table class="table">
				<tr>
					<td>제목</td>
					<td>${vo.title}</td>
					
				</tr>	    	
				<tr>
					<td>내용</td>
					<td>
						${fn:replace( vo.content, newLineChar, "<br/>" )}
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${vo.writer}</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>
						${fn:split( vo.indate, " ")[0]}
					</td>
				</tr>	
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success btn-sm">등록</button>
						<!-- 문제. 게시글을 삭제하고 게시글 목록으로 이동하시오 -->
						<a href="boardDelete.do?idx=${vo.idx}" class="btn btn-warning btn-sm">삭제</a>
						<a href="boardList.do" class="btn btn-info btn-sm">목록</a>
					</td>
				</tr>
	    	</table>
	    </div>
	    <div class="panel-footer">스프링게시판 - 손민초</div>
	  </div>
	</div>
</body>
</html>



