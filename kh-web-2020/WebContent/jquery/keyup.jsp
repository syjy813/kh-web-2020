<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>keyup</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
<style>
	#result {
		border: 2px solid #aaa;
		border-radius: 10px;
		padding: 15px;
		width: 350px;
		height: 200px;
		background-color: #eee;
		box-shadow: 2px 2px 4px #999;
	}

</style>

</head>
<body>
	<div id="keyup">
		<label>생년월일</label> <input type="text" id="birth" placeholder="YYYYMMDD">
		<label>-</label> <input type="text" id="gender" size="4">
		<p />
		<div id="result"></div>

	</div>

<script>
	$('#keyup > #birth').keyup(function(event) {
		var str = event.keyCode;		
		$('#result').text(str);
		console.table(event);
		//입력된 문자열의 길이를 계산하여 8자이면 커서를 성별을 입력하는 항목으로 이동
		if($(this).val().length >= 8) {
			$('#gender').focus().select();
		}
	});
	$('#keyup > #gender').keyup(function(event) {
		var gen = Number($(this).val());
		var str = "";
		if(gen%2 == 0) {
			str = "여성입니다.";
		}
		else {
			str = "남성입니다.";
		}
		$('#result').html(str);
	});
	
	
	

</script>

</body>
</html>