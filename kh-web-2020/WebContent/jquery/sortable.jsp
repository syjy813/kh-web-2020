<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sortable</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
   integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
   crossorigin="anonymous"></script>
<style type="text/css">
#items>li {
   list-style: none;
   margin-bottom: 10px;
   border: 1px dashed #324d32;
   background-color: #639763;
   color: #ffffe6;
   height: 50px;
   line-height: 40px;
   width: 150px;
   text-align: center;
   margin-bottom: 3px;
}

#items>li:last-child {
   border-radius: 0 0 10px 10px;
}

#items>li:first-child {
   border-radius: 10px 10px 0 0;
}

#items li:hover {
   cursor: pointer;
}
</style>
</head>
<body>
   <div id="sortable">
      <ul id="items">
         <li>html5</li>
         <li>css3</li>
         <li>javacript</li>
         <li>java</li>
         <li>jdbc</li>
         <li>jquery</li>
         <li>ajax</li>
         <li>mybatis</li>
         <li>jsp</li>
         <li>spring boot</li>
         <li>final project</li>
      </ul>
   </div>

   <script>
      $('#items').sortable();
   </script>
</body>
</html>