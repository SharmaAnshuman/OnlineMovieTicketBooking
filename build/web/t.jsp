<%-- 
    Document   : done.jsp
    Created on : Dec 31, 2015, 12:59:02 AM
    Author     : ashu
--%>

<%@page import="java.text.SimpleDateFormat"%>
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
    
  </head>
  <body>
      
<%
    String sid,mnm,datee,timee,rs,user,paym;
    sid=session.getAttribute("sid").toString();
    mnm=session.getAttribute("moviename").toString();
    datee=session.getAttribute("date").toString();
    timee=session.getAttribute("time").toString();
    rs=session.getAttribute("pay").toString();
    user=request.getParameter("user").toString();
    paym=request.getParameter("paymethod").toString();

   
   String[] st = (String[])session.getAttribute("seats");
   String stt="";
   for(int i=0;i<st.length;i++)
   {
     stt += st[i].toString()+" ";
   }
   
   //out.print(stt);
           
                Connection con;
                Statement sta;
                ResultSet rss;
                
                try
               {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                    sta = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                          
                            java.text.DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                                   java.util.Date date = new java.util.Date ();
                                  String d = dateFormat.format (date);
                                 
                                  ResultSet chkrs= sta.executeQuery("select * from booking where total_seats like '"+stt+"' ");
                                  int tok=0;
                                  if(chkrs.next())
                                  {
                                            if(chkrs.getString(4).contains(stt))
                                            {
                                                %>
                                                  
      <div  style="">
          <h3>
              <table align="center" >
          <tr>
              <th colspan="2">          <h1><span class="glyphicon glyphicon-film"></span>              Movie <small>Ticket</small></h1>
          </tr>
             <tr>
                 <td ><small style="font-size: 10px">Booking ID: <%= chkrs.getInt(1) %></small></td>
                 <td ><small><h5  style="font-size: 10px;margin-left:180px;margin-bottom: 0px"><% out.print(d);%></h5></small></td>
          </tr>
          <tr>
              <td colspan="2"><hr/></td>
          </tr>
          <tr>
              <td  align="center"><small>Ticket Holder:</small></td>
              <td  class="text-center"  align="right"><h4><%= chkrs.getString("username") %></h4></td>
          </tr>
          <tr>
              <td  align="center"><small>Movie Name:</small></td>
              <td  class="text-center" align="center"><h4><%= chkrs.getString("mname") %></h4></td>
          </tr>
          <tr>
              <td  align="center"><span class=" glyphicon glyphicon-dashboard"></span> <small>Show Time:</small></td>
              <td  class="text-center" align="center"><h4><%= timee.replace("TO", "-")+" " %> <small style="font-size: 10px">(24 format)</small></h4></td>
              
          </tr>
          <tr>
              <td  align="center"><small>Total Seat:</small></td>
              <td  class="text-center" align="center"><h4><%= st.length %></h4></td>
          </tr>
          <tr>
              <td  align="center"><small>Amount:</small></td>
              <td  class="text-center" align="center"><h4>Rs.<%= chkrs.getString("amount") %></h4></td>
          </tr>
          <tr>
              <td colspan="2"><hr/></td>
          </tr>
          
          <tr>
              <td colspan="2" align="right"><h5><button onclick="window.print();" ><span class="glyphicon glyphicon-list-alt"></span> <small>Print Ticket</small></button></h5></td>
          </tr>
      </table>
          </h3>
      </div>  <%
                                            }
                                            tok=1;
                                  }
                                  
                                  if(tok==0)
                                  {
                                                boolean c= sta.execute("INSERT INTO `booking`(`show_id`, `mname`, `total_seats`, `payment_method`, `amount`, `username`,`bdate`) VALUES ('"+sid+"','"+mnm+"','"+stt+"','"+paym+"','"+rs+"','"+user+"','"+d+"')");
                                                //out.print("INSERT INTO `booking`(`show_id`, `mname`, `total_seats`, `payment_method`, `amount`, `username`) VALUES ('"+sid+"','"+mnm+"','"+stt+"','"+paym+"','"+rs+"','"+user+"')");
                                                for(int i=0;i<st.length;i++)
                                                {

                                                    sta.executeUpdate("update seats set sstatus='book' where show_id='"+sid+"' and id="+st[i]+" ");
                                       //             out.print("</br>update seats set sstatus='book' where show_id='"+sid+"' and id="+st[i]+" </br>");
                                                }

                                                ResultSet xxx= sta.executeQuery("select * from booking where username='"+user+"' and show_id='"+sid+"'");
                                                xxx.next();
                                     %>
       <div  style="">
          <h3>
              <table align="center" >
          <tr>
              <th colspan="2">          <h1><span class="glyphicon glyphicon-film"></span>              Movie <small>Ticket</small></h1>
          </tr>
             <tr>
                 <td ><small style="font-size: 10px">Booking ID: <%= xxx.getInt(1) %></small></td>
                 <td ><small><h5  style="font-size: 10px;margin-left:180px;margin-bottom: 0px"><% out.print(d);%></h5></small></td>
          </tr>
          <tr>
              <td colspan="2"><hr/></td>
          </tr>
          <tr>
              <td  align="center"><small>Ticket Holder:</small></td>
              <td  class="text-center"  align="right"><h4><%= xxx.getString("username") %></h4></td>
          </tr>
          <tr>
              <td  align="center"><small>Movie Name:</small></td>
              <td  class="text-center" align="center"><h4><%= xxx.getString("mname") %></h4></td>
          </tr>
          <tr>
              <td  align="center"><small>Show Time:</small></td>
              <td  class="text-center" align="center"><h4><%= xxx.getString("bdate") %><small style="font-size: 10px">(24 format)</small></h4></td>
              
          </tr>
          <tr>
              <td  align="center"><small>Total Seat:</small></td>
              <td  class="text-center" align="center"><h4><%= st.length %></h4></td>
          </tr>
          <tr>
              <td  align="center"><small>Amount:</small></td>
              <td  class="text-center" align="center"><h4>Rs.<%= xxx.getString("amount") %></h4></td>
          </tr>
          <tr>
              <td colspan="2"><hr/></td>
          </tr>
          
          <tr>
              <td colspan="2" align="right"><h5><button onclick="window.print();" ><span class="glyphicon glyphicon-list-alt"></span> <small>Print Ticket</small></button></h5></td>
          </tr>
      </table>
          </h3>
      </div>     <%

                                                  

                                  }
               }
                catch(Exception xx)
                {
                    out.print("error"+xx.getMessage());
                }
                                                  
    
                                        %>
      
      
  
      <!--<button onclick="window.print();" ><span class="glyphicon glyphicon-list-alt"></span> <small>Print Ticket</small></button>-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

<!--
              </th>
              <th style="margin-right: 20px">   <div align="right"><%// java.text.DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");                                   java.util.Date date = new java.util.Date ();                                  String d = dateFormat.format (date);                                  out.print(d);%></div></th>
-->