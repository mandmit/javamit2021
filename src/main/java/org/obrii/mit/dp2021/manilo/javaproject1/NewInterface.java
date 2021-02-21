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
import java.util.List;

public interface NewInterface {
    
    String getName();
    void setName(String name);
    
    String getSurname();
    void setSurname(String surname);
    
    String getGender();
    void setGender(String gender);
    
    List<String> getLanguage();
    void setLanguage(List<String> language);
    
    List<String> getProgLanguage();
    void setProgLanguage(List<String> proglanguage);
    
    String getCountry();
    void setCountry(String country);
    
    String getIsKnow();
}
