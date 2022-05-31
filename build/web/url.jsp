<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>URL information</title>
        <link href="style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="c1">
            <div class="c2">
                <div class="c3">
                    <%
                        String u=request.getParameter("url");
                        URL url=new URL(u); 
                    %>
                    <form class="row g-3 c3" action="index.html" method="post">
                        <h2 align="center">URL INFO</h2><hr/>
                        <div class="col-md-6">
                            <label class="form-label">Protocol : </label>
                            <input type="text" value="<% out.print(url.getProtocol()); %>" class="form-control" disabled="true">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Host Name : </label>
                            <input type="text" value="<% out.print(url.getHost()); %>" class="form-control" disabled="true">
                        </div>
                        <div class="col-12">
                            <label class="form-label">Port Number : </label>
                            <input type="text" value="<% out.print(url.getPort()); %>" class="form-control" disabled="true">
                        </div>
                        <div class="col-12">
                            <label class="form-label">File : </label>
                            <input type="text" value="<% out.print(url.getFile()); %>" class="form-control" disabled="true"> 
                        </div>
                        <div class="col-12">
                            <label class="form-label">Path : </label>
                            <input type="text" value="<% out.print(url.getPath()); %>" class="form-control" disabled="true">
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Back</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
