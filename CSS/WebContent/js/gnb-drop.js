/**
 * NAME    : 이미지 슬라이드 JQuery
 * AUTHOR  : 조재청
 * CONTACT : nick2615@naver.com
 */
/*$(function(){
	$("#drop-menu").hide();
	$("#gnb").click(function(){
		$("#drop-menu").toggle();
	});
});*/
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
$(function(){
	//처음로딩시 drop-menu는 보이지 않게 설정
	$("#drop-menu").hide();
	var check=true; 
	//gnb클릭시 토글처리...
	$("#gnb").click(function(){
		if(check){
   			$("#drop-menu").slideDown(500);
			check=false;
			
			$(".bar").css("border-color", "#fff");
			
		}else{
			$("#drop-menu").slideUp(500);
			check=true;
			$(this).css("background-color","#fff");
			
		}
  	});
});