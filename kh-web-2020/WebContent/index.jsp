<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>
</head>
<body>
<%
	String inc = "intro.jsp";
	if(request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
	}
%>
	<div id='index'>
		<header id='header'>헤더</header>
		<section id='contents'>
			<article class='content'>
				<jsp:include page="<%=inc %>"/>
			</article>
			<aside class='aside'>
				<img alt="" src="http://placehold.it/150X100">
			</aside>
		</section>
		<footer id='footer'>융합 S/W 개발(주)</footer>
	</div>
	<script>
		//모든 기본 태그의 마진, 패딩을 0으로 설정
		$('*').css('margin', '0px');
		$('*').css('padding', '0px');

		// 패딩의 증가의 영향을 최소화하기 위한 조치.
		$('*').css('box-sizing', 'border-box');

		//index 페이지의 너비와 중앙배치
		$('#index').css('width', '800px');
		$('#index').css('margin', 'auto');

		// header의 높이와 색상을 설정.
		$('#header').css('height', '150px');
		$('#header').css('background-color', '#ccc');
		$('#header').css('margin-top', '5px');

		//content의 최소 높이만 설정
		$('#index > #contents').css('min-height', '250px');

		//footer의 높이와 컬러 지정
		$('#footer').css('height', '100px');
		$('#footer').css('background-color', '#bbb');
		$('#footer').css('text-align', 'center');
		$('#footer').css('line-height', '100px');

		//footer 높이와 바탕색 등을 JSON 표기법으로 변경.
		/*
		 JSON 표기방법
		 1) KEY:VALUE => {KEY:VALUE, KEY:VALUE, ...} 
		 2) 배열 => [v1, v2, v3,v4,]
		 3) 혼합형 : 배열 안에 map
		 [{  },{  }, ...]
		 map 안에 배열
		 {key : [,,,,]}
		 */
		$('#index > #footer').css({
			'height' : '100px',
			'background-color' : '#00f',
			'text-align' : 'center',
			'line-height' : '100px'

		});

		$('#index>#contents').css({
			'margin-top' : '5px',
			'margin-bottom' : '5px'
		});

		$('#index>#contents>.content').css({
			'width' : '650px',
			'float' : 'left'
		});

		$('#index>#contents>.aside').css({
			'width' : '150px',
			'float' : 'right'
		});
	</script>
</body>
</html>