<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toggle</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
   integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
   crossorigin="anonymous"></script>
   
   <style type="text/css">
   
   #target {
      border: 1px solid #bbb;
      width: 250px;
      height: 100px;
      text-align: center;
      line-height: 100px;
      font-weight: bolder;
   }
   
   
   #btnToggle {
      width: 120px;
      height: 30px;
      line-height: 30px;
   }
   
   .target_on {
      background-color: #ff0;
      color: #f00;
      visibility: visible;
   }
   
   .target_off {
      background-color: #000;
      color: #fff;
   }
   </style>

</head>
<body>
<div id="toggle"></div>
   <div id="target"></div>
   <br/>
   <input type="button" value="ON/OFF" id="btnToggle" />
   
   <script type="text/javascript">
      $('#btnToggle').on('click', function() {
         $('#target').toggle(even, odd);
         
         function even() {
            $('#target').attr('class','target_on');
         }
         function odd() {
            $('#target').attr('class','target_off');
         }
      })
      
      
      
   </script>
</body>
</html>









