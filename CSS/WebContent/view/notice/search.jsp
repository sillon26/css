<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/search.css">
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
				<section id="list">
					<h1>공지사항</h1>
					<div>
						<div>
							<p class="page-tit">공지사항
								
							</p>
						</div>
						<script type="text/javascript">
							
							$(function(){
								//로딩시 처리////////////
								//var ea = ${empty param.ea} ? '5' :'${param.ea}';
							
								
								if('${param.writer}' == 'on'){
									$("#ch-writer").attr("checked", "checked");
								}else{
									$("#ch-writer").removeAttr("checked");
								}
								
								
								if('${param.subject}' == 'on'){
									$("#ch-subject").attr("checked", "checked");
								}else{
									$("#ch-subject").removeAttr("checked");
								}
								
								if('${param.content}' == 'on'){
									$("#ch-content").attr("checked", "checked");
								}else{
									$("#ch-content").removeAttr("checked");
								}
								
								
							
							});
							
							
						</script>
						<div class="space-between">
								
						</div>	
						<div class="page-view">
							<!-- //DB내용 뿌려주세요 가이드입니다//// -->
									
							<c:forEach var="faq" items="${faq }" >
										
										<ul class="row-align list1">
											<li class="goods">
													
													<a class="goods-img">
														<img alt="상품이미지" src="<%=request.getContextPath() %>/images/bg_150x195.png">								
													</a>
													
													<div class="column-align">
														<span class="name">${faq.subject }</span>
														<span class="sale-price">${faq.writer }</span>
																	<span class="price">${faq.count }</span>
													</div>
													
											</li>
										</ul>
							</c:forEach>
							<!-- ///////////////////////// -->
						</div>
							
						<script type="text/javascript">
							function pageClick(pageNO){
								var writer=$("#ch-writer").val();
								var subject=$("#ch-subject").val();
								var content=$("#ch-content").val();
								
								//var search=$("#txt").val();
								var queryString="list.bo?side=1&page="+pageNO;
								
								
								
								if($("#ch-writer").is(":checked")){
									queryString += "&writer="+writer;
								}
								if($("#ch-subject").is(":checked")){
									queryString += "&subject="+subject;
								}
								if($("#ch-content").is(":checked")){
									queryString += "&content="+content;
								}
								if($("#txt").val().trim()!=""){
									queryString += "&search="+ $("#txt").val();
								}
							
								if($("#txt").val().trim()!=""){
									queryString += "&search="+ $("#txt").val();
								}
	
								location.href=queryString;
								
							}
						</script>
						<%-- <c:if test="${empty param.search }">		</c:if> --%>
					
			
				
								
								<input id="ch-writer" type="hidden" name="writer" >
								<input id="ch-subject" type="hidden" name="subject">
								<input id="ch-content" type="hidden" name="content">
								<input id="txt" type="hidden" name="search" value="${param.search }">
							
						
						
				
				
				
				
				
				
					</div>
				</section>
			</div>
		</main>
		<div>
			<jsp:include page="/view/footer.jsp"/>
		</div>
	</body>
</html>