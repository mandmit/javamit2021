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
        <title>Home probal</title>
    </head>
    <body>
        <h1>JSP code</h1>

        <% out.print("word");%> </br>

        <%= "Handsome"%> </br>

        <%! String s = "54";%>

        <%= s%></br>

        <%! public String message() {
                return "This is method output";
            }
        %>

        <%= message()%>

        <% for (int i = 0; i < 10; i++) {%>

        <p>Some text. i = <%=i%></p>

        <%! int j = 0;%>
        <% j++;
            j = j + i;%>
        <p>j = <%=j%></p>

        <%};%>

        <%@ page import="java.util.Date,org.obrii.mit.dp2021.manilo.javaproject1.DemoData"%>
        </br>
        <%=new Date()%>
        </br>
        <% out.print(new DemoData(1, "Dima", "Manilo").toString());%>
        </br>

        <%
            out.println("Value 1: " + request.getParameter("param1"));
            out.println("Value 2: " + request.getParameter("param2"));
        %>

        <%-- response.sendRedirect("https://dp2021.mit.obrii.org");--%>
        <%-- request.getRequestDispatcher("forward.jsp").forward(request, response);--%>

        <form action="forward.jsp" method="post">
            <input type="hidden" name="title" value="Forwarded page"/>
            <input type="submit" value="Forward"/>
        </form> 
    </body>
</html>
