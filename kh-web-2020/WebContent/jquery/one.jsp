<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one</title>

<style type="text/css">
   #result {
      border: 1px solid #44f;
      padding: 20px;
      width: 300px;
      height: 120px;
      margin-bottom: 20px;
   }
   
   #btnSend {
      width: 70px;
      height: 30px;
   }
</style>

</head>
<body>
<div id="one">
   <div id="result">송금 버튼을 클릭하시면 송급 됩니다.</div>
   <input type="button" value="송금" id="btnSend">

</div>
<script type="text/javascript">
   let count = 0;
   $('#btnSend').click(function() {
      count++;
      $('#result').html(count+"회 송금됨.")
      $(this).attr('disable', 'disable')
   })
   $('#btnSend').one('click', function(){
      count++;
      $('#result').html(count+"회 송금됨")
   });


</script>
</body>
</html>