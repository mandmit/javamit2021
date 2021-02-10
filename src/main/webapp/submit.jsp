<%-- 
    Document   : submit
    Created on : 3 лют. 2021 р., 22:28:54
    Author     : Дмитрий
--%>

<%@page import="org.obrii.mit.dp2021.manilo.javaproject1.DemoData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <h1>Submited data:</h1>
        <% DemoData data = (DemoData) request.getAttribute("data");%>
        <p><%=data%></p>

        <form action = "<%=request.getContextPath()%>">
            <input type="submit" value="Return to main page"/>
        </form>
    </body>
</html>
