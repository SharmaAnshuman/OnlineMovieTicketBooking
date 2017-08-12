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
            function mydata(sid1,mid1)
            {
                $.post( "seats.jsp", { sid: sid1,mid:mid1 }, function( data ) {
                    document.getElementById("resu").innerHTML=data;
});
            }
        </script>

  </head>
  <body>
      <form method="get" action="payment.jsp">
          <%@include file="design/nav.jsp" %>
       
      <%
         
          if(request.getParameter("mid")!=null)
          {
         
                 
           Connection con;
           Statement st;
           ResultSet rs;
          try
          {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                rs=st.executeQuery("select * from movie where mid="+request.getParameter("mid")+"");
                rs.next();
          %>
      <div class="col-xs-12 col-sm-8 col-md-4 col-sm-8 col-md-4">          
          <table class="table">
            <tr style="text-align: justify;width: 50px">
                <td align="center"><img src="movieposter/<%=rs.getString("mposter") %>" class="img-responsive" height="230" width="200" /></td>
            </tr>
            <tr style="text-align: justify;width: 50px">
                <td><lable class="label label-default">Movie Name</lable><small>    <%=rs.getString("mname") %></small></td>
            </tr>
            <tr style="text-align: justify;width: 50px">
                <td><lable class="label label-default">Movie Category</lable><small style="text-align: justify;width: 50px">    <%=rs.getString("mcat") %></small></td>
            </tr>
            <tr style="text-align: justify;width: 50px">
                <td><lable class="label label-default">Movie Decsription</lable><small style="text-align: justify;width: 50px">    <%=rs.getString("minfo") %></small></td>
            </tr>
 
          </table>
      </div>
             <%
                }
          catch(Exception x)
          {
          }
          
                
                %>
        
            
      <div class="col-xs-12 col-sm-9 col-md-4 col-sm-8 col-md-4">
          <table class="table">
              <th>
                  <strong>   S<small>how</small> T<small>ime Selection (24hour format)</small></strong> 
              </th>
               <tr>
                   <%
          try
          {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                rs=st.executeQuery("select * from showtime where mid="+request.getParameter("mid")+"");
                int o=0;
                while(rs.next())
                {
          %>     
                   <td class="btn btn-sm bg-info">
                       <input type="radio" value="<%= rs.getString("sid") %>" name="showchk" onclick="mydata(<%=rs.getString("sid")%>,<%=request.getParameter("mid") %>)" class="btn btn-default ">
                      <div align="center" style="width:81px">
                          <table>
                              
                              <tr>
                                  <td><h5><span class='label label-primary'><%=rs.getString("sdate") %></span></h5></td>
                              </tr>
                              <tr>
                                  <td><%="<h5><span class='label label-primary'>"+rs.getString("st")+" "%>TO<%=" "+rs.getString("et")+"</span></h5>"%></td>
                              </tr>
                          </table>
                      </div>
                   </td>
            <%
                    o++;
                }
                
                if(o==0)
                {
                    out.print("<td><lable class='label label-danger'>SHOW TIME NOT FOUND</lable></td>");
                }
          }
          catch(Exception xx)
          {
              out.print(xx);
          }

            %>       
              </tr>
              <th>
                  <strong>   S<small>eat</small> S<small>election</small></strong> 
              </th>
               <tr>
                  <td>
                      <div class="bg-info" align="center" id="resu">
                                  
                        

        
                      </div>
                  </td>
              </tr>

              <tr>
                  <td>
                      <div class="bg-primary">
                          
                          <div class="alert-danger" role="alert">
                            <p class="active"> Per Seat Rs:<strong> 230* </strong></p>
                          </div>
                          
                      </div>
                  </td>
              </tr>
              <tr>
                  <td>
                      
               
    <input type="submit" name="pay" role="button" class="btn btn-success" value="Paynow & Book">
                  </td>
              </tr>
          </table>
            <%
           
                        if(request.getParameter("seats")!=null)
                        {
                            %>
                            
                               <p align="center" role="button" class="label label-success ">Please Select Any Seat..!</p>
                            
                             <%
                        }
                        if(request.getParameter("showtime")!=null)
                        {
                            %>
                            
                    <p align="center" role="button" class="label label-success ">Please Select Any Showtime..!</p>
                            
                                          <%
                        }
                        if(request.getParameter("both")!=null)
                        {
                    %>
                    <p align="center" role="button" class="label label-success ">Please Select Any Showtime And Seats..!</p>                      
                    <%        
                        }
               
                 }
          else
          {
              
                           out.print("<h1 class='lable lable-danger'>oops error..!</h1>");
                  %><button type="button" role="button" class="btn btn-success" name="back" onclick="history.back()">back</button><%
          }
          %>    
         
          
      </div>
         
  </form>
           
      
 <div style="clear: both"></div>
    <%@include  file="/design/footer.jsp" %>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
