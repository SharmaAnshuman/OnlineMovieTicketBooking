<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.io.*;" %>
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
            var sh = document.forms["movieshowtime"]["sth"].value;
            var sm = document.forms["movieshowtime"]["stm"].value;
            var eh = document.forms["movieshowtime"]["eth"].value;
            var em = document.forms["movieshowtime"]["etm"].value;
            var d =  document.forms["movieshowtime"]["day"].value;
            var m =  document.forms["movieshowtime"]["month"].value;
            var y =  document.forms["movieshowtime"]["year"].value;
            
            if(sh=="HR")
            {
                alert("Select Movie Starting Hour..!");
                return false;
            }
            else if(sm=="MIN")
            {
                alert("Select Movie Starting Minitus..!");
                return false;
                
            }
            else if(eh=="HR")
            {
                alert("Select Movie Ending Hour..!");
                return false;
            }
            else if(em=="MIN")
            {
                alert("Select Movie Endting Minitus..!");
                return false;
                
            }
            else if(d==""||m==""||y=="")
            {
                
                alert("Enter Movie Date..!");
                return false;
                
            }
                
            return true;
        }
        </script>
  </head>
  
<body class="bg-success">
     
      <%@include file="../design/Anav.jsp" %>
      
      
    <div class="row">
                    <div class="col-lg-offset-1 col-xs-12 col-sm-8 col-md-4 ">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Delete M<small>OViE</small></h3>
                            </div>

                            <div class="panel-body">
                            <form role="form" method="post">
                               <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-12">
                                    <div class="form-group">
                                        <label class="label label-default">Select Movie Name</label>
                                            <select class="form-control input-sm" name="mid">
                                               <%
                                                Connection con;
                                                Statement st;
                                                ResultSet rs;
                                                String mymid;
                                                //this for loading all movies
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
                                <input type="submit" value="Delete MOViE" class="btn btn-danger btn-block" name="mdelete" >
                                <input type="submit" value="Change MOViE Information" class="btn btn-info btn-block" name="mchng" >
                                   <%
                                                
                            //this is delete a movie
                          if(request.getParameter("mdelete")!=null)
                          {

                              String mid=request.getParameter("mid");
                              try
                              {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                            boolean an= st.execute("DELETE FROM `movie` WHERE mid='"+mid+"'");
                                            if(!an)
                                            {
                                              out.print("<script>alert('Movie Deleted..!')</script>");
                                              response.sendRedirect("deletechng.jsp");
                                            }
                                            else
                                            {
                                                out.print("<script>alert('Sorry Movie Not Deleted..!')</script>");
                                            }

                              }
                              catch(Exception c)
                              {
                                  out.print(c);              
                              }
                          }

                      %>
                            </form>
                            </div>
                        </div>
                    </div>
    
            <%
                if(request.getParameter("mchng")!=null)
                {
            %>
        <div class="col-xs-12 col-sm-8 col-md-6 ">
        <div class="panel panel-default">
        
            <div class="panel-heading">
                <h3 class="panel-title">Change M<small>OViE</small> Information</h3>
            </div>
	
                <div class="panel-body">
                     <script type="text/javascript">
                    
                    function chk()
                    {
                        var nm = document.forms["chng"]["moviename"].value;
                        var info = document.forms["chng"]["movieinfo"].value;
                        if(nm=="" && info=="")
                        {
                            alert("Enter all information..!");
                            return false;
                           
                        }
                        else if(nm=="")
                        {
                            
                            alert("Enter Movie Name..!");
                            return false;
                            
                        }
                        else if(info=="")
                        {
                            alert("Enter Movie Description..!");
                            return false;
                            
                            
                        }
                        else
                        {
                            return true;
                        }
                            
                    }
                                                    
                                                    
                    </script>
                    <form role="form" onsubmit="return  chk()" name="chng" method="post">
                           <div class="row">        
                                <div class="form-group">
                                    
                                    <%!
                                        public String x;
                                    %>
                                    
                                    <%
                                        if(request.getParameter("mid")!=null)
                                        {
                                        String m=request.getParameter("mid");
                                        
                                            try
                                            {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                                st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                                rs = st.executeQuery("select * from movie where mid="+m+"");

                                                x=m;

                                                int size=0;
                                                rs.next();
                                                    //out.print("<option value='"+rs.getString(2)+"'>"+rs.getString(1)+"</option>");
                                                    //out.print("<script> alert("+rs.getString(2)+"(2) "+rs.getString(1)+"); </script>");
                                                    %>
                                    <div  class="col-md-12">
                                            <div class="thumbnail bg-warning">
                                                <p align="center"><img src="../movieposter/<%= rs.getString("mposter") %>" class="img-thumbnail" width="210px" alt="Picture"></br><a href="addmovieimg.jsp" role="button" class="btn btn-default">Change Movie Poster </a> </p>
                                                <table class="table">
                                                    <tr>  
                                                        <td><p class="label label-default">Movie Name</p>
                                                            <h4 ><%= rs.getString("mname") %></br><input type="text"  name="Umname" id="moviename" class="form-control input-sm" placeholder="Enter New Name" /></h4></td>
                                                        
                                                    </tr>
                                                    <tr>  
                                                        <td>
                                                            <p class="label label-default"> Movie Category</p></br><h4><%= rs.getString("mcat") %></br>
                                                            <div class="row">
                                                                <div class="col-xs-6 col-sm-6 col-md-12">
                                                                    <div class="form-group">

                                                                    <select class="form-control input-sm" name="Umcat">
                                                                            <option value="Bollywood">Bollywood</option>
                                                                            <option value="Gujarati">Gujarati</option>
                                                                            <option value="Hollywood">Hollywood</option>
                                                                            <option value="Hollywood(Hindi)">Hollywood(Hindi)</option>
                                                                   </select>
                                                                    </div>
                                                                </div>
                                                            </div></h4>
                                                        </td>
                                                    </tr>


                                                    <tr>
                                                        <td>
                                                            <p class="label label-default"> Movie Status</p></br><h4><%= rs.getString("mstatus") %></br>
                                                            <div class="row">
                                                                <div class="col-xs-6 col-sm-6 col-md-12">
                                                                <div class="form-group">
                                                                    <select class="form-control input-sm" name="Umstatus">
                                                                        <option value="Now Showing">Now Showing</option>
                                                                        <option value="Upcoming">Upcoming</option>
                                                                    </select>
                                                                </div>
                                                                </div>
                                                            </div></h4>
                                                        </td>
                                                    </tr>
                                                </table>

                                                <table class="table">
                                                    <tr>
                                                        <p class="label label-default">Movie Description</p>
                                                        <td>
                                                            <div class="text-justify"> 
                                                                <samll><%= rs.getString("minfo") %></small></br>
                                                                <div class="form-group">
                                                                    <textarea name="Uminfo" id="movieinfo" class="form-control input-sm" placeholder="Enter New Decription"></textarea>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>

                                                <%

                                                
                                            }
                                            catch(Exception c)
                                            {
                                                out.print(c);              
                                            }
                                        
                                                %>           
                                                <input type="submit" value="Save MOViE Changes" class="btn btn-info btn-block" name="mupdate" >
                                                
                                            </div>
                                        </div>
                                </div>
                            </div>
                    </form>
                </div>
        </div>     
        </div>
                                               
        <%              }
                }
                if(request.getParameter("mupdate")!=null)
                {
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                        st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                        String umname,uminfo,umstatu,umcat;
                        umname = request.getParameter("Umname");
                        uminfo = request.getParameter("Uminfo");
                        umstatu = request.getParameter("Umstatus");
                        umcat = request.getParameter("Umcat");
                       
                            int i=st.executeUpdate("UPDATE `movie` SET `mname`='"+umname+"',`minfo`='"+uminfo+"',`mstatus`='"+umstatu+"',`mcat`='"+umcat+"' WHERE mid="+x+"");
                            if(i!=0)
                            {
                                
                                response.sendRedirect("deletechng.jsp?tokenDone=ok");
                            }
                            else
                            {
                                out.print("<script>alert('Movie Information Not Changed..!');</script>");
                            }
                       
                    }
                    catch(Exception xx)
                    {
                        out.print(xx);
                    }
                    
                }
                
                
                if(request.getParameter("tokenDone")!=null)
                {
                        out.print("<script>alert('Movie information Added..!');</script>");
                        response.sendRedirect("deletechng.jsp");
                    
                }
                
    %>
    
    
    </div> 
    
    


   
       
                 
    
      
     
             <%@include  file="../design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

