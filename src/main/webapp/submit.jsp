<%-- 
    Document   : submit
    Created on : 3 лют. 2021 р., 22:28:54
    Author     : Дмитрий
--%>

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
        <h1>Result</h1>
        Name:<%=request.getParameter("name")%><br>
        Gender:<%=request.getParameter("gender")%><br>
        Languages:<%
            String[] lang = request.getParameterValues("language");
            if (lang != null) {
                for (int i = 0; i < lang.length; i++) {
                    out.print("<br>");
                    out.print(lang[i]);
                }
            } else {
                out.print("Name Selected");
            }
        %><br>

        Country:<%=request.getParameter("country")%><br>

        <a href="<%=request.getContextPath()%>">Return</a>
    </body>
</html>
