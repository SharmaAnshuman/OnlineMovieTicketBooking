package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      <form method=\"get\" action=\"payment.jsp\">\n");
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
      out.write("       \n");
      out.write("      ");

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
          
      out.write("\n");
      out.write("      <div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-8 col-md-4\">          \n");
      out.write("          <table class=\"table\">\n");
      out.write("            <tr style=\"text-align: justify;width: 50px\">\n");
      out.write("                <td align=\"center\"><img src=\"movieposter/");
      out.print(rs.getString("mposter") );
      out.write("\" class=\"img-responsive\" height=\"230px\" width=\"200px\" ></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr style=\"text-align: justify;width: 50px\">\n");
      out.write("                <td><lable class=\"label label-default\">Movie Name</lable><small>    ");
      out.print(rs.getString("mname") );
      out.write("</small></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr style=\"text-align: justify;width: 50px\">\n");
      out.write("                <td><lable class=\"label label-default\">Movie Category</lable><small style=\"text-align: justify;width: 50px\">    ");
      out.print(rs.getString("mcat") );
      out.write("</small></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr style=\"text-align: justify;width: 50px\">\n");
      out.write("                <td><lable class=\"label label-default\">Movie Decsription</lable><small style=\"text-align: justify;width: 50px\">    ");
      out.print(rs.getString("minfo") );
      out.write("</small></td>\n");
      out.write("            </tr>\n");
      out.write(" \n");
      out.write("          </table>\n");
      out.write("      </div>\n");
      out.write("             ");

                }
          catch(Exception x)
          {
          }
          
                
                
      out.write("\n");
      out.write("        \n");
      out.write("            \n");
      out.write("      <div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-8 col-md-4\">\n");
      out.write("          <table class=\"table\">\n");
      out.write("              <th>\n");
      out.write("                  <strong>   S<small>how</small> T<small>ime Selection (24hour format)</small></strong> \n");
      out.write("              </th>\n");
      out.write("               <tr>\n");
      out.write("                   ");

          try
          {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                rs=st.executeQuery("select * from showtime where mid="+request.getParameter("mid")+"");
                int o=0;
                while(rs.next())
                {
          
      out.write("     \n");
      out.write("                   <td class=\"btn btn-sm bg-info\">\n");
      out.write("                       <input type=\"radio\" value=\"");
      out.print( rs.getString("sid") );
      out.write("\" name=\"showchk\" class=\"btn btn-default \">\n");
      out.write("                      <div align=\"center\" style=\"width: 80px\">\n");
      out.write("                          <table>\n");
      out.write("                              \n");
      out.write("                              <tr>\n");
      out.write("                                  <td><h4><span class='label label-primary'>");
      out.print(rs.getString("sdate") );
      out.write("</span></h4></td>\n");
      out.write("                               \n");
      out.write("                              </tr>\n");
      out.write("                              <tr>\n");
      out.write("                                  <td>");
      out.print("<h5><span class='label label-primary'>"+rs.getString("st")+" ");
      out.write('T');
      out.write('O');
      out.print(" "+rs.getString("et")+"</span></h5>");
      out.write("</td>\n");
      out.write("                              </tr>\n");
      out.write("                          </table>\n");
      out.write("                      </div>\n");
      out.write("                              \n");
      out.write("                      </a>\n");
      out.write("                   </td>\n");
      out.write("            ");

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

            
      out.write("       \n");
      out.write("              </tr>\n");
      out.write("              \n");
      out.write("              <th>\n");
      out.write("                  <strong>   S<small>eat</small> S<small>election</small></strong> \n");
      out.write("              </th>\n");
      out.write("               <tr>\n");
      out.write("                  <td>\n");
      out.write("                      <div class=\"bg-info\" align=\"center\">\n");
      out.write("                          \n");
      out.write("\n");
      out.write("                          \n");
      out.write("                          \n");
      out.write("            <input type=\"checkbox\" value=\"A1\" name=\"seats\">A1\n");
      out.write("            <input type=\"checkbox\" value=\"A2\" name=\"seats\">A2\n");
      out.write("            <input type=\"checkbox\" value=\"A3\" name=\"seats\">A3\n");
      out.write("            <input type=\"checkbox\" value=\"A4\" name=\"seats\">A4\n");
      out.write("            <input type=\"checkbox\" value=\"A5\" name=\"seats\">A5\n");
      out.write("            </br>\n");
      out.write("            <input type=\"checkbox\" value=\"B1\" name=\"seats\">B1\n");
      out.write("            <input type=\"checkbox\" value=\"B2\" name=\"seats\">B2\n");
      out.write("            <input type=\"checkbox\" value=\"B3\" name=\"seats\">B3\n");
      out.write("            <input type=\"checkbox\" value=\"B4\" name=\"seats\">B4\n");
      out.write("            <input type=\"checkbox\" value=\"B5\" name=\"seats\">B5\n");
      out.write("            </br>\n");
      out.write("            <input type=\"checkbox\" value=\"C1\" name=\"seats\">C1\n");
      out.write("            <input type=\"checkbox\" value=\"C2\" name=\"seats\">C2\n");
      out.write("            <input type=\"checkbox\" value=\"C3\" name=\"seats\">C3\n");
      out.write("            <input type=\"checkbox\" value=\"C4\" name=\"seats\">C4\n");
      out.write("            <input type=\"checkbox\" value=\"C5\" name=\"seats\">C5\n");
      out.write("            </br>\n");
      out.write("            &nbsp;\n");
      out.write("            <input type=\"checkbox\" value=\"E1\" name=\"seats\">E1\n");
      out.write("            <input type=\"checkbox\" value=\"E2\" name=\"seats\">E2\n");
      out.write("            <input type=\"checkbox\" value=\"E3\" name=\"seats\">E3\n");
      out.write("            </br>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("                      </div>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>\n");
      out.write("                      <div class=\"bg-primary\">\n");
      out.write("                          \n");
      out.write("                          <div class=\"alert-danger\" role=\"alert\">\n");
      out.write("                            <p class=\"active\"> Per Seat Rs:<strong> 230* </strong></p>\n");
      out.write("                          </div>\n");
      out.write("                          \n");
      out.write("                      </div>\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>\n");
      out.write("                      \n");
      out.write("               \n");
      out.write("    <input type=\"submit\" name=\"pay\" role=\"button\" class=\"btn btn-success\" value=\"Paynow \">\n");
      out.write("                  </td>\n");
      out.write("              </tr>\n");
      out.write("          </table>\n");
      out.write("            ");

           
                        if(request.getParameter("seats")!=null)
                        {
                            
      out.write("\n");
      out.write("                            \n");
      out.write("                    <p align=\"center\" role=\"button\" class=\"label label-success \">Please Select Any Seat..!</p>\n");
      out.write("                            \n");
      out.write("                                          ");

                        }
                        if(request.getParameter("showtime")!=null)
                        {
                            
      out.write("\n");
      out.write("                            \n");
      out.write("                    <p align=\"center\" role=\"button\" class=\"label label-success \">Please Select Any Showtime..!</p>\n");
      out.write("                            \n");
      out.write("                                          ");

                        }
                        if(request.getParameter("both")!=null)
                        {
                    
      out.write("\n");
      out.write("                    <p align=\"center\" role=\"button\" class=\"label label-success \">Please Select Any Showtime And Seats..!</p>                      \n");
      out.write("                    ");
        
                        }
               
                 }
          else
          {
              
                           out.print("<h1 class='lable lable-danger'>oops error..!</h1>");
                  
      out.write("<button type=\"button\" role=\"button\" class=\"btn btn-success\" name=\"back\" onclick=\"history.back()\">back</button>");

          }
          
      out.write("    \n");
      out.write("         \n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("         \n");
      out.write("  </form>\n");
      out.write("           \n");
      out.write("      \n");
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
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
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
