/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Дмитрий
 */
public abstract class Application {
    
    protected NewInterface user;
    public Application() {
    }
    
    public void setUser(HttpServletRequest request){
        user = new User(
        request.getParameter("name"),
        request.getParameter("surname"),
        request.getParameter("gender"),
        request.getParameterValues("language"),
        request.getParameterValues("proglanguage"),
        request.getParameter("country"),false);
    }
    
    public abstract void setUser(HttpServletRequest request, boolean isKnow);
    
    final public NewInterface getUser(){
    return user;
    }
    
}
