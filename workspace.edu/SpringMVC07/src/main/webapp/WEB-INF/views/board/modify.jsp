<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<c:set var="cpath" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Spring MVC07</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Board</div>
			<div class="panel-body">
				<form action="${cpath}/board/modify" method="post">
					<table class="table table-bordered table-hover">
						<tr>
							<td>번호</td>
							<td><input class="form-control" type="text" name="idx"
								value="${vo.idx}" readonly="readonly"></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input class="form-control" type="text" name="title"
								value="<c:out value='${vo.title}' />"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea class="form-control" rows="10" cols="" name="content"><c:out value="${vo.content}" /></textarea></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input class="form-control" type="text" name="writer" value="${vo.writer}" readonly="readonly"></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;">
							<c:if test="${not empty mvo && mvo.memID eq vo.memID}">
								<button type="submit" class="btn btn-sm btn-primary">수정</button>
								<button type="button" data-btn="remove" class="btn btn-sm btn-success">삭제</button>
							</c:if> 
							<c:if test="${empty mvo or mvo.memID ne vo.memID}">
								<button disabled="disabled" type="submit" class="btn btn-sm btn-primary">수정</button>
								<button disabled="disabled" type="button" class="btn btn-sm btn-success">삭제</button>
							</c:if>
								<button type="button" data-btn="list" class="btn btn-sm btn-warning">목록</button></td>
						</tr>
					</table>
				</form>
			</div>
			<div class="panel-footer">스프링게시판 - 손민초</div>
		</div>
	</div>

	<form id="frm" method="get" action="">
		<input id="idx" type="hidden" name="idx" value="${vo.idx}">
	</form>


	<script type="text/javascript">

		// 링크처리
		$(document).ready(function(){
			$("button").on("click", function(e){
				var formData = $("#frm");
				var btn = $(this).data("btn");
				
				if(btn == "remove") {
					formData.attr("action", "${cpath}/board/remove");
				} else if (btn == "list") {
					formData.attr("action", "${cpath}/board/list");
					formData.find("#idx").remove();
				}
				formData.submit();
			});
		});
	
	</script>

</body>
</html>
