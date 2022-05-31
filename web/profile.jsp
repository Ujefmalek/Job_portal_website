<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Profile</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            String ut = session.getAttribute("usertype").toString();
            if (ut.equals("0")) {
        %>
        <%@include file="nheader.html" %>
        <%
            }
            if (ut.equals("1")) {
        %>
        <%@include file="header.html" %>
        <%
            }
        %>

        <div class="c1">
            <div class="c2">
                <div class="c3">
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root", "");
                            PreparedStatement ps = con.prepareStatement("select * from users");
                            ResultSet rs = ps.executeQuery();
                            String email = session.getAttribute("email").toString();
                            while (rs.next()) {
                                if (rs.getString("email").equals(email)) {
                    %>
                    <form class="row g-3 c3" action="home.jsp" method="post">
                        <h2 align="center">Profile</h2><hr/>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input type="email" value="<% out.print(rs.getString("email")); %>" class="form-control" id="email" name="email" disabled="true">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Full Name</label>
                            <input type="text" value="<% out.print(rs.getString("name")); %>" class="form-control" id="fn" name="fn" disabled="true">
                        </div>
                        <div class="col-12">
                            <label for="inputAddress2" class="form-label">Address</label>
                            <input type="text" value="<% out.print(rs.getString("address")); %>" class="form-control" name="address" disabled="true" id="address">
                        </div>
                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">City</label>
                            <input type="text" value="<% out.print(rs.getString("city")); %>" class="form-control" id="city" name="city" disabled="true"> 
                        </div>
                        <div class="col-md-4">
                            <label for="inputZip" class="form-label">Zip</label>
                            <input type="text" value="<% out.print(rs.getString("zip")); %>" class="form-control" id="zip" name="zip" disabled="true">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Back</button>
                        </div>
                    </form>
                    <%
                                    break;
                                }
                            }
                        } catch (Exception e) {
                            out.print(e);
                        }
                    %>

                </div>
            </div>
        </div>
    </body>
</html>
