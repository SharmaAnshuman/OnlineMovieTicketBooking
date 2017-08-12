<%@page contentType="text/html" pageEncoding="UTF-8"%>    
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>  
    <%               
        
                        Connection con;
                        Statement st;
                        ResultSet rs;
        try
        {
            //String  mp=request.getParameter("mposter");
            MultipartRequest m = new MultipartRequest(request,"D:/Collage/Sem 6 Proj/MTB/web/movieposter");
            File f1=m.getFile("mposter");
            String fnm=f1.getName();
            String mid= m.getParameter("mid");
              
            
                                        Class.forName("com.mysql.jdbc.Driver");
                                        con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                        st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                        boolean xx= st.execute("UPDATE `movie` SET `mposter`= '"+fnm+"' where `mid`="+mid+"");
                                        if(xx)
                                        {
                                          out.print("<script>alert('Error.!')</script>");
                                        }
                                        else
                                        {
                                          response.sendRedirect("addmovieimg.jsp?token=done&mid="+mid);
                                        }
        }
        catch(Exception x)
        {
          response.sendRedirect("addmovieimg.jsp?to=MoviePosterNotUploaded");
        }
    %>  