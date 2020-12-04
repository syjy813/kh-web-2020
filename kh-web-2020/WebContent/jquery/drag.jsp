<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drag</title>
<link rel='stylesheet' type='text/css'
   href='https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script> 
<style type="text/css">
   #drag > div{
      width: 150px;
      height: 150px;
      background-color: #88f;
      opacity: 0.5; 
   }

</style>
</head>
<body>
<div id="drag">
   <div id="target1">이곳을 끌어보세요.</div>
   <div id="target2">이곳도 끌어보세요.</div>
</div>
<script type="text/javascript">
   $('#target1').draggable();
   $('#target2').draggable();
</script>
</body>
</html>