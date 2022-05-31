<%@page import="javax.sql.rowset.serial.SerialBlob"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobApply_handler</title>
    </head>
    <body>
       <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root", "");
                int jid = Integer.parseInt(request.getParameter("job_id"));
                String name = request.getParameter("name");
                String resume= request.getParameter("resume");
                byte[] file=resume.getBytes();
                Blob lb=new SerialBlob(file);
                String email=session.getAttribute("email").toString();
                PreparedStatement p=con.prepareStatement("INSERT INTO `candidates`(`job_id`, `name`, `email`, `resume`) VALUES (?,?,?,?)");
                p.setInt(1, jid);
                p.setString(2, name);
                p.setString(3, email);
                p.setBlob(4, lb);
                p.executeUpdate();
                request.getRequestDispatcher("showjobs.jsp").forward(request, response);
            }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
