<%-- 
    Document   : submit
    Created on : 3 лют. 2021 р., 22:28:54
    Author     : Дмитрий
--%>

<%@page import="org.obrii.mit.dp2021.manilo.javaproject1.User"%>
<%@page import="org.obrii.mit.dp2021.manilo.javaproject1.NewInterface"%>
<%@page import="org.obrii.mit.dp2021.manilo.javaproject1.Application"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styleMain.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Lexend+Mega&display=swap" rel="stylesheet">
        <title>
            <%
                if (request.getParameter("title") == null) {
                    out.print("Data Processing");
                } else {
                    out.print(request.getParameter("title"));
                }
            %>
        </title>
    </head>
    <body>
        <h1>Submited data</h1>
        <% User user = (User) request.getAttribute("user");%>
        <p>Name: <%=user.getName()%></p>
        <p>Surname: <%=user.getSurname()%></p>
        <p>Gender: <%=user.getGender()%></p>
        <p>Languages: <%=user.getLanguage()%></p>
        <p>Country: <%=user.getCountry()%></p>
        <p>Programming Languages: <%=user.getProgLanguage()%></p
        <p>LoverCachi:<%=user.getIsKnow()%></p>
        
        
        <form action = "<%=request.getContextPath()%>">
            <input class="b1" type="submit" value="Return to main page"/>
        </form>
    </body>
</html>
