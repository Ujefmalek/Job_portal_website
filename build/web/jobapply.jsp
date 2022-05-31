<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JobApply</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="c1">
            <div class="c2">
                <div class="c3">
                    <form class="row g-3 c3" method="post" action="jobapply_handler.jsp">
                        <h1 align="center"> Apply Now </h1><hr/>

                        <div class="col-12">
                            <label class="form-label">Full name</label>
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Upload Your Resume</label>
                            <input type="file" class="form-control" id="resume" name="resume">
                        </div>
                        <% String email=session.getAttribute("email").toString();
                        String jid=request.getParameter("job_id");
                        %>
                        <input type="hidden" value="<%= email %>" name="email">
                        <input type="hidden" value="<%= jid %>" name="job_id" %>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Apply</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
