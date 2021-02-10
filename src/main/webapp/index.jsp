<%-- 
    Document   : index
    Created on : 3 лют. 2021 р., 20:52:49
    Author     : Дмитрий
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landing page</title>
    </head>
    <body>
        <h1>Main page</h1>

        <form action="<%= request.getContextPath()%>/form" method="get">
            <input type="submit" value="Call form"/>
        </form> 
    </body>
</html>
