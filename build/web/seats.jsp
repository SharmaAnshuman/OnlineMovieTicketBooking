<%@page  import="java.sql.*" %>
<%
       
           Connection con;
           Statement st;
           ResultSet rs;
          if(request.getParameter("sid")!=null)
          {
                        try
                            {
                                  Class.forName("com.mysql.jdbc.Driver");
                                  con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mtb","root","");
                                  st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                                  String mid=request.getParameter("mid");
                                  String showid =request.getParameter("sid");
                                  rs =st.executeQuery("select * from seats where m_id='"+mid+"' and show_id='"+showid+"'");
                                  
                                  int z=1;
                                  while(rs.next())
                                  {
                                      if(rs.getString("sstatus").equals("book"))
                                      {
                                                 out.println("<input type='checkbox' value='"+rs.getString("id")+"' name='seats' disabled/>"+rs.getString("sname"));
                                                if(z==5 || z==10 ||z==15 ||z==20||z==25||z==30)
                                                {
                                                    out.print("</br>");
                                                }
                                                  z++;
                                      }
                                      else
                                      {
                                              out.println("<input type='checkbox' value='"+rs.getString("id")+"' name='seats' / >"+rs.getString("sname"));
                                                if(z==5 || z==10 ||z==15 ||z==20||z==25||z==30)
                                                {
                                                    out.print("</br>");
                                                }
                                                  z++;
                                      }

                                  }

                            }catch(Exception x)
                            {
                                  out.println(x);
                            }
                  }
                  else
                  {
                      out.print("error");

                  }
          
 %>
