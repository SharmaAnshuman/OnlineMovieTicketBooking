<%-- 
    Document   : getway
    Created on : Jan 5, 2016, 8:15:07 PM
    Author     : ashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
            <%
                
                String s = request.getParameter("sid");
                if(s.equals("Net Banking"))
                {
                    %>
    <td>
            Through Net Banking
    </td><br><hr>
                  <td>
                      <input type="text" name="usernmBank" placeholder="Username" >
                      <input type="password" name="usernmBank" placeholder="Password">
                      <br><hr>
                    </td>
 <td>
                       <%
                    if(session.getAttribute("user1")!=null)
                    {
                       %>
                       <input class="btn btn-default" type="text" name="user" placeholder="<%=session.getAttribute("user1") %>"  value="<%=session.getAttribute("user1") %>" readonly  ><br><hr>
                       <%
                    }
                    else
                    {
                       %>
                       <input class="btn btn-default" type="text" name="user" placeholder="Ticket holder name" required="true"><small>please login to show booking history</small><br><hr>
                       <%
                    }
                        %>
                    </td>

                </tr>
                    <%
                }
                
                if(s.equals("Credit Card"))
                {
                       %>
                        <td>
                        Through Credit Card
                        </td><br><hr>
                   <td>
                       <%
                    if(session.getAttribute("user1")!=null)
                    {
                       %>
                       <label class="label label-danger">Ticket Holder: </label><input class="input-sm btn btn-default" type="text" name="user" placeholder="<%=session.getAttribute("user1") %>"  value="<%=session.getAttribute("user1") %>" readonly ><br><hr>
                       <%
                    }
                    else
                    {
                       %>
                       <input class="btn btn-default" type="text" name="user" placeholder="Ticket holder name" required="true" ><small>please login to show booking history</small><br><hr>
                       <%
                    }
                        %>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>Card Number</td>
                                <td><input class="input-sm" type="number" name="cardNumber" ></td>
                            </tr>
                            <tr>
                                <td>Name on Card</td>
                                <td><input  class="input-sm"  type="text" name="cardName" ></td>
                            </tr>
                            <tr>
                                <td>Expiry Date </td>
                                <td><input  class="input-sm" type="number"  name="cardMM" placeholder="MM"/><input type="number" max="4" name="cardYY" placeholder="YYYY"/></br></br></td>
                            </tr>
                            <tr>
                                <td>CVV</td>
                                <td><input class="input-sm"  type="number"  name="cardMM" placeholder="MM"/></td>
                        </table>
                        <hr>
                </td>
            </tr>
                    <%
                }
                
                if(s.equals("Debit Card"))
                {
                       %>
                        <td>
                            Through Debit Card
                        </td><br><hr>
                        
 <td>
                       <%
                    if(session.getAttribute("user1")!=null)
                    {
                       %>
                       <input class="btn btn-default" type="text" name="user" placeholder="<%=session.getAttribute("user1") %>" value="<%=session.getAttribute("user1") %>" readonly><br><hr>
                       <%
                    }
                    else
                    {
                       %>
                       <input class="btn btn-default" type="text" name="user" placeholder="Ticket holder name" required="true"><small>please login to show booking history</small><br><hr>
                       <%
                    }
                        %>
                    </td>
                  
                    <td>
                        <table>
                            <tr>
                                <td>Card Number</td>
                                <td><input class="input-sm" type="number" name="cardNumber" ></td>
                            </tr>
                            <tr>
                                <td>Name on Card</td>
                                <td><input  class="input-sm"  type="text" name="cardName" ></td>
                            </tr>
                            <tr>
                                <td>Expiry Date </td>
                                <td><input  class="input-sm" type="number"  name="cardMM" placeholder="MM"/><input type="number" max="4" name="cardYY" placeholder="YYYY"/></br></br></td>
                            </tr>
                            <tr>
                                <td>CVV</td>
                                <td><input class="input-sm"  type="number" name="cardMM" placeholder="MM"/></td>
                        </table>
                        <hr>
                </td>
            </tr>
                    <%
                }
                
            
                
            %>
            
    </body>
</html>
