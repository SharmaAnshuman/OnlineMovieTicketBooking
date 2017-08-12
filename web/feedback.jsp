<%@page  import="java.sql.*" %>
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
       
     <div class="col-offset-4 col-lg-push-4 col-md-4 thumbnail ">
         <div class="panel-heading" role="alert">
             
             <form>
                     Feedback
                     
                     <input class="form-control input-sm col-md-4"  type="text" name="username" placeholder="Your Name">
                 
                     <p><input class="form-control input-sm col-md-4"  type="email" name="email" placeholder="Email Address"></p>
                    
                     <p><textarea class="form-control input-sm"  name="feed" placeholder="Enter Your Feedback.."></textarea></p>
                     <input class="btn btn-success input-sm right"  role="button" type="submit" name="btn" value="Feedback" />
             </form>
             
                     <%
                            if(request.getParameter("btn")!=null)
                            {
                                String email=request.getParameter("email");
                                String user=request.getParameter("username");
                                String msg=request.getParameter("feed");
                                Connection con;
                                Statement st;
                                ResultSet rs;
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                    st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                    if(!(st.execute("INSERT INTO `feed`(`name`, `email`, `msg`) VALUES ('"+user+"','"+email+"','"+msg+"')")))
                                    {
                                        out.print("Thankyou for your feedback..! ");
                                    }
                                    else
                                    {
                                        out.print("Thankyou for your feedback but your feedback is not getting ..! ");
                                    }
                                }
                                catch(Exception x)
                                {
                                    out.println(x);
                                }

                            }
                     %>
         </div>
     </div>
      
     
       <%@include  file="design/footer.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

