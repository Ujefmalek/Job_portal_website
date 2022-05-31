<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
            String email=session.getAttribute("email").toString();
            String ut=session.getAttribute("usertype").toString();
            if(ut.equals("0"))
            request.getRequestDispatcher("nuser.jsp").forward(request, response);
            else if(ut.equals("1"))
            request.getRequestDispatcher("jpuser.jsp").forward(request, response);
            else
            out.print("some error occured....");
        %>
    </body>
</html>
