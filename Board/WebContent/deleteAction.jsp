<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>    
<jsp:useBean id="user" class="user.UserDTO" scope="page" />
<jsp:setProperty name="user" property="num" />
<jsp:setProperty name="user" property="notTitle" />
<jsp:setProperty name="user" property="writer" />
<jsp:setProperty name="user" property="passwd" />
<jsp:setProperty name="user" property="notcontent" />
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


//String dir = application.getRealPath("./upload");
//int max = 30 * 1024 * 1024; // 30MB
   try {
 
	   int no = Integer.parseInt(request.getParameter("num"));
	  
   			
         
   UserDAO userDAO = new UserDAO();   
   int result = userDAO.delete(no); 
   
            if (result == -1) {
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('글삭제에 실패하였습니다.')");
               script.println("history.back()");
               script.println("</script>");
            } else {
               
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('글을 삭제했습니다.')");
               script.println("location.href = 'Board.jsp'; ");
               script.println("</script>");
         }
      
   }catch(Exception e) {
      e.printStackTrace(new PrintWriter(out));
   }   
   %>