<%@page import="board.notice"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="user.UserDAO"%>
<%@ page import="user.UserDTO"%>
<%@ page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/viewCSS.css">
   
   <title>게시판</title>
</head>
<body>

		<%
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
			
		int no = Integer.parseInt(request.getParameter("no"));
        no = no - 1;
       
       UserDAO userDao = new UserDAO();
       ArrayList<UserDTO> list = userDao.getList(pageNumber);
       
      
       
       
        	%> 
	
		
		<div class="CrudTitle">
            <div class="TitleWord">
              	  글 보기
            </div>
        </div>  
        
        

	<div class="viewBoard">
		
		
		<div class="viewSubject"><%=list.get(no).getNotTitle()%> </div>
			<div class="viewInfo">   
				<span class="viewOrder"> 작성자 : <%=list.get(no).getWriter()%> </span>
				<span class="viewOrder">등록일 :<%=list.get(no).getUdate()%> </span>
				<span class="viewOrder a">NO :<%= list.get(no).getNum() %> </span>
			</div>
			
			<div class="viewContent"> <%=list.get(no).getNotcontent()%></div>
			
			<div class="viewWrite">
				<span class="viewListBtn"><a href="./Board.jsp"> 목록 </a></span>
				<span class="viewBtn"><a href="./modify.jsp?no=<%=no+1 %>"> 수정하기 </a></span>
				<span class="viewBtn">	 <a href="./deleteAction.jsp?num=<%=no+1 %>">삭제하기</a> </span>
			</div>
			
		
	</div>





   
 
   

</body>

</html>