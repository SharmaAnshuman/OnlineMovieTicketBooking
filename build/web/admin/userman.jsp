<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body class="bg-success">
     
      <%@include file="../design/Anav.jsp" %>
      <%
      
   Connection con;
       Statement st;
       ResultSet rs;
         Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
           st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
           
      if(request.getParameter("id")!=null)
      {
          String id=request.getParameter("id");
          
                if(request.getParameter("act")!=null)
                {      
                        boolean a= st.execute("update users set act=1 where id="+id+"");
                        if(a==true)
                        {
                            out.println("<script> alert('Actived');</script>");
                        }
                }
                
                if(request.getParameter("dact")!=null)
                {
                        boolean a= st.execute("update users set act=0 where id="+id+"");
                        if(a==true)
                        {
                            out.println("<script> alert('De-actived');</script>");
                        }
                }
                
          
      }
           %>
           
           
                      <div class="panel col-md-7 col-lg-offset-2">
                   <table class="table table-striped">
                       <th>Username</th><th>Mobile</th><th>Email</th><th>Active Status</th>
           <%
           try
           {
               rs = st.executeQuery("select * from users");
               while(rs.next())
               {
                   
                   
           %>      
                       <tr>
                           <td><%= rs.getString("usernm") %></td>
                           <td><%= rs.getString("Medicine") %></td>
                           <td><%= rs.getString("email") %></td>
                           <%
                           if(rs.getBoolean("act")==true) 
                           {
                           %><td><a href="userman.jsp?id=<%=rs.getString("id") %>&dact=<%=rs.getString("act")%>" title="to De-active click on">Active</a></td><%
                           }
                           else
                           {
                               %><td><a href="userman.jsp?id=<%=rs.getString("id") %>&act=<%=rs.getString("act")%>" title="to Active click on">De-active</a></td><%
                           }
                           %>
                           
                      </tr>

           <%
               }
           }catch(Exception cc)
           {
               
           }
           %>           
      
    
                   </table>
               </div>
      
     
             <%@include  file="../design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

