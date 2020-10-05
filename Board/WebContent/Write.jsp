<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/WriteCSS.css">
   
   <title>게시판</title>
</head>
<body>
	



<div class="write">
   <div class="title">
      <h1>글쓰기</h1>
   </div>
   <br>
   
   <form name="writepage" id="writepage" method='post' action='writeAction.jsp' >
   <div class = "main">  
                           
                       제목     &nbsp;  &nbsp;  &nbsp; <input type="text" class="box" name="notTitle"  required>     <br> 
   		    작성자     &nbsp;&nbsp; <input type="text" class="box" name="writer" required> <br> 
                      비밀번호    <input type="password" class="box" name="passwd" required> <br> <br>   
        	내용<br><br>
      <textarea  cols="60" rows="30" style="resize:none;" name="notcontent" autofocus required wrap="hard"></textarea>
   </div>

      <br><br><br>
	  
      <input type="reset" class="cancel" value="취소"  onclick="location.href='Board.jsp' " style="font-size:20px;">&nbsp; &nbsp; 
      <input type="submit" class="FileSubmit" value="전송"  style="font-size:20px;"> 

      <br><br>
      </form>
   </div>
   
 
   

</body>

</html>