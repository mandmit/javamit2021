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
        <% Application user = (Application)request.getAttribute("user");
        NewInterface info = user.getUser();
        %>
        <p>Name: <%=info.getName()%></p>
        <p>Surname: <%=info.getSurname()%></p>
        <p>Gender: <%=info.getGender()%></p>
        <p>Languages: <%=info.getLanguage()%></p>
        <p>Country: <%=info.getCountry()%></p>
        <p>Programming Languages: <%=info.getProgLanguage()%></p
        <p>LoverTesla:<%=info.getIsKnow()%></p>
        
        
        <form action = "<%=request.getContextPath()%>">
            <input class="b1" type="submit" value="Return to main page"/>
        </form>
    </body>
</html>
