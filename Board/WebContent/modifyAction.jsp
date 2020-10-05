<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>    
<jsp:useBean id="user" class="user.UserDTO" scope="page" />
<jsp:setProperty name="user" property="notTitle" />
<jsp:setProperty name="user" property="writer" />
<jsp:setProperty name="user" property="passwd" />
<jsp:setProperty name="user" property="notcontent" />
<jsp:setProperty name="user" property="num" />
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body> 

	<!-- <script type="text/javascript">
	function plussector(){
	
			
		var li = document.createElement('li');
		li className="table-head"
			 document.getElementById('a').appendChild(li);
		
		var div = document.createElement('div');
		div.className='th th-cell01'
		div.innerHTML =  "<div>세엣</div>"; 
		  document.getElementByClassName('table-head').appendChild(div);
	}
	
	
	</script>
 -->

</body>

<%
		/* String writer = null; */



	try {
 
	String notTitle =request.getParameter("notTitle");
	String writer = request.getParameter("writer");
	String notcontent =  request.getParameter("notcontent");
	String passwd =request.getParameter("passwd");
	int num = Integer.parseInt(request.getParameter("num"));
	
	UserDAO userDAO = new UserDAO();	
	int result = userDAO.update(notTitle, writer, passwd, notcontent,num); 
		
			
				
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글쓰기에 실패하였습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					
					
					
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'Board.jsp'; ");
					script.println("</script>");
			}
		
	}catch(Exception e) {
		e.printStackTrace(new PrintWriter(out));
	}	
	%>