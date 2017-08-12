
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="java.io.*" %>
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
       
     
        <div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">Set M<small>OViE</small> Poster</h3>
	</div>
	
        <div class="panel-body">
            <form role="form"  action="upload.jsp" method="post" enctype="multipart/form-data" name="regi_frm">
            
                <div class="row">
		<div class="col-xs-12 col-sm-12 col-md-16">
                    <div class="form-group">
                         <label class="label label-default">Select Movie</label>
                        <select class="form-control input-sm" name="mid">
                    <%
                        Connection con;
                        Statement st;
                        ResultSet rs;
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                            rs = st.executeQuery("select mname,mid from movie");
                          
                            int size=0;
                            while(rs.next())
                            {
                                out.print("<option value='"+rs.getString(2)+"'>"+rs.getString(1)+"</option>");
                                size++;
                            }
                            if(size==0)
                            {
                                 out.print("<script>alert('Movie Not Found.!')</script>");
                            }
                          
                    
                        }
                        catch(Exception c)
                        {
                            out.print(c);              
                        }
                    
                    %>
                    </select>
                </div>
                </div>
                </div>
                
                
               <div class="row">
		<div class="col-xs-12 col-sm-12 col-md-14">
                    <div class="form-group">
                        <h3><label class="btn btn-default" role="button" for="mppp">Click Me To Upload Movie Poster</label></h3>
                        <input type="file" style="display: none" id="mppp" value="okokok" name="mposter" > 
                    </div>
                </div>
               </div>
                    
                   
                   
			 
            <input type="submit" value="Set MOViE Poster" class="btn btn-info btn-block" name="addtime" >
          <%
                                    
                                 if(request.getParameter("token")!=null)
                                 {
                                          
                                          %>
                                         
                                             
                                             </br>
                                                
                                                   <p align="center" role="button" class="label label-success ">Movie Poster Successfully Added..!</p>
                                                   </br>   
                                           
                                          <%
                                 }
                                 if(request.getParameter("to")!=null)
                                 {
                                          out.print("<script>alert('Movie Poster NOT Updated..!')</script>");
                                 }
            %>
         </form>
			    	</div>
	    		</div>
                    
                    
                    
                    
    		</div>
    	</div>
       
                    
       
      
    
      
     
            <%@include  file="../design/Afooter.jsp" %> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

