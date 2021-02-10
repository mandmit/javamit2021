/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Дмитрий
 */
public class DemoData {
    
    private int id;
    private String name;
    private String surname;
    private String gender;
    private List<String> language;
    private String country;

    public DemoData() {
    }

    public DemoData(String name, String surname, String gender, String[] language, String country) {
        this.name = name;
        this.surname = surname;
        this.gender = gender;
        if(language != null) this.language = Arrays.asList(language);
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }
    
    public void setCountry(String country){
        this.country = country;
    }
    
    public String getCountry(){
        return country;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public List<String> getLanguage(){
        return language;
    }
    
    public void setLanguage(List<String> language){
        this.language = language;
    }

    @Override
    public String toString() {
        return "Data{" + ", name=" + name + ", surname=" + surname + ", gender=" + gender + ", language" + language + ", country" + country + '}';
    }
    
    
    
}
