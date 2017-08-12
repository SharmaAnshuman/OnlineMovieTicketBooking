<%
    
    if(session.getAttribute("user1")!=null)
    {
         session.removeAttribute("user1");
    }
    
    response.sendRedirect("login.jsp");
    %>