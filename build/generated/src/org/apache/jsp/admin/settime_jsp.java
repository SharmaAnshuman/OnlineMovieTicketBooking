package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class settime_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("    <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("\tfunction chk()\n");
      out.write("\t{\t\n");
      out.write("            var sh = document.forms[\"movieshowtime\"][\"sth\"].value;\n");
      out.write("            var sm = document.forms[\"movieshowtime\"][\"stm\"].value;\n");
      out.write("            var eh = document.forms[\"movieshowtime\"][\"eth\"].value;\n");
      out.write("            var em = document.forms[\"movieshowtime\"][\"etm\"].value;\n");
      out.write("            var d =  document.forms[\"movieshowtime\"][\"day\"].value;\n");
      out.write("            var m =  document.forms[\"movieshowtime\"][\"month\"].value;\n");
      out.write("            var y =  document.forms[\"movieshowtime\"][\"year\"].value;\n");
      out.write("            \n");
      out.write("            if(sh==\"HR\")\n");
      out.write("            {\n");
      out.write("                alert(\"Select Movie Starting Hour..!\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if(sm==\"MIN\")\n");
      out.write("            {\n");
      out.write("                alert(\"Select Movie Starting Minitus..!\");\n");
      out.write("                return false;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            else if(eh==\"HR\")\n");
      out.write("            {\n");
      out.write("                alert(\"Select Movie Ending Hour..!\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if(em==\"MIN\")\n");
      out.write("            {\n");
      out.write("                alert(\"Select Movie Endting Minitus..!\");\n");
      out.write("                return false;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            else if(d==\"\"||m==\"\"||y==\"\")\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                alert(\"Enter Movie Date..!\");\n");
      out.write("                return false;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("                \n");
      out.write("            return true;\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("  </head>\n");
      out.write("  <body class=\"bg-success\">\n");
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
      out.write("     \n");
      out.write("    \n");
      out.write("        <div class=\"row\">\n");
      out.write("<div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4\">\n");
      out.write("    <div class=\"panel panel-default\">\n");
      out.write("        \n");
      out.write("        <div class=\"panel-heading\">\n");
      out.write("            <h3 class=\"panel-title\">Set M<small>OViE</small> ShowTime</h3>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("        <div class=\"panel-body\">\n");
      out.write("            <form role=\"form\" name=\"movieshowtime\" onsubmit=\"return chk()\">\n");
      out.write("            \n");
      out.write("                <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-12 col-md-16\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                         <label class=\"label label-default\">Select Movie</label>\n");
      out.write("                        <select class=\"form-control input-sm\" name=\"mid\">\n");
      out.write("                    ");

                        Connection con;
                        Statement st;
                        ResultSet rs;
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb1","root","");
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
                    
                    
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("               <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-12 col-md-14\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"label label-default\">Starting Time</label>\n");
      out.write("                        <select class=\"form-control input-sm\" name=\"sth\">\n");
      out.write("                                <option>HR</option>\n");
      out.write("                                    ");

                                        for(int i=0;i<=24;i++)
                                        {
                                    
      out.write("\n");
      out.write("                                            <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                </select> \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                     <select class=\"form-control input-sm\" name=\"stm\">\n");
      out.write("                                 <option>MIN</option>\n");
      out.write("                                 ");
 
                                    for(int i=0;i<=60;i++)
                                    {
                                 
      out.write("\n");
      out.write("                                        <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                                ");
 
                                    }
                                
      out.write("\n");
      out.write("                   </select>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("               </div>\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("               <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-xs-12 col-sm-12 col-md-14\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"label label-default\">Ending Time</label>\n");
      out.write("                        <select class=\"form-control input-sm\" name=\"eth\">\n");
      out.write("                                <option>HR</option>\n");
      out.write("                                    ");

                                        for(int i=0;i<=24;i++)
                                        {
                                    
      out.write("\n");
      out.write("                                            <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                </select> \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                     <select class=\"form-control input-sm\" name=\"etm\">\n");
      out.write("                                 <option>MIN</option>\n");
      out.write("                                 ");
 
                                    for(int i=0;i<=60;i++)
                                    {
                                 
      out.write("\n");
      out.write("                                        <option>");
      out.print(i);
      out.write("</option>\n");
      out.write("                                ");
 
                                    }
                                
      out.write("\n");
      out.write("                   </select>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-md-12\">\n");
      out.write("                    <label class=\"label label-default\">Date</label>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                        <input class=\"form-control input-sm\" type=\"number\" name=\"day\" id=\"day\" placeholder=\"Day\" mini=\"1\" max=\"31\">\n");
      out.write("                        <input class=\"form-control input-sm\" type=\"number\" name=\"month\" id=\"month\" placeholder=\"Month\" min=\"1\" max=\"12\">\n");
      out.write("                        <input class=\"form-control input-sm\" type=\"number\" name=\"year\" id=\"year\" placeholder=\"Year\" min=\"2016\" max=\"9999\">\n");
      out.write("                     </div>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("               </div> \n");
      out.write("                    <input type=\"submit\" value=\"Set MOViE Time's\" class=\"btn btn-info btn-block\" name=\"addtime\" >\n");
      out.write("                </div>\n");
      out.write("                   \n");
      out.write("                  \n");
      out.write("\t\t\t \n");
      out.write("            \n");
      out.write("            ");

                                    
                                    String mid,sth,stm,eth,etm;
                                    mid=request.getParameter("mid");
                                    sth=request.getParameter("sth");
                                    stm=request.getParameter("stm");
                                    String starttime = sth+":"+stm;
                                    eth=request.getParameter("eth");
                                    etm=request.getParameter("etm");
                                    String endtime = eth+":"+etm;
                                    String sdate,day,month,year;
                                    day=request.getParameter("day");
                                    month=request.getParameter("month");
                                    year=request.getParameter("year");
                                    sdate=day+"-"+month+"-"+year;                                    
                                    
                                    String btn=request.getParameter("addtime");
                                    if(btn!=null)
                                    {
                                        try
                                        {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb1","root","");
                                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                            boolean an= st.execute("INSERT INTO `showtime`( `mid`, `st`, `et`,`sdate`) VALUES ('"+mid+"','"+starttime+"','"+endtime+"','"+sdate+"')");
                                            
                                            
                                            if(!an)
                                            {
                                                    ResultSet rss =  st.executeQuery("select sid from showtime where mid='"+mid+"' and st='"+starttime+"' and et='"+endtime+"' and sdate='"+sdate+"'");
                                                    rss.next();
                                                    String s_id=rss.getString("sid");
                                                    for(int i=1;i<31;i++)
                                                    {
                                                       st.execute("INSERT INTO `seats`(`m_id`, `show_id`, `sname`, `sstatus`) VALUES ('"+mid+"','"+s_id+"','A"+i+"')");
                                                    } 
                                                    
                                              out.print("<script>alert('Movie Time Added..!')</script>");
                                              btn=null;


                                            }
                                            else
                                            {
                                                out.print("<script>alert('Sorry Movie Time Not Added..!')</script>");
                                            }
                                        }
                                        catch(Exception c)
                                        {
                                            out.print(c);              
                                        }
                                    }
            
      out.write("\n");
      out.write("         </form>\n");
      out.write("\t\t\t    \t</div>\n");
      out.write("\t    \t\t</div>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t</div>\n");
      out.write("       \n");
      out.write("                    \n");
      out.write("       \n");
      out.write("      \n");
      out.write("    \n");
      out.write("      \n");
      out.write("     \n");
      out.write("            ");
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
      out.write(" \n");
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
