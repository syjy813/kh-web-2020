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
	if (request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
	}

	//sub
	String sub = "./jquery/menu.jsp";
	if (request.getParameter("sub") != null) {
		sub = request.getParameter("sub");
	}
	%>
	<div id='index'>
		<header id='header'>
			<nav id='nav'>
				<ul>
					<li><a href="index.jsp">HOME</a></li>
					<li><a href="index.jsp?sub=./jquery/menu.jsp">JQUERY</a></li>
					<li><a href="index.jsp?sub=./ajax/menu.jsp">AJAX</a></li>
					<li><a href="index.jsp?sub=./mybatis/menu.jsp">MYBATIS</a></li>
					<li><a href="index.jsp">방명록</a></li>
					<li><a href="index.jsp">게시판</a></li>
					<li><a href="index.jsp">회원관리</a></li>
				</ul>
			</nav>
		</header>

		<section id='contents'>
			<article class='content'>
				<jsp:include page="<%=inc%>" />
			</article>
			<aside class='aside'>
				<img alt="" src="http://placehold.it/150X100">
				<div id="sub_menu">
					<jsp:include page="<%=sub%>" />
				</div>
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
		$('a').css({
			'text-decoration' : 'none'
		})

		//index 페이지의 너비와 중앙배치
		$('#index').css('width', '800px');
		$('#index').css('margin', 'auto');

		// header의 높이와 색상을 설정.
		$('#header').css('height', '150px');
		$('#header').css('background-color', '#ccc');
		$('#header').css('margin-top', '5px');
		$('#header').css('position', 'relative');

		// header > nav
		$('#header > #nav').css({
			'position' : 'absolute',
			'right' : '5px',
			'top' : '5px'
		})
		$('#header > #nav > ul').css({
			'list-style' : 'none',
		});
		$('#header > #nav > ul > li').css({
			'display' : 'inline-block',
			'padding' : '3px',
			'width' : '80px',
			'text-align' : 'center',
			'background-color' : '#99f',
		});

		$('#header > #nav > ul > li').first().css('border-radius',
				'8px 0 0 8px');
		$('#header > #nav > ul > li').last()
				.css('border-radius', '0 8px 8px 0');
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
			'margin-bottom' : '5px',
			'min-height' : '650px'
		});

		$('#index>#contents>.content').css({
			'width' : '650px',
			'float' : 'left',
			'min-height' : '650px'
		});

		$('#index>#contents>.aside').css({
			'width' : '150px',
			'float' : 'right'
		});

		$('#index > #contents > .aside > #sub_menu').css({
			'width' : '150px',
		});
		$('#index > #contents > .aside > #sub_menu > ol').css({
			'margin-left' : '17px',

		});
	</script>
</body>
</html>