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
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
           st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
           if(request.getParameter("id")!=null)
           {
               String idd= request.getParameter("id");
                rs=st.executeQuery("select * from feed where id="+idd+" ");
                rs.next();
           }
           else
           {
                rs=st.executeQuery("select * from feed");
                rs.next();
           }
           %>
       <div class="col-xs-12 col-sm-8 col-md-4 col-sm-8 col-md-4">
           <h1> <table class="table text-justify">
              <th>
                  <strong>   F<small>eedback</small></strong> 
              </th>
               <tr>
                  <td>
                      <div class="text-justify">
                          <label class="label label-primary" ><%= rs.getString("name") %></label>
                          <label class="label label-primary"><%= rs.getString("email") %></label></br> <strong ><%= rs.getString("msg") %></strong>
                      </div>
                  </td>
              </tr>
              
              <tr>
                  <td>

                      <div>
                          <a href="feedback.jsp?id=<%    int x= Integer.parseInt(rs.getString("id"));                     x++;                          out.print(x);%>" class="label label-warning">Next</a>
                      </div>
                                            <div>
                           <a href="feedback.jsp?id=<%    x= Integer.parseInt(rs.getString("id"));                     x--;                          out.print(x);%>" class="label label-default">Previous</a>
                      </div>
                  </td>
              </tr>
              
               </table></h1>
              
          
      </div>
      <%
           
       }
       catch(Exception x)
       {
                   out.print("NOT FOUND");
       }
      %>
      
     
             <%@include  file="../design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

