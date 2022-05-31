<%@page import="java.io.FileOutputStream"%>
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
        <title>Candidates</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root", "");
                // String email = session.getAttribute("email").toString();
                int n = Integer.parseInt(request.getParameter("jid"));
                PreparedStatement ps = con.prepareStatement("select * from candidates where job_id=?");
                ps.setInt(1, n);
                ResultSet rs = ps.executeQuery();
                int i=0;
                while (rs.next()) {
                    i++;
                    String email=rs.getString("email");
        %>
        <div class="card">
            <div class="card-header">
                <b><%= i %> :  <% out.print(rs.getString("name")); %></b>
            </div>
            <div class="card-body">
                <h5 class="card-title">Email : <%= email %></h5>
                 <form action="download.jsp">
                    <input type="hidden" value="<%= n %>" name="jid">
                    <input type="hidden" value="<%= email %>" name="email">
                    <input class="btn btn-primary" type="submit" value="Download Resume">
                </form>
            </div>
        </div>
        <%
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>