<%-- 
    Document   : form
    Created on : 4 бер. 2021 р., 15:15:23
    Author     : Дмитрий
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert form</title>
    </head>
    <body>
        <h1>Insert data</h1>
        <form action="<%=request.getContextPath()%>/" method="post">
            <input type="hidden" name="id" value="0"/>
            <p>Name:
            <input type="text" name="name"/></p>
            <p>Age:
            <input type="text" placeholder="integer" name="age"/></p>
            
            <input type="submit" value="Create data"/>
        </form>
    </body>
</html>
