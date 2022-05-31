<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>listMyJobs</title>
         <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="header.html"%>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root", "");
                String email = session.getAttribute("email").toString();
                PreparedStatement ps = con.prepareStatement("select * from jobs where email=?");
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();
                int n;
                while (rs.next()) {
                    n=rs.getInt(1);
        %>
        <div class="card">
            <div class="card-header">
                <b> <% out.print(rs.getString("job_title")); %> </b>
            </div>
            <div class="card-body">
                <h5 class="card-title">Skills : <% out.print(rs.getString("skills_require")); %></h5>
                <h6 class="card-title">Salary : <% out.print(rs.getString("salary")); %></h6>
                <p class="card-text"> Description of Job : <% out.print(rs.getString("job_description")); %></p>
                <p class="card-text"> Last Date To Apply : <% out.print(rs.getString("last_date")); %></p>
                <form action="candidate.jsp">
                    <input type="hidden" value="<%= n %>" name="jid">
                    <input class="btn btn-primary" type="submit" value="See_Candidates">
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
