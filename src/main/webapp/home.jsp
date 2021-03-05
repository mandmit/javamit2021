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
        <title>Manilo Dmytro</title>
    </head>
    <body>
        <div class="wrapper">
            <h1>Welcome to main page</h1>
            <div>
                <%String filterString = request.getParameter("filter");
                if(filterString == null){
                    filterString = "";
                }%>
                <form action="<%=request.getContextPath()%>/" method="get">
                    <input name="filter" type="text" value="<%=filterString%>"/>
                    <input type="submit" value="Filter"/>
                </form>
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
                    <%for (Data datas : dataList) {
                    if(datas.getName().contains(filterString)){%>
                    <tr>
                        <td><%=datas.getId()%></td>
                        <td><%=datas.getName()%></td>
                        <td><%=datas.getAge()%></td>
                        <td>
                            <form action="form_update.jsp" method="post">
                                <input type="hidden" name="id" value="<%=datas.getId()%>"/>
                                <input type="hidden" name="name" value="<%=datas.getName()%>"/>
                                <input type="hidden" placeholder="integer" name="age" value="<%=datas.getAge()%>"/>
                                <input type="submit" value="Update"/>
                            </form>
                        </td>
                        <td>
                            <form action="<%=request.getContextPath()%>/form" method="get">
                                <input type="hidden" name="id" value="<%=datas.getId()%>"/>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                    <%}}%>
                </table>
            </div>
                <form action="form.jsp" method="get">
                <input type="submit" value="Add data"/>
            </form>
        </div>
    </body>
</html>