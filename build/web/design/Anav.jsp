<nav class="navbar navbar-default">
  <div class="container-fluid">
    
    <div class="navbar-header">
        <a class="navbar-brand">M<small>ovie</small> T<small>icket</small> B<small>ooking</small></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
              <li><a href="admin.jsp">Admin Panel<span class="sr-only">(current)</span></a></li>
              <li><a class="label label-info" href="addmovie.jsp"><span class="badge" style="background-color: whitesmoke;color:black">Add Movie (<small>STEP 1</small>)</span></a></li>
              <li><a class="label label-primary" href="settime.jsp"><span class="badge" style="background-color: whitesmoke;color:black">Set Movie Time (<small>STEP 2</small>)</span></a></li>
              <li><a class="label label-success" href="addmovieimg.jsp"><span class="badge" style="background-color: whitesmoke;color:black">Set Movie Poster (<small>STEP 3</small>)</span></a></li>
              <li><a class="label label-danger" href="deletechng.jsp"><span class="badge" style="background-color: whitesmoke;color:black">Delete Change</span></a></li>
              <li><a  href="feedback.jsp">View Messages</a></li>
              
        </ul>
        
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Settings <span class="caret"></span></a>
              <ul class="dropdown-menu">
                
                <li><a href="userman.jsp">User Management</a></li>
                <li><a href="bookingstatus.jsp">Check Booking Status</a></li>
                
                  
                 <%
                     if(session.getAttribute("user1")!=null)
                     {
                          %><li><a href="../logout.jsp">Logout</a></li><%
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