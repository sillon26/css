<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/write.css">
		<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		
	</head>
	<body>
		<div>
			<jsp:include page="/view/header.jsp"/>
		</div>
		
		<main>
			<h1>메인영역</h1>
			<!-- ///1050px/// -->
			<div class="page-board view-width">
				<!-- ///200px// -->
				<!-- //사이드메뉴위치// -->
				<jsp:include page="/view/sideMenu.jsp"/>
				<!-- //820px/// -->
				<section id="write">
					<h1>공지사항-글쓰기</h1>
					<div>
						<div>
							<p class="page-tit">공지사항
								<span class="sub">
									컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.
								</span>
							</p>
						</div>

						
<!-- /////////////////////////////////////////////////////////////////////// -->
<!-- //////////////////////글쓰기 페이지///////////////////////////////////////////////// -->
<!-- /////////////////////////////////////////////////////////////////////// -->						
						<div id="write-wrap" class="page-view">
							<form action="write.bo" method="post">
							<table class="detail-tit">
								<tr>
									<td class="tit">제목</td>
									<td colspan="3">
										<input type="text" name="subject" >
									</td>
								<tr>
								
							</table>
							<div class="content">
								<textarea rows="5" cols="50" name="content"></textarea>
							</div>
							<script type="text/javascript">
								$(function(){
																
									//목록버튼이벤트
									$(".btn-list").click(function(){
										history.go(-1);
									});
								});
								
							</script>
							<div class="btn">
								<button type="submit">등록</button>
								<button class="btn-list" type="button">목록</button>
							</div>
							</form>
						</div>
						
					</div>
				</section>
			</div>
		</main>
		<div>
			<jsp:include page="/view/footer.jsp"/>
		</div>
	</body>
</html>