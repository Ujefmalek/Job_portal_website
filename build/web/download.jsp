<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            int n = Integer.parseInt(request.getParameter("jid"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test2", "root", "");
            PreparedStatement p = con.prepareStatement("select * from candidates where job_id=? and email=?");
            p.setInt(1, n);
            p.setString(2, email);
            ResultSet rs = p.executeQuery();
            InputStream inputStream = rs.getBinaryStream("resume");
            byte byteArray[] = new byte[inputStream.available()];
            inputStream.read(byteArray);
            FileOutputStream outPutStream = new FileOutputStream("C:\\Users\\" + email + ".pdf");
            outPutStream.write(byteArray);
        %>
    </body>
</html>
<!--<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/test2" user="root" password=""/>
<c:set var="email" value="<%= email%>"/>
<c:set var="jid" value="<%= n%>"/>
<sql:query dataSource="${db}" var="rs">select * from candidates where job_id="${jid}" and email="${email}"</sql:query>
<c:forEach var="row" items="${rs.rows}"> 
    <c:set var="resume" value="${row.resume}"/>
</c:forEach>
-->