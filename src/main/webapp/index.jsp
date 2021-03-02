<%-- 
    Document   : index
    Created on : 3 лют. 2021 р., 20:52:49
    Author     : Дмитрий
--%>

<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.manilo.javaproject1.data.Data"%>
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
        <div>
            <h1>Data List</h1>
            <%List<Data> dataList = (List<Data>) request.getAttribute("data");%>
            
            <table>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>age</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
                <%for(Data datas:dataList){%>
                <tr>
                    <td><%=datas.getId()%></td>
                    <td><%=datas.getName()%></td>
                    <td><%=datas.getAge()%></td>
                    <td></td>
                    <td></td>
                </tr>
                <%}%>
                
                <form action="form.jsp">
                    <input type="submit">Add new Data</input>
                </form>
            </table>
        </div>
        <p>My company needs new employees. Please fill out the form below and send the result for further cooperation</p>
        <img class="picture" src="picture/schema.png" alt=""/>
        <form action="<%= request.getContextPath()%>/form" method="get">
            <input class="b1" type="submit" value="Call form"/>
        </form> 
        </div>
    </body>
</html>
