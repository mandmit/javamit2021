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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styleMain.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Lexend+Mega&display=swap" rel="stylesheet">
        <title>Manilo Dmytro</title>
    </head>
    <body>
        <div class="wrapper">
        <h1>Welcome to main page</h1>
        <p>My name is Dmitry Manilo</p>
        <p>My company needs new employees. Please fill out the form below and send the result for further cooperation</p>
        <form action="<%= request.getContextPath()%>/form" method="get">
            <input class="b1" type="submit" value="Call form"/>
        </form> 
        </div>
    </body>
</html>
