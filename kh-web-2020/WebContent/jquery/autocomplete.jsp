<%@page import="bean.AutoComplete" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>autocomplete</title>
<link rel='stylesheet' type='text/css'
   href='https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script> 
</head>
<body>
<%
	AutoComplete ac = new AutoComplete();
	String data = ac.getData();

%>


<div id="autocomplete">
	<label>성명을 입력하세요.</label>
	<input type="text" name="findStr" id="findStr">
	<input type="button" value="검색" id="btnfind">

</div>
<script type="text/javascript">
	//자동완성 기능 만들기...
	var data = <%=data%>;
	$('#findStr').autocomplete({
		source : data
		
	});
	


</script>
</body>
</html>