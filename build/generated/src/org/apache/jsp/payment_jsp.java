package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class payment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/design/nav.jsp");
    _jspx_dependants.add("/design/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>MTB</title>    \n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("     \n");
      out.write("      ");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\">M<small>ovie</small> T<small>icket</small> B<small>ooking</small></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("        <ul class=\"nav navbar-nav\">\n");
      out.write("              <li class=\"active\"><a href=\"index.jsp\">Home<span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("              <li><a href=\"nowshowing.jsp\">Now Showing</a></li>\n");
      out.write("              <li><a href=\"upcoming.jsp\">Upcoming here</a></li>\n");
      out.write("              <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("              <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Settings <span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a href=\"#\">Change Account Info</a></li>\n");
      out.write("                <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("                <li><a href=\"login.jsp\">Login/Logout</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("      <form>\n");
      out.write("    \n");
      out.write("                      ");

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
                   rss.close();
                    
                                           
      out.write("\n");
      out.write("                        <div class=\"panel col-md-3\">\n");
      out.write("                            <label class=\"label label-danger\">Payment Method</label>\n");
      out.write("                            <table class=\"table\">\n");
      out.write("                                <tr class=\"alert-success\">\n");
      out.write("                                    <td>\n");
      out.write("                                        <label class='label label-info'>Movie Name:</label></br>");
      out.print(nmnm );
      out.write("<hr>\n");
      out.write("                                        \n");
      out.write("                                        ");

               try
               {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                    st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                    rs=st.executeQuery("select * from showtime where sid="+showchk+"");
                    rs.next();
                       out.println("<label class='label label-info'>Show Time:</label></br>Date: "+rs.getString("sdate")+"</br>Time:"+rs.getString("st")+" TO "+rs.getString("et")+"<hr>");
                     String seats[] = request.getParameterValues("seats");
                        out.print("<label class='label label-info'>All Seats Are: </label></br>");
                         totseat=seats.length;
                        pay=(230*totseat);

                        for(int i=0;i<seats.length;i++)
                        {
                            if(seats[i]!=null)
                            {
                                out.print(seats[i]+"  ");
                                st.executeUpdate("update seats set sstatus='book' where show_id='"+showchk+"' and id="+seats[i]+" ");
                                

                            }
                        }
                        out.print("<hr><label class='label label-info'>You are Paying</label></br> ("+totseat+"*Rs.230)</br><h2><label class='label label-danger'>Rs."+pay+"</label></h2>");
                        
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                        </br>\n");
      out.write("                        \n");
      out.write("                        <input class=\"btn btn-default col-md-8\" type=\"text\" name=\"user\" placeholder=\"Enter Your Name\"></br></hr>\n");
      out.write("                        <select class=\"btn btn-default col-md-8\" name=\"paymethod\">\n");
      out.write("                            <option>Select Payment Option</option>\n");
      out.write("                              <option>Credit Card</option>\n");
      out.write("                                <option>Debit Card</option>\n");
      out.write("                                  <option>Net Banking</option>\n");
      out.write("                                    \n");
      out.write("                           </select></br></br></hr>\n");
      out.write("                        <input type=\"submit\" value=\"Make Payment\" class=\"btn btn-success col-md-8\" name=\"paydone\">\n");
      out.write("                        ");

                        if(request.getParameter("paydone")!=null)
                        {
                                try
                                {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                            boolean a=st.execute("INSERT INTO `booking`(`show_id`, `mname`, `total_seats`, `payment_method`, `amount`, `username`) VALUES ('"+showchk+"','"+nmnm+"','"+totseat+"','"+request.getParameter("paymethod")+"','"+pay+"','"+request.getParameter("user")+"')");
                                            if(a)
                                            {
                                                out.print("<script>alert('payment done');</script>");
                                            }
                                            
                                }catch(Exception ccc)  
                                {
                                 out.print("Error Payment Failde.! try agine");
                                }
                        
                        }
                        
      out.write("\n");
      out.write("                                    </td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        ");

                        // 
                       
               }
               catch(Exception x)
               {
                   
out.print("<h1 class='lable lable-danger'>Please Go Back And Select Seats..!</h1>"+x);
                  
      out.write("<button type=\"button\" role=\"button\" class=\"btn btn-success\" name=\"back\" onclick=\"history.back()\">back</button>");

               }
                   
           
             }
             else
             {
                 
                                     out.print("<h1 class='lable lable-danger'>Please Go Back And Select Show Time..!</h1>");
                  
      out.write("<button type=\"button\" role=\"button\" class=\"btn btn-success\" name=\"back\" onclick=\"history.back()\">back</button>");

                                 
             }
           
        
          
      out.write("\n");
      out.write("                 \n");
      out.write("         \n");
      out.write("      \n");
      out.write("      </form>\n");
      out.write(" <div style=\"clear: both\"></div>\n");
      out.write("    ");
      out.write("\n");
      out.write("</br></br></br></br>     \n");
      out.write("<nav class=\"nav navbar-default navbar-fixed-bottom\">\n");
      out.write("  <div class=\"container-fluid text-center\">\n");
      out.write("      <a class=\"label label-danger \" href=\"index.jsp\">Home</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"nowshowing.jsp\">Now Showing</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"upcoming.jsp\">Upcoming Movies</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"about.jsp\">About us</a>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("      \n");
      out.write("   <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
