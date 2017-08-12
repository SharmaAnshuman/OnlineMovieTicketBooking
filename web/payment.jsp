<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery-1.10.2.js" type="text/javascript"></script>
        <script type="text/javascript">
            function mydata(strUser)
            {
              
                $.post( "getway.jsp", { sid: strUser}, function( data ) 
                {
                    document.getElementById("resu").innerHTML=data;
                });
            }
            
            function chk()
            {
                 var mname = document.forms["pay"]["paymethod"].value;
                 
                     
                     
                 if(mname=="")
                 {
                     alert("Select Paymethod Options..");
                     return false;
                 }
                
                /*if(muser=="")
                {
                   alert("Enter Ticket Holder Name");
                     return false;
                }*/
                 return true;
            }
            
            
        </script>
  </head>
  <body>
  
      <%@include file="design/nav.jsp" %>
      <form action="done.jsp" onsubmit="return chk()" name="pay">
                      <%
           Connection con;
           Statement st;
           ResultSet rs,rss;
            String nmnm;
              int totseat,pay;

           if(request.getParameter("showchk")!=null)
           {
                    String showchk=request.getParameter("showchk");
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                    st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                    //out.print("select mname from movie where mid=(select mid from showtime where sid="+showchk+")");
                    rss=st.executeQuery("select mname from movie where mid=(select mid from showtime where sid="+showchk+")");
                    rss.next();
                    nmnm=rss.getString("mname");
                    session.setAttribute("moviename", nmnm);
                   rss.close();
                    
                                           %>
                        <div class="panel col-xs-push-2 col-md-6">
                            <label class="label label-danger">Confirmation of Booking</label>
                            <table class="table" border="3">
                                <tr class="alert-success">
                                    <td>
                                        <label class='label label-info'>Movie Name:</label></br><%=nmnm %><hr>
                                        
                                        <%
               try
               {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                    st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                    rs=st.executeQuery("select * from showtime where sid="+showchk+"");
                    rs.next();
                       out.println("<label class='label label-info'>Show Time:</label></br>Date: "+rs.getString("sdate")+"</br>Time:"+rs.getString("st")+" TO "+rs.getString("et")+"<hr>");
                       session.setAttribute("time",rs.getString("st")+" TO "+rs.getString("et") );
                       session.setAttribute("date",rs.getString("sdate") );
                       session.setAttribute("sid", showchk);
                     String seats[] = request.getParameterValues("seats");
                     
                        out.print("<label class='label label-info'>All Seats Are: </label></br>");
                         totseat=seats.length;
                        pay=(230*totseat);
                         session.setAttribute("totalseat", totseat);
                         session.setAttribute("pay", pay);
                         session.setAttribute("seats",seats);
                        for(int i=0;i<seats.length;i++)
                        {
                            if(seats[i]!=null)
                            {
                                out.print(seats[i]+"  ");
                                
                                

                            }
                        }
                        out.print("<hr><label class='label label-info'>You are Paying</label></br> ("+totseat+"*Rs.230)</br><h2><label class='label label-danger'>Rs."+pay+"</label></h2>");
                        
                        %>
                        
                        </br>
                        </td>
                                    <td>
                        
                        <select class="btn lable label-danger col-md-6"  name="paymethod">
                            <option onclick="mydata('')" value="">Select Payment Option</option>
                            <option onclick="mydata('Credit Card')" value="Credit Card">Credit Card</option>
                            <option onclick="mydata('Debit Card')" value="Debit Card">Debit Card</option>
                                  <option onclick="mydata('Net Banking')" value="Net Banking">Net Banking</option>
                        </select>
                                        </br></br></br><hr>   
                                        <div id="resu">

                                        </div>
                                                                
                                        <input type="submit" class="btn btn-success" name="paydone" value="Confim & Make Payment" >
                                    </td>
                                </tr>
                            </table>
                            
                        </div>
                        <%
                       
                       
               }
               catch(Exception x)
               {
                   
out.print("<center><h1 class='lable lable-danger'>Please Go Back And Select Seats..!</h1>");
                  %><button type="button" role="button" class="btn btn-success" name="back" onclick="history.back()">back</button></center><%
               }
                   
           
             }
             else
             {
                 
                                     out.print("<center><h1 class='lable lable-danger'>Please Go Back And Select Show Time..!</h1>");
                  %><button type="button" role="button" class="btn btn-success" name="back" onclick="history.back()">back</button></center><%
                                 
             }
           

          %>
                 
  </form>
 <div style="clear: both"></div>
    <%@include  file="design/footer.jsp" %>
      
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

