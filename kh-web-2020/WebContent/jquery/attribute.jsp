<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attribute</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<style>
#target {
	border: 1px solid #aaa;
	width: 400px;
	height: 200px;
}

.a_type {
	background-color: #00f;
	color: #fff;
}

.a_type>h1 {
	color: #fff;
	font-family: 궁서체;
}

.b_type {
	background-color: #f99;
	color: #ff0;
}

.b_type>h1 {
	color: #ff0;
	font-family: 명조체;
}

.null {
	background-color: red;
}
</style>


</head>
<body>
	<div id="attr">
		<div id="target">
			<h1>Jquery Attr</h1>
		</div>
		<div id="btns">
			<input type="button" value="A Type" id="btnAtype" /> 
			<input type="button" value="B Type" id="btnBtype" />
		  	<input type="button" value="reset Type" id="btnREtype">
		</div>
	</div>
	<script>
		var target = $('#target');
		$('#btnAtype')[0].onclick= function(){
			$(target).attr('class', 'a_type');
		}
		$('#btnBtype')[0].onclick = function() {
			$(target).attr('class', 'b_type');
		}
		$('#btnREtype')[0].onclick = function() {
			$(target).removeAttr('class');
		}
	</script>
</body>
</html>




















