
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/bootstrap-datetimepicker.css" rel="stylesheet">
    
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
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">Set M<small>OViE</small> ShowTime</h3>
	</div>
	
        <div class="panel-body">
            <form role="form" name="movieshowtime" onsubmit="return chk()">
            
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
                        <label class="label label-default">Starting Time</label>
                        
                    </div>
                </div>
               
                   
                   
               </div>
                   
                   
                   
                   
               <div class="row">
                   <div class="col-xs-12 col-sm-12 col-md-14">
                    <div class="form-group">
                        <label class="label label-default">Ending Time</label>
                        
                        
                        <input type="time" name="et" class="btn btn-link" placeholder="End Time">
                        
                    </div>
                       <div class="row">
                           <div class="col-md-12">
                               <label class="label label-default">Date</label>
                               <div class="form-group">
                               <div class="container">
                                  <div class="hero-unit">
                                      <input  type="text" placeholder="click to show calendar" class="input input-sm"  id="example1">
                                  </div>
                              </div>
                               </div>
                           </div>
                       </div> 
                       <input type="submit" value="Set MOViE Time's" class="btn btn-info btn-block" name="addtime" >
                </div>
                   
                  
			 
            
            <%
                                    
                                    String mid,sth,stm,eth,etm;
                                    mid=request.getParameter("mid");
                                    sth=request.getParameter("sth");
                                    stm=request.getParameter("stm");
                                    String starttime = sth+":"+stm;
                                    eth=request.getParameter("eth");
                                    etm=request.getParameter("etm");
                                    String endtime = eth+":"+etm;
                                    String sdate,day,month,year;
                                    day=request.getParameter("day");
                                    month=request.getParameter("month");
                                    year=request.getParameter("year");
                                    sdate=day+"-"+month+"-"+year;                                    
                                    
                                    String btn=request.getParameter("addtime");
                                    if(btn!=null)
                                    {
                                        try
                                        {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                            boolean an= st.execute("INSERT INTO `showtime`( `mid`, `st`, `et`,`sdate`) VALUES ('"+mid+"','"+starttime+"','"+endtime+"','"+sdate+"')");
                                            
                                            
                                            if(!an)
                                            {
                                                    ResultSet rss =  st.executeQuery("select sid from showtime where mid='"+mid+"' and st='"+starttime+"' and et='"+endtime+"' and sdate='"+sdate+"'");
                                                    rss.next();
                                                    String s_id=rss.getString("sid");
                                                    for(int i=1;i<31;i++)
                                                    {
                                                       st.execute("INSERT INTO `seats`(`m_id`, `show_id`, `sname`) VALUES ('"+mid+"','"+s_id+"','A"+i+"')");
                                                    } 
                                                    
                                              out.print("<script>alert('Movie Time Added..!')</script>");
                                              btn=null;


                                            }
                                            else
                                            {
                                                out.print("<script>alert('Sorry Movie Time Not Added..!')</script>");
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
    	</div>
       
                    
       
      
    
      
     
            <%@include  file="../design/Afooter.jsp" %> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datetimepicker.min.js"></script>
  </body>
</html>
 <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#example1').datepicker({
                    format: "dd/mm/yyyy"
                });  
            
            });
        </script>
