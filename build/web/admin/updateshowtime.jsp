<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MTB</title>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body class="">
     
      <%@include file="../design/Anav.jsp" %>
  
           <%
                      Connection con;
                      Statement st;
                      ResultSet rs;
                       con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/mtb","root","");
                      st= con.createStatement();
                      if(request.getParameter("mid")!=null)
                      {
                         %>
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-8 col-md-4">
            <table class="table">
              <th>
                  <strong>   S<small>how</small> T<small>ime Delete (24hour format)</small></strong> 
              </th>
              <%
                          
                     
                      String mid = request.getParameter("mid");
                      rs = st.executeQuery("SELECT * FROM `movie`,`showtime` WHERE movie.mid="+mid+" and showtime.mid="+mid+" ");
                      int tmp=0;
                      while(rs.next())
                      {
                          
              %>
              <tr>
                   <td>
                       <h4><lable class="label label-danger"><%= rs.getString("sdate") %></lable>&nbsp;<lable class="label label-danger"><%= rs.getString("st") %> TO <%= rs.getString("et") %></lable></h4>
                   </td>
              </tr>
              <tr>
                   <td><a href="updateshowtime.jsp?mid=<%= mid%>&delete=<%= rs.getString("sid") %>" role="button" class="btn btn-success">Delete ShowTime</a></td>
               </tr>
               <%       tmp++;
                      }
                      if(tmp==0)
                      {
                          %>
                          <tr>
                              <td>
                          <label class="btn btn-danger">Show Time Not Found</label><a href="updateshowtime.jsp" role="button" class="btn btn-success">Go Back</a>
                              </td>
                          </tr>
                            <%
                      }
                      
                         %>
                         
            </table>
        </div>
                         <% 
                      }
                      else
                      {
                      %>
      <div class="col-md-4">
          <form method="get">
          <table class="table">
              <tr>
                  
                  <td>
              <select class="btn bg-success" name="mid">
                  <%
                      try
                      {
                      con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/mtb","root","");
                      st= con.createStatement();
                      rs = st.executeQuery("select * from movie");
                      while(rs.next())
                      {
                      %>
                      <option value="<%= rs.getString("mid") %>"><%= rs.getString("mname") %></option>
                      <%
                      }
                      }catch(Exception xx)
                      {
                          out.println("Error..!");
                      }
                      
                      %>
              </select>
                  </td>
              </tr>
              <tr>
                  <td><input type="submit" value="Show All ShowTime"  role="button" class="btn btn-success"/></td>
              </tr>
          </table>
      </form>
      </div>
    <%
                      }
                      
                      if(request.getParameter("delete")!=null)
                      {
                          String sid= request.getParameter("delete");
                          int i=st.executeUpdate("delete from showtime where sid="+sid+"");
                          st.executeUpdate("delete from seats where show_id="+sid+"");
                          if(i!=0)
                          {
                              response.sendRedirect("updateshowtime.jsp");
                          }
                      }
    %>
                      
     
             <%@include  file="../design/Afooter.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

