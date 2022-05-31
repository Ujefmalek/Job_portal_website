<%-- 
    Document   : createjob_handler
    Created on : Apr 15, 2022, 11:20:41 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create job handler</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root", "");
                PreparedStatement ps = con.prepareStatement("select * from users");
                ResultSet rs = ps.executeQuery();
                String jt = request.getParameter("jt");
                String jd = request.getParameter("jd");
                String sr = request.getParameter("sr");
                String date = request.getParameter("date");
                String salary = request.getParameter("salary");
                String email=session.getAttribute("email").toString();
                PreparedStatement p=con.prepareStatement("INSERT INTO `jobs`(`email`, `job_title`, `job_description`, `skills_require`, `last_date`, `salary`) VALUES (?,?,?,?,?,?)");
                p.setString(1, email);
                p.setString(2, jt);
                p.setString(3, jd);
                p.setString(4, sr);
                p.setString(5, date);
                p.setString(6, salary);
                p.executeUpdate();
                request.getRequestDispatcher("jpuser.jsp").forward(request, response);
            }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
