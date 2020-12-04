<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tabs</title>
<link rel="stylesheet" type="text/css"
	href="https://code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js">
	
</script>


<style type="text/css">
#menu > ul > li {
	margin-bottom: 30px;
}
</style>
</head>
<body>
	<div id="tabs">
		<!-- 상답 탭 메뉴 -->
		<div id="menu">
			<ul>
				<li><a href="#web">WEB </a></li>
				<li><a href="#app">APP </a></li>
				<li><a href="#framework">FrameWork </a></li>
				<li><a href="#office">Office</a></li>
				<li><a href="#bigData">Big Data</a></li>
			</ul>
		</div>
		<!-- 각 탭에 해당하는 컨텐츠 내용들 -->
		<div id="web">1</div>
		<div id="app">2</div>
		<div id="framework">3</div>
		<div id="office">4</div>
		<div id="bigData">5</div>
	</div>
	<script type="text/javascript">
		
	</script>


</body>
</html>