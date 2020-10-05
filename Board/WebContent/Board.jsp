<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="user.UserDAO"%>
<%@ page import="user.UserDTO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.oreilly.servlet.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/BoardCSS.css">

    <title> 게시판 </title>
</head>


<body>
		<%
			int pageNumber = 1;
			if(request.getParameter("pageNumber") != null) {
				pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
			}
	
		%>

		
        <div class="CrudTitle">
            <div class="TitleWord">
                게시판 DB
            </div>
        </div>    

        <div class="CrudOrder">
            <ul class="OrderUl">
                <li>
                    <div class="word a">NO</div>
                    <div class="word b">제목</div>
                    <div class="word c">작성자</div>
                    <div class="word d">등록일</div>
                </li>
                </ul>
            </div>

			

        <div class="CurdBar">
                
                <%
				UserDAO userDAO = new UserDAO();
				ArrayList<UserDTO> list = userDAO.getList(pageNumber);
				for(int i=list.size()-1; i>=0 ;i--) {		 	
				%>
				<li class="table-row">
					<div class="word q"> <%= list.get(i).getNum() %> </div>
                    <div class="word w"> <a href="./view.jsp?no=<%=list.get(i).getNum() %>"> <%=list.get(i).getNotTitle()%> </a> </div>
                    <div class="word e"> <%= list.get(i).getWriter() %></div>
                    <div class="word r"> <%= list.get(i).getUdate() %></div>
                 </li>
				<%
					}
				%>
                    
              
              <div class="board-btn">
            <button class="write"><a href="./Write.jsp">글쓰기</a></button>
        </div> 
        </div>
            
        

        
        
        <div class="footer"></div>
</body>
</html>