<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu_ui</title>
<link rel='stylesheet' type='text/css'
	href='https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css' />
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<style type="text/css">
#menu_ui {
	margin-top: 30px;
}
#menu {
	width: 100px;
	text-align: center;
}
</style>

</head>
<body>
	<div id="menu_ui">
		<ul id="menu">
			<li><a href="#" class="ui-state-disabled">강이름</a></li>
			<li><a href="#">산이름</a></li>
			<li><a href="#">과일명</a></li>
			
			<li><a href="#">동물령</a>
				<ul>
					<li><a href="#">사자</a></li>
					<li><a href="#">고양이</a></li>
					<li><a href="#">강아지</a></li>
					<li><a href="#">원숭이</a></li>
					<li><a href="#">사슴</a></li>
				</ul>
			</li>
		</ul>
	</div>

	<script type="text/javascript">
		$('#menu').menu();
	</script>
</body>
</html>