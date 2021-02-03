<%-- 
    Document   : newjsp
    Created on : 3 лют. 2021 р., 22:03:08
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
        <h1>Simple form</h1>
        <form action="submit.jsp" method="post">

            <input type="hidden" name="title" value="Submited"/>

            Full name: <input type="text" name="name"/><br>

            Gender:
            <input type="radio" name="gender" value="male"/>Male
            <input type="radio" name="gender" value="female"/>Female <br>

            Languages:
            <input type="checkbox" name="language" value="English"/>English
            <input type="checkbox" name="language" value="Ukraine"/>Ukraine
            <input type="checkbox" name="language" value="Japan"/>Japan
            <input type="checkbox" name="language" value="French"/>French <br>

            Country:
            <select name="country">
                <option value="Ukraine">Ukraine</option>
                <option value="USA">USA</option>
                <option value="UK">UK</option>
                <option value="Japane">Japane</option>
                <option value="Argentina">Argentina</option>
            </select><br>

            <input type="submit" value="Submit">
        </form>
    </body>
</html>
