<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manipulation</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="main">
		<div id="target">TARGET</div>

		<div class="dtn_zone">
			<input type="button" value="WRAP" id="btnwrap" onclick="abc(this)" />
			<input type="button" value="APPEND" id="btnappend" /> <input
				type="button" value="PREPEND" id="btnprepend" />
		</div>
	</div>


	<script>
	function abc(button) {
		var request ="<label><input type='checkbox'>확인</label>";
		for(var i = 0;i<5;i++) {
			
		$('#main > #target').wrap(request);
		}
		}
	
	var btnAppend = $('#btnappend')[0];
	btnAppend.onclick = function() {
		var request ="<label><input type='checkbox'>확인</label>";
		$('#main > #target').append(request);
	};
	
	var btnPrepend = document.getElementById('btnprepend');
	btnPrepend.onclick = function() {
		var request ="<label><input type='checkbox'>확인</label>";
		$('#main > #target').prepend(request);
	}
	
	
	</script>

</body>
</html>