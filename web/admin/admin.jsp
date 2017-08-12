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
       try
       {
         
           rs=st.executeQuery("select sum(amount) from booking ");
           rs.next();
           %>
           <div class="col-md-5 col-md-offset-3" style="font-size: 40px">
          <table class="table" align="center">
              <th>
                  <strong>   Pay<small>ment Collaction</small></strong> 
              </th>
               <tr>
                  <td>
                      <div>
                          <a class="label label-danger ">Rs.<%= rs.getString(1) %></a>
                          <%
       }catch(Exception x)
       {
           %>  <a class="label label-danger ">Rs.00</a><%
        }%>
                      </div>
                  </td>
              </tr>
              <tr>
                  <td>
                      <div>
                          <%
        try
       {
         
           rs=st.executeQuery("select count(*) from movie where mstatus='Now Showing'");
           rs.next();
                          %>
                          <p class="label label-warning"> Now Showing Movie<small>s</small> <strong class="label label-default"><%= rs.getString(1) %></strong></p>
                          <%}catch(Exception xx){%><p class="label label-warning"> Now Showing Movie<small>s</small> <strong class="label label-default">0</strong></p><%}%>
                      </div>
                  </td>
              </tr>
              
              <tr>
                  <td>
                      <div>
                                           <%
        try
       {
         
           rs=st.executeQuery("select count(*) from movie where mstatus='Upcoming'");
           rs.next();
                          %>
                          <p class="label label-warning"> Upcoming Movie<small>s</small> <strong class="label label-default"><%= rs.getString(1) %></strong></p>
                            <%}catch(Exception xx){%><p class="label label-warning"> Upcoming Movie<small>s</small> <strong class="label label-default">0</strong></p><%}%>
                      </div>
                  </td>
              </tr>
              
               <tr>
                  <td>
                      <div>
                          <a href="updateshowtime.jsp" role="lable"><strong class="label label-danger">Delete Movie ShowTime</strong></a>
                      </div>
                  </td>
              </tr>
              
              
              
          </table>
              
          
      </div>
      
    
      
     
             <%@include  file="../design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

