<div class="navbar navbar-default navbar-custom " style="background-color:white">
  <div class="container" >
      <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span>
      </button>
          <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-film"></span>Movie <small>Ticket</small></a>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
              <li><a href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
              <li><a href="nowshowing.jsp">Now Showing</a></li>
              <li><a href="upcoming.jsp">Upcoming here</a></li>
              <li><a href="feedback.jsp">Feedback</a></li>
              <li><a href="about.jsp">About Us</a></li>
        <li class="divider"></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li>
              <a href="#" class=" dropdown-toggle"  data-toggle="dropdown">                  <span class="glyphicon glyphicon-user">   </span>      <!--<img src="images/Anshuman.jpg" height="20px" width="30px" style="border-radius:3em" > -->                       </a>
               <ul class="dropdown-menu">
               
                    <%
                     if(session.getAttribute("user1")!=null)
                     {
                         %>
                <li><a href="userpay.jsp">Check Payment Details</a></li>
                <li><a href="user.jsp">Change Account Info</a></li><%
                     }
                     else
                     {
                         %><li><a >Please Login</a></li><%
                     }
                %>
                <li role="separator" class="divider"></li>
                
                <%
                     if(session.getAttribute("user1")!=null)
                     {
                          %><li><a href="logout.jsp">Logout</a></li><%
                     }
                     else
                     {
                          %><li><a href="login.jsp">Login</a></li><%
                     }
                %>  
                   
               </ul>
          </li>
      </ul>
    </div>
  </div>
</div>
<!---
<nav class="navbar navbar-default">
  <div class="container-fluid">
    
    <div class="navbar-header">
        <a class="navbar-brand" href="index.jsp">M<small>ovie</small> T<small>icket</small> B<small>ooking</small></a>
    </div>

     
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
              <li class="active"><a href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
              <li><a href="nowshowing.jsp">Now Showing</a></li>
              <li><a href="upcoming.jsp">Upcoming here</a></li>
              <li><a href="feedback.jsp">Feedback</a></li>
              <li><a href="about.jsp">About Us</a></li>
        </ul>
    
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                 Settings <span class="caret"></span></a>
              <ul class="dropdown-menu">
                   <%
                     if(session.getAttribute("user1")!=null)
                     {
                         %>
                <li><a href="userpay.jsp">Check Payment Details</a></li>
                <li><a href="user.jsp">Change Account Info</a></li><%
                     }
                     else
                     {
                         %><li><a >Please Login</a></li><%
                     }
                %>
                <li role="separator" class="divider"></li>
                
                <%
                     if(session.getAttribute("user1")!=null)
                     {
                          %><li><a href="logout.jsp">Logout</a></li><%
                     }
                     else
                     {
                          %><li><a href="login.jsp">Login</a></li><%
                     }
                %>
              </ul>
            </li>
        </ul>
        
    </div>
  </div>
</nav>
--->