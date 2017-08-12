<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB Upcoming</title>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
      <%@include file="design/nav.jsp" %>
       <%@page import="java.sql.*" %>
      
      
      <%
          Connection con;
          Statement st;
          ResultSet rs;
      try
      {
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
          st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
          rs = st.executeQuery("select * from movie where mstatus='Upcoming'");
      
            while(rs.next())
            {
                
      %> 
      
   
        
<div style="display: inline-table;margin-left: 30px" class="thumbnail">
          
          <div style="padding: 12px 12px 12px 12px;text-align: justify">
                <img src="movieposter/<%=rs.getString("mposter") %>" class="img-responsive" alt="Picture Not Found" style="height: 400px;width: 260px">
                <h4 style="width:180px"><%=rs.getString("mname") %></br><small><%=rs.getString("mcat") %></br><x class="label label-danger">Rs.230*</x></small></h4>          
                <a href="booking.jsp?mid=<%=rs.getString("mid") %>" class="btn btn-warning" role="button">Advance Ticket</a>         
          </div>
          </br>
      </div>   
        
   <%
            }
      }catch(Exception xx)
      {
          out.print(xx);
      }
                %>
    
      
     
     
 <div style="clear: both"></div>
    <%@include  file="design/footer.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

