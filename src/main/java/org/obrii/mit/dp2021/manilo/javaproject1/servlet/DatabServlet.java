/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.obrii.mit.dp2021.manilo.javaproject1.data.Data;
import org.obrii.mit.dp2021.manilo.javaproject1.webjdbc.DBCrud;

/**
 *
 * @author Дмитрий
 */
@WebServlet(name = "DatabServlet", urlPatterns = {"/"})
public class DatabServlet extends HttpServlet {

    DBCrud dbcrud = new DBCrud();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("filter") != null) {
            request.setAttribute("data", dbcrud.sortData(request.getParameter("filter")));
        } else {
            request.setAttribute("data", dbcrud.readData());
        }

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    //"jdbc:postgresql://obrii.org:5432/db2021mit21s12","s12","7854"
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Data user = new Data(
                Integer.parseInt(req.getParameter("id")),
                req.getParameter("name"),
                req.getParameter("surname"),
                Integer.parseInt(req.getParameter("age")),
                Integer.parseInt(req.getParameter("stage")),
                req.getParameter("hobby")
        );
        dbcrud.createData(user);
        doGet(req, resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Data user = new Data(
                Integer.parseInt(req.getParameter("id")),
                req.getParameter("name"),
                req.getParameter("surname"),
                Integer.parseInt(req.getParameter("age")),
                Integer.parseInt(req.getParameter("stage")),
                req.getParameter("hobby")
        );
        dbcrud.updateData(Integer.parseInt(req.getParameter("id")), user);
        doGet(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        dbcrud.deleteData(Integer.parseInt(req.getParameter("id")));
        doGet(req, resp);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
