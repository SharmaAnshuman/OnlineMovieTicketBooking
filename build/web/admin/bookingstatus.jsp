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
       <div class="col-md-6 col-lg-offset-3 ">
          <table class="table">
              <th>Booking ID</th><th>Username</th> <th>Time</th> <th>Seats No.</th> <th>Payment Method</th><th>Amount</th>
      
      <%
   Connection con;
       Statement st;
       ResultSet rs;
         Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
           st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
       try
       {
           rs = st.executeQuery("select * from booking");
                 while(rs.next())  
                 {
           %>
           <tr>
               <td><%=rs.getString("id")%></td>
               <td><%=rs.getString("username")%></td>
               <td><%=rs.getString("bdate")%></td>
               <td><%=rs.getString("total_seats")%></td>
               <td><%=rs.getString("payment_method")%></td>
               <td><%=rs.getString("amount")%></td>
               
           </tr>
      <%
                 }
       }
       catch(Exception cc)
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

