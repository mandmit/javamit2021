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
        <div class="wrapper">
        <h1>Please fill out the form below</h1>
        <form action="<%= request.getContextPath()%>/form" method="post">

            <input type="hidden" name="title" value="Submited"/>
            
            <div class="name">
                Name: <input class="b3" type="text" name="name"/><br>
            </div>
            
            <div class="name">
                Surname: <input class="b3" type="text" name="surname"/><br>
            </div>
            
            <div class="name">
            Gender:
            <input type="radio" name="gender" value="male"/>Male
            <input type="radio" name="gender" value="female"/>Female <br>
            </div>
            
            <div class="languages">
                <div>
            Languages:
                </div>
                <div>
            <input type="checkbox" name="language" value="English"/>English
            <input type="checkbox" name="language" value="Ukraine"/>Ukraine
            <input type="checkbox" name="language" value="Japan"/>Japan
            <input type="checkbox" name="language" value="French"/>French <br>
            </div>
                </div>
            
            <div class="languages">
                <div>
            Programming Languages:
                </div>
                <div>
                    <input type="checkbox" name="proglanguage" value="Python"/>Python
                    <input type="checkbox" name="proglanguage" value="C#"/>C#
                    <input type="checkbox" name="proglanguage" value="C++"/>C++
                    <input type="checkbox" name="proglanguage" value="C"/>C
                    <input type="checkbox" name="proglanguage" value="Java"/>Java <br>
                </div>
                </div>
            
            <div class="country">
            Country:
            <select class="b2" name="country">
                <option value="Ukraine">Ukraine</option>
                <option value="USA">USA</option>
                <option value="UK">UK</option>
                <option value="Japane">Japane</option>
                <option value="Argentina">Argentina</option>
            </select><br>
            </div>
            
            <div>
                Do you know about Cachi?
                <input type="checkbox" name="isKnow" value="on">
            </div>

            <div class="bnts">
            <input class="b1" type="submit" value="Submit">
            <input class="b1" type="reset" value="Reset form">
            </div>
        </form>
        </div>
    </body>
</html>