<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>each</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
   integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
   crossorigin="anonymous"></script>
</head>
<body>
<div id="each">
       <div id="source">
          <div><font color="red">가</font></div>
          <div>나</div>
          <div>다</div>
          <div>라</div>
       </div>
   

    <div id="target"></div>
    
    <div id="btns">
       <input type="button" value="SIZE" id="btnSize"/>
       <input type="button" value="TEXT" id="btnText"/>
       <input type="button" value="HTML" id="btnHtml"/>
       <input type="button" value="EACH" id="btnEach"/>
    </div>
</div>
<script>
$('#target').css({
   'border' : '2px solid #aaa',
   'padding' : '35px'
   
})


$('#btnSize')[0].onclick = function() {
   var len = $('#each > #source > div').length; // length
   $('#each > #target').html('div개수:' + len);
}

$('#each #btnHtml')[0].onclick = function() {
   var div = $('#source > div').get(0);
   var text = $(div).text();
   $('#target').text(text);
}

$('#btnHtml')[0].onclick = function() {
   let fd = $('#source > div:first');
   let html = $(fd).html();
   $('#target').html(html);
   
}
$('#btnEach')[0].onclick = function() {
   let bg = ['#00f', '#99f', '#44f', '#aaf']
   $('#each > #source > div').each(function(index) {
      $(this).css('background-color', bg[index]);
   });
}




    
</script>
    
    
    
</body>
