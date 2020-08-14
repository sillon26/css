<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/notice.css">
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
				<section id="notice">
					<h1>공지사항</h1>
					<div>
						<div>
							<p class="page-tit">공지사항
								<span class="sub">
									컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.
								</span>
							</p>
						</div>
						<script type="text/javascript">
							
							$(function(){
								//로딩시 처리////////////
								//var ea = ${empty param.ea} ? '5' :'${param.ea}';
								var ea=<%= request.getParameter("ea")%>;
								
								if(ea == 5 ){
									$("option:nth-child(1)").attr("selected","selected");
								}else if(ea == 10|| ea==null){
									$("option:nth-child(2)").attr("selected","selected");
								}else if(ea == 20){
									$("option:nth-child(3)").attr("selected","selected");
								}
								
								
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
								
								//*/
								//이벤트 발생시 처리////////
								$("#ea").change(function(){
									$("#ea-form").submit();
								});
							});
							
							
						</script>
						<div class="space-between">
							<div class="board-ea">
								
								<form action="notice.bo" id="ea-form">
									<input type="hidden" name="side" value="${param.side }"/>
									<select name="ea" id="ea">
										<option value="5" >5개씩</option>
										<option value="10" >10개씩</option>
										<option value="20" >20개씩</option>
									</select>
								</form>	
							</div>
							<c:if test="${!empty logInfo }">
							<a href="writePage.bo"><button class="btn-style">글쓰기</button></a>
							</c:if>
						</div>	
						<div class="page-view">
							<ul class="list-tit">
								<li>번호</li>
								<li>제목</li>
								<li>작성자</li>
								<li>작성일</li>
								<li>조회</li>
							</ul>
							<!-- //DB내용 뿌려주세요 가이드입니다//// -->
							<c:forEach var="dto" items="${noticeList }" >
								<ul class="list-item">
									<li>${dto.no }</li>
									<li><a href="detail.bo?no=${dto.no }">${dto.subject }</a></li>
									<li>${dto.writer }</li>
									<li>${dto.reg_date }</li>
									<li>${dto.count }</li>
								</ul>
							</c:forEach>
							
							<!-- ///////////////////////// -->
						</div>
						<script type="text/javascript">
							function pageClick(pageNO){
								var writer=$("#ch-writer").val();
								var subject=$("#ch-subject").val();
								var content=$("#ch-content").val();
								var ea=$("#input_ea").val();
								//var search=$("#txt").val();
								var queryString="notice.bo?side=1&page="+pageNO;
								
								queryString += "&ea="+ea;
								
								
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

								location.href=queryString;
								
							}
						</script>
						<div class="pagging">
							<c:if test="${pageInfo.pageStart>1 }">
								<a onclick="pageClick(1)" >&lt;&lt;</a>
								<a onclick="pageClick(${pageInfo.pageStart-1 })">&lt;</a>
							</c:if>
							<c:forEach begin="${pageInfo.pageStart }" end="${pageInfo.pageEnd }" varStatus="page">
								<a onclick="pageClick(${page.index })">${page.index }</a>
							</c:forEach>
							<c:if test="${pageInfo.pageEnd<pageInfo.pageTotal}">
								<a onclick="pageClick(${pageInfo.pageEnd+1 })">&gt;</a>
								<a onclick="pageClick(${pageInfo.pageTotal })">&gt;&gt;</a>
							</c:if>
						</div>
						<form class="search-form" action="notice.bo">
							<div class="search-target">
								<img alt="아이콘" src="<%=request.getContextPath() %>/images/ico_function.gif">
								<span>검색어</span>
								<input id="input_ea" type="hidden" name="ea" value="${param.ea }" />
								<input id="ch-writer" type="checkbox" name="writer" >이름
								<input id="ch-subject" type="checkbox" name="subject">제목
								<input id="ch-content" type="checkbox" name="content">내용
							</div>
							<div class="btn-wrap">
								<input id="txt" type="search" name="search" value="${param.search }">
								<button type="submit">
									<img alt="검색" src="<%=request.getContextPath() %>/images/search.png">
								</button>
							</div>
						</form>
					</div>
				</section>
			</div>
		</main>
		<div>
			<jsp:include page="/view/footer.jsp"/>
		</div>
	</body>
</html>