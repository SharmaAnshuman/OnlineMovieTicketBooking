package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;;

public final class deletechng_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                                        public String x;
                                    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/../design/Anav.jsp");
    _jspx_dependants.add("/admin/../design/Afooter.jsp");
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
      out.write("    <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  </head>\n");
      out.write("  \n");
      out.write("<body class=\"bg-success\">\n");
      out.write("     \n");
      out.write("      ");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"../index.jsp\">M<small>ovie</small> T<small>icket</small> B<small>ooking</small></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("        <ul class=\"nav navbar-nav\">\n");
      out.write("              <li><a href=\"admin.jsp\">Admin Panel<span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("              <li><a class=\"label label-info\" href=\"addmovie.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Add Movie (<small>STEP 1</small>)</span></a></li>\n");
      out.write("              <li><a class=\"label label-primary\" href=\"settime.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Set Movie Time (<small>STEP 2</small>)</span></a></li>\n");
      out.write("              <li><a class=\"label label-success\" href=\"addmovieimg.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Set Movie Poster (<small>STEP 3</small>)</span></a></li>\n");
      out.write("              <li><a class=\"label label-danger\" href=\"deletechng.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Delete Change</span></a></li>\n");
      out.write("              <li><a  href=\"feedback.jsp\">View Messages</a></li>\n");
      out.write("              \n");
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
      out.write("      \n");
      out.write("      \n");
      out.write("    <div class=\"row\">\n");
      out.write("                    <div class=\"col-xs-12 col-sm-8 col-md-4 \">\n");
      out.write("\n");
      out.write("                        <div class=\"panel panel-default\">\n");
      out.write("                            <div class=\"panel-heading\">\n");
      out.write("                                <h3 class=\"panel-title\">Delete M<small>OViE</small></h3>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"panel-body\">\n");
      out.write("                            <form role=\"form\" method=\"post\">\n");
      out.write("                               <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-6 col-sm-6 col-md-12\">\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label class=\"label label-default\">Select Movie Name</label>\n");
      out.write("                                            <select class=\"form-control input-sm\" name=\"mid\">\n");
      out.write("                                               ");

                                                Connection con;
                                                Statement st;
                                                ResultSet rs;
                                                String mymid;
                                                //this for loading all movies
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

                                            
      out.write("           \n");
      out.write("                                           </select>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                              </div>\n");
      out.write("                                <input type=\"submit\" value=\"Delete MOViE\" class=\"btn btn-danger btn-block\" name=\"mdelete\" >\n");
      out.write("                                <input type=\"submit\" value=\"Change MOViE Information\" class=\"btn btn-info btn-block\" name=\"mchng\" >\n");
      out.write("                                   ");

                                                
                            //this is delete a movie
                          if(request.getParameter("mdelete")!=null)
                          {

                              String mid=request.getParameter("mid");
                              try
                              {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                            boolean an= st.execute("DELETE FROM `movie` WHERE mid='"+mid+"'");
                                            if(!an)
                                            {
                                              out.print("<script>alert('Movie Deleted..!')</script>");
                                              response.sendRedirect("deletechng.jsp");
                                            }
                                            else
                                            {
                                                out.print("<script>alert('Sorry Movie Not Deleted..!')</script>");
                                            }

                              }
                              catch(Exception c)
                              {
                                  out.print(c);              
                              }
                          }

                      
      out.write("\n");
      out.write("                            </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("    \n");
      out.write("            ");

                if(request.getParameter("mchng")!=null)
                {
            
      out.write("\n");
      out.write("        <div class=\"col-xs-12 col-sm-8 col-md-4 \">\n");
      out.write("        <div class=\"panel panel-default\">\n");
      out.write("        \n");
      out.write("            <div class=\"panel-heading\">\n");
      out.write("                <h3 class=\"panel-title\">Change M<small>OViE</small> Information</h3>\n");
      out.write("            </div>\n");
      out.write("\t\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <form role=\"form\" method=\"post\">\n");
      out.write("                           <div class=\"row\">        \n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    \n");
      out.write("                                    ");
      out.write("\n");
      out.write("                                    \n");
      out.write("                                    ");

                                        
                                        String m=request.getParameter("mid");
                                        
                                            try
                                            {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                                st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                                rs = st.executeQuery("select * from movie where mid="+m+"");

                                                x=m;

                                                int size=0;
                                                while(rs.next())
                                                {
                                                    //out.print("<option value='"+rs.getString(2)+"'>"+rs.getString(1)+"</option>");
                                                    //out.print("<script> alert("+rs.getString(2)+"(2) "+rs.getString(1)+"); </script>");
                                                    
      out.write("\n");
      out.write("                                    <div  class=\"col-md-12\">\n");
      out.write("                                            <div class=\"thumbnail bg-warning\">\n");
      out.write("                                                <p align=\"center\"><img src=\"../movieposter/");
      out.print( rs.getString("mposter") );
      out.write("\" class=\"img-thumbnail\" width=\"210px\" alt=\"Picture\"></br><a href=\"addmovieimg.jsp\" role=\"button\" class=\"btn btn-default\">Change Movie Poster </a> </p>\n");
      out.write("                                                <table class=\"table\">\n");
      out.write("                                                    <tr>  \n");
      out.write("                                                        <td><p class=\"label label-default\">Movie Name</p>\n");
      out.write("                                                            <h4 >");
      out.print( rs.getString("mname") );
      out.write("</br><input type=\"text\"  name=\"Umname\" id=\"mname\" class=\"form-control input-sm\" placeholder=\"Enter New Name\" /></h4></td>\n");
      out.write("                                                        \n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr>  \n");
      out.write("                                                        <td>\n");
      out.write("                                                            <p class=\"label label-default\"> Movie Category</p></br><h4>");
      out.print( rs.getString("mcat") );
      out.write("</br>\n");
      out.write("                                                            <div class=\"row\">\n");
      out.write("                                                                <div class=\"col-xs-6 col-sm-6 col-md-12\">\n");
      out.write("                                                                    <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                                                    <select class=\"form-control input-sm\" name=\"Umcat\">\n");
      out.write("                                                                            <option value=\"Bollywood\">Bollywood</option>\n");
      out.write("                                                                            <option value=\"Gujarati\">Gujarati</option>\n");
      out.write("                                                                            <option value=\"Hollywood\">Hollywood</option>\n");
      out.write("                                                                            <option value=\"Hollywood(Hindi)\">Hollywood(Hindi)</option>\n");
      out.write("                                                                   </select>\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div></h4>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <p class=\"label label-default\"> Movie Status</p></br><h4>");
      out.print( rs.getString("mstatus") );
      out.write("</br>\n");
      out.write("                                                            <div class=\"row\">\n");
      out.write("                                                                <div class=\"col-xs-6 col-sm-6 col-md-12\">\n");
      out.write("                                                                <div class=\"form-group\">\n");
      out.write("                                                                    <select class=\"form-control input-sm\" name=\"Umstatus\">\n");
      out.write("                                                                        <option value=\"Now Showing\">Now Showing</option>\n");
      out.write("                                                                        <option value=\"Upcoming\">Upcoming</option>\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </div>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div></h4>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                </table>\n");
      out.write("\n");
      out.write("                                                <table class=\"table\">\n");
      out.write("                                                    <tr>\n");
      out.write("                                                        <p class=\"label label-default\">Movie Description</p>\n");
      out.write("                                                        <td>\n");
      out.write("                                                            <div class=\"text-justify\"> \n");
      out.write("                                                                <samll>");
      out.print( rs.getString("minfo") );
      out.write("</small></br>\n");
      out.write("                                                                <div class=\"form-group\">\n");
      out.write("                                                                    <textarea name=\"Uminfo\" id=\"minfo\" class=\"form-control input-sm\" placeholder=\"Enter New Decription\"></textarea>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                </table>\n");
      out.write("\n");
      out.write("                                                ");


                                                }
                                            }
                                            catch(Exception c)
                                            {
                                                out.print(c);              
                                            }
                                                
      out.write("           \n");
      out.write("                                                <input type=\"submit\" value=\"Save MOViE Changes\" class=\"btn btn-info btn-block\" name=\"mupdate\" >\n");
      out.write("                                                \n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("        </div>     \n");
      out.write("        </div>\n");
      out.write("    ");

                }
                if(request.getParameter("mupdate")!=null)
                {
                    
                    String umname,uminfo,umstatu,umcat;
                    umname = request.getParameter("Umname");
                    uminfo = request.getParameter("Uminfo");
                    umstatu = request.getParameter("Umstatus");
                    umcat = request.getParameter("Umcat");
                    out.print("<script>alert(ID)</script>");
                    out.print("<script>alert(ID :"+x+" ,NM : "+umname+",INFO : "+uminfo+",Status : "+umstatu+",Cat : "+umcat+", )</script>");
                }
    
      out.write("\n");
      out.write("                                \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("       \n");
      out.write("                 \n");
      out.write("    \n");
      out.write("      \n");
      out.write("     \n");
      out.write("             ");
      out.write("\n");
      out.write("</br></br></br></br>     \n");
      out.write("<nav class=\"nav navbar-default navbar-fixed-bottom\">\n");
      out.write("  <div class=\"container-fluid text-center\">\n");
      out.write("      <a class=\"label label-danger \" href=\"addmovie.jsp\">Add New Movie</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"settime.jsp\">Set Movie Time</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"addmovieimg.jsp\">Set Movie Poster</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"upcoming.jsp\">View Messages</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"deletechng.jsp\">Change Delete</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"about.jsp\">Logout</a>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../js/bootstrap.min.js\"></script>\n");
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
