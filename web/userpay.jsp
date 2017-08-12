<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
      
      <%@include file="design/nav.jsp" %>
   
     
     <div class="col-lg-offset-2 col-md-6">
         <table class="table table-hover"><th>Your Booking Statements.!</th></table>
         
     <%
            Connection con;
                                Statement st;
                                ResultSet rs;
     try
     {
            
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
             st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
             rs= st.executeQuery("select * from booking where username='"+session.getAttribute("user1") +"' ");
             int chkk=0;
             while(rs.next())
             {
             
             %>
     
     
    
     

            
         <table class="table table-bordered bg-success"  >
             
             <th>Movie Name</th><th>Amount</th><th>Seats</th><th>Payment Method</th><th>Date & Time</th><th>Booking ID</th>
             <tr>
                 <td><%= rs.getString("mname")%></td><td>Rs.<%= rs.getString("amount")%></td><td><%= rs.getString("total_seats")%></td><td><%= rs.getString("payment_method")%></td><td><%= rs.getTimestamp("bdate")%></td><td><%= rs.getString("id")%></td>
             </tr>
         </table>
     
     
     
     
     
     
     <%
     chkk++;
             }
             
            
             
             if(chkk==0)
             {
                 out.println("No Records Found..!");
             }
         
         
     }catch(Exception c){
     
            
       out.print("error. "+c.getMessage().toString());
     }
     
     
     %>
     <table>
         <%
       try
     {
            
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
             st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
             rs= st.executeQuery("select sum(amount) from booking where username='"+session.getAttribute("user1") +"' ");
     rs.next();
         %>
         <th>Total Amount Rs.<%= rs.getInt(1) %></th>
         <%
     }catch(Exception cxc)
     {
         out.print(cxc);
     }
             
         %>
     </table>
     </div>
     
     
     
     
     
             <div style="clear: both"></div>
    <%@include  file="design/footer.jsp" %>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
