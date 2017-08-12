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
   <div>
       <div class="row">
           <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       <h3 class="panel-title">Login<small> Free</small></h3>
                   </div>
		
           <div class="panel-body">        
               <form role="form" method="post">
                   
                   <div class="row">
                       <div class="col-xs-6 col-sm-6 col-md-12">
                           <div class="form-group">
                               <input type="text" name="Luser" class="form-control input-sm" placeholder="Username">
                            </div>
                       </div>
                   </div>
		
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-12">
                            <div class="form-group">
                                <input type="password" name="Lpass"  class="form-control input-sm" placeholder="Password">
                            </div>
                        </div>
                    </div>
                     
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                    <a href="forget.jsp">Forget Password.</a>
                            </div>
                        </div><br>
                    </div>
                   <input type="submit" value="Login" class="btn btn-info btn-block" name="login">
                   <%
                                         Connection con;
                                Statement st;
                                ResultSet rs;
    if(request.getParameter("login")!=null)
    {
                if((request.getParameter("Luser").equals("admin"))&&((request.getParameter("Lpass").equals("admin"))))
                {
                    response.sendRedirect("admin/admin.jsp");
                    session.setAttribute("user1", "admin");
                }
                                String user=request.getParameter("Luser");
                                String pass=request.getParameter("Lpass");
                                
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                    st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                    rs=st.executeQuery("select * from users where usernm='"+user+"' and passwd='"+pass+"'");
                                    if(rs.next())
                                    {
                                        if(rs.getBoolean("act")==true)
                                        {
                                            session.setAttribute("user1", user);
                                                if(session.getAttribute("user1")!=null)
                                                {
                                                    response.sendRedirect("index.jsp");
                                                }
                                        }
                                        else
                                        {
                                                out.print("<label class='label label-info'>You are blocked..!</label>");        
                                        }
                                    }
                                    else
                                    {
                                        out.print("<label class='label label-info'>Username And Password Not Found..!</label>");
                                    }
                                }
                                catch(Exception x)
                                {
                                    out.println(x);
                                }

                
                
    }
                   %>
               </form>
           </div>
               </div>
           </div>
       </div>
   </div>

<br>
<br>

<div>
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Create Account<small> Free</small></h3>
                </div>
                <div class="panel-body">
                    <form role="form" name="regi_frm" onSubmit="return myfun();">
                        <div class="form-group">
                            <input type="text" name="Ruser" class="form-control input-sm" placeholder="Username" />
                        </div>
                        
                                <div class="form-group">
                                    <input type="text" name="Rname" class="form-control input-sm floatlabel" placeholder="Name">
                                </div>
                        
                        <div class="form-group">
                            <input type="email" name="Remail" class="form-control input-sm" placeholder="Email Address">
                        </div>
                        
                            
                                <div class="form-group">
                                    <input type="password" name="Rpass" class="form-control input-sm" placeholder="Password">
                                </div>
                            
                        
                        
              
               
                            
                            
              
        <div class="form-group">
            <input type="number" name="Rmobile" class="form-control input-sm" placeholder="Mobile Number">
	</div>
                        <input type="submit" value="Register" class="btn btn-info btn-block" name="register" >
                        <%
          
    
     if(request.getParameter("register")!=null)
    {
                                try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/mtb","root","");
                                    st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                    String nm= request.getParameter("Rname");
                                    String usernm= request.getParameter("Ruser");
                                    String passwd= request.getParameter("Rpass");
                                    String email= request.getParameter("Remail");
                                    String mobile= request.getParameter("Rmobile");
                                    //out.print("INSERT INTO `users`( `nm`, `usernm`, `passwd`, `email`, `mobile`,'act') VALUES ('"+nm+"','"+usernm+"','"+passwd+"','"+email+"','"+mobile+"','1')");
                                    if(!(st.execute("INSERT INTO `users`( `nm`, `usernm`, `passwd`, `email`, `mobile`,`act`) VALUES ('"+nm+"','"+usernm+"','"+passwd+"','"+email+"','"+mobile+"',1)")))
                                    {
                                            session.setAttribute("user1",nm);
                                            if(session.getAttribute("user1")!=null)
                                            {
                                                response.sendRedirect("index.jsp");
                                            }
                                                
                                    }
                                    else
                                    {
                                        out.println("<label class='label label-info'>Sorry Try Agin..!</label>");
                                    }
                                    
                                }catch(Exception xx)
                                {
                                    out.println("<label class='label label-info'>Sorry Try Agine..!</label>" +xx.getMessage());
                                }
                
    }
    
    %>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
     

            
            
            
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
