<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/detail.css">
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
				<section id="detail">
					<h1>공지사항-상세페이지</h1>
					<div>
						<div>
							<p class="page-tit">공지사항
								<span class="sub">
									컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.
								</span>
							</p>
						</div>
<!-- /////////////////////////////////////////////////////////////////////// -->
<!-- //////////////////////상세페이지 정보///////////////////////////////////////////////// -->
<!-- /////////////////////////////////////////////////////////////////////// -->						
						<div id="detail-wrap" class="page-view">
							<table class="detail-tit">
								<tr>
									<td class="tit">제목</td>
									<td colspan="3">${requestScope.result.subject }</td>
								<tr>
								<tr>
									<td class="tit">작성자</td>
									<td colspan="3">${result.writer }</td>
								<tr>
								<tr>
									<td class="tit">작성일</td>
									<td>${result.reg_date }</td>
									<td class="tit">조회수</td>
									<td>${result.count }</td>
								<tr>
							</table>
							<div class="content">
								${result.content }
							</div>
							<script type="text/javascript">
								$(function(){
								//////////////////////////	
									$("#edit-wrap").hide();
								//////////////////////////									
									//목록버튼이벤트
									$(".btn-list").click(function(){
										history.go(-1);
									});
									
									//수정버튼 이벤트
									$("#btn-edit").click(function(){
										$("#detail-wrap").hide();
										$("#edit-wrap").show();
									});
									
								////////////////////////////	
								});
								
							</script>
							<div class="btn">
								<c:if test="${logInfo.id eq result.writer}">
								<button id="btn-edit">수정</button>
								<a href="delete.bo?deleteNo=${result.no }"><button>삭제</button></a>
								</c:if>
								<button class="btn-list">목록</button>
							</div>
						</div>
						
<!-- /////////////////////////////////////////////////////////////////////// -->
<!-- //////////////////////수정버튼 클릭할때 보여주는 수정페이지///////////////////////////////////////////////// -->
<!-- /////////////////////////////////////////////////////////////////////// -->						
						<div id="edit-wrap" class="page-view">
							<form action="edit.bo" method="post">
							<table class="detail-tit">
								<tr>
									<td class="tit">제목</td>
									<td colspan="3">
										<input type="text" name="subject" value="${requestScope.result.subject }">
									</td>
								<tr>
								<tr>
									<td class="tit">작성자</td>
									<td colspan="3">${result.writer }</td>
								<tr>
								<tr>
									<td class="tit">작성일</td>
									<td>${result.reg_date }</td>
									<td class="tit">조회수</td>
									<td>${result.count }</td>
								<tr>
								
							</table>
							<div class="content">
								<textarea rows="5" cols="50" name="content">${result.content }</textarea>
							</div>
							
							<div class="btn">
								<input type="hidden" name="no" value="${result.no }">
								<button type="submit">수정완료</button>
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