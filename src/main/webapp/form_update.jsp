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
        <title>Update form</title>
    </head>
    <body>
        <h1>Update data</h1>
        <form action="<%=request.getContextPath()%>/form" method="post">
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
            <p>Name:
            <input type="text" name="name" value="<%=request.getParameter("name")%>"/></p>
            <p>Age:
            <input type="text" placeholder="integer" name="age" value="<%=request.getParameter("age")%>"/></p>
            
            <input type="submit" value="Create data"/>
        </form>
            <a href="<%=request.getContextPath()%>">Return</a>
    </body>
</html>