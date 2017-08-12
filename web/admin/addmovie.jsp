<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    	<script type="text/javascript" language="javascript">
	function chk()
	{	
            var mname = document.forms["addmovie"]["mname"].value;
            var minfo = document.forms["addmovie"]["minfo"].value;
            
            if(mname=="")
            {
                alert("Enter Movie Name..!");
                return false;
            }
            else if(minfo=="")
            {
                alert("Enter Movie Description..!");
                return false;
                
            }
            else if(mname==""&& minfo=="")
            {
                alert("Enter All Details..!");
                return false;
            }
                
            return true;
        }
        </script>
  </head>
  <body class="bg-success">
     
      <%@include file="../design/Anav.jsp" %>
      <%@page import="java.io.*;" %>
      
<div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">Adding New M<small>OViE</small></h3>
	</div>
	
        <div class="panel-body">
            <form role="form" name="addmovie" onsubmit="return chk()" method="post">
            
                <div class="form-group">
                    <label class="label label-default">Movie Name</label>
                    <input type="text" name="mname" id="mname" class="form-control input-sm" placeholder="Movie Name" />
                </div>
                
                
                <div class="form-group">
                    <label class="label label-default">Movie Decription</label>
                    <textarea name="minfo" id="minfo" class="form-control input-sm" placeholder="Movie Decription"></textarea>
                </div>

               
			  
              <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                        <label class="label label-default">Movie Status</label>
                    <select class="form-control input-sm" name="mstatus">
                            <option value="Now Showing">Now Showing</option>
                            <option value="Upcoming">Upcoming</option>
                   </select>
                    </div>
                </div>
              </div>
                
                
              <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                    <label class="label label-default">Movie Category</label>
                    <select class="form-control input-sm" name="mcat">
                            <option value="Bollywood">Bollywood</option>
                            <option value="Gujarati">Gujarati</option>
                            <option value="Hollywood">Hollywood</option>
                            <option value="Hollywood(Hindi)">Hollywood(Hindi)</option>
                   </select>
                    </div>
                </div>
              </div>
                            
                            
              
                <input type="submit" value="Add MOViE" class="btn btn-info btn-block" name="madd" >
         </form>
			    	</div>
	    		</div>
    		</div>
    	</div>

      <%
          Connection con;
          Statement st;
          ResultSet rs;
          if(request.getParameter("madd")!=null)
          {
              
              String mname=request.getParameter("mname");
              String minfo=request.getParameter("minfo");
              String mstatus=request.getParameter("mstatus");
              String mcat=request.getParameter("mcat");
              String mposter= request.getParameter("mposter");
              try
              {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                            boolean an= st.execute("INSERT INTO `movie`(`mname`, `minfo`, `mstatus`, `mcat`, `mposter`, `other`) VALUES ('"+mname+"','"+minfo+"','"+mstatus+"','"+mcat+"','"+mposter+"','nthing')");
                            if(!an)
                            {
                              out.print("<script>alert('Movie Added..!')</script>");
                            }
                            else
                            {
                                out.print("<script>alert('Sorry Movie Not Added..!')</script>");
                            }
                    
              }
              catch(Exception c)
              {
                  out.print(c);              
              }
          }
          
      %>
       
                 
    
      
     
             <%@include  file="../design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

