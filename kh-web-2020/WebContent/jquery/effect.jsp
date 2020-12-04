<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect</title>

<style type="text/css">
	#target {
		background-image: url(https://file.mk.co.kr/meet/neds/2018/05/image_readtop_2018_343043_15276598113332910.jpg);
		background-size: 100% 100%;
		border-radius: 10px;
		width: 90%;
		height: 200px;
		
	}
	#parent {
	height: 210px;
	}

</style>
</head>
<body>
<div id="effect">
	<div id="parent">
	<div id="target"></div>
	</div>
	<div id="btns">
		<input type="button" value="SHOW" id="btnShow"/>
		<input type="button" value="HIDE" id="btnHide"/>
		<input type="button" value="TOGGLE" id="btnToggle"/>
		<input type="button" value="SLIDE DOWN" id="btnSlideDown"/>
		<input type="button" value="SLIDE UP" id="btnSlideUp"/>
		<input type="button" value="SLIDE TOGGLE" id="btnSlideToggle"/>
		<input type="button" value="FADE IN" id="btnFadeIn"/>
		<input type="button" value="FADE OUT" id="btnFadeOut"/>
		<input type="button" value="ANI" id="btnAni"/>
	</div>
</div>
<script type="text/javascript">
	
	/* 방법 1
	$('#btnShow').on('click', function() {
		
	})
	*/
	
	$('#btnShow').click(function() {
		$('#target').show();
	});
	$('#btnHide').click(function() {
		$('#target').hide();
	});
	$('#btnToggle').click(function() {
		$('#target').toggle(500);
		
	});
	$('#btnSlideDown').click(function(){
		$('#target').slideDown(100,function(){});
	});

	$('#btnSlideUp').click(function(){
		$('#target').slideUp(100,function(){});
	});
	$('#btnSlideToggle').click(function() {
		$('#target').slideToggle(100,function(){});
	})
	$('#btnFadeIn').click(function() {
		$('#target').fadeIn(200);
	});
	$('#btnFadeOut').click(function() {
		$('#target').fadeOut(200);	
	});
	$('#btnAni').click(function() {
		$('#target').animate({
			'opacity' : 'toggle'
		});	
	});
	
	
	
</script>


</body>
</html>