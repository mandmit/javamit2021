/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1;

/**
 *
 * @author Дмитрий
 */
public class Display implements OldDisplayInterface{
    
    @Override
    public String showMessage(OldInterface oldInterface){
        
        return oldInterface.getName();
    }
    
    
}
