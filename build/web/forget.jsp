<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body class="bg-success">
     
      <%@include file="../design/nav.jsp" %>
  
      <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Forget P<small>assword</small></h3>
                </div>
                <div class="panel-body">
                    <form role="form" name="regi_frm" onSubmit="return myfun();">
                        
                        <div class="form-group">
            <input type="email" name="Remail" class="form-control input-sm" placeholder="Email Address">
       </div>
        <div class="form-group">
            <input type="number" name="Rmobile" class="form-control input-sm" placeholder="Mobile Number">
       </div>
                        <input type="submit" value="Get Password" class="btn btn-info btn-block" name="register" >
                        <%
                                    Connection con;
                                       Statement st;
                                       ResultSet rs;
                                       Class.forName("com.mysql.jdbc.Driver");
                                       con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                       st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                                                 
                                  if(request.getParameter("register")!=null)
                                 {
                                                             try
                                                             {
                                                                 String email= request.getParameter("Remail");
                                                                 String mobile= request.getParameter("Rmobile");
                                                                 rs=st.executeQuery("select * from users where email='"+email+"' and mobile='"+mobile+"'");
                                                                 if(!(rs.next()))
                                                                 {
                                                                         
                                                                             out.println("<label class='label label-info'>Sorry Try Agin..!</label>");

                                                                 }
                                                                 else
                                                                 {
                                                                 
                                                                     out.println("<label class='label label-info'>Your Password Is ["+rs.getString("passwd")+"]</label>");
                                                                 }

                                                             }catch(Exception xx)
                                                             {
                                                                 
                                                                 out.println("<label class='label label-info'>Sorry Try Agine..!</label>" );
                                                             }

                                 }
         
    %>
                    </form>
                </div>
            </div>
        </div>
      </div>
                    
      
     
             <%@include  file="design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

