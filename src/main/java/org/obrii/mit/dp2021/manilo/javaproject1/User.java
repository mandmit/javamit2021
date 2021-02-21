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
import java.util.Arrays;
import java.util.List;

public class User implements NewInterface{
    
    private String name;
    private String surname;
    private String gender;
    private List<String> language;
    private List<String> proglanguage;
    private String country;
    private boolean know;

    public User() {
    }

    public User(String name, String surname, String gender, String[] language, String[] proglanguage, String country, boolean isKnow) {
        this.name = name;
        this.surname = surname;
        this.gender = gender;
        if(language != null) this.language = Arrays.asList(language);
        if(proglanguage != null) this.proglanguage = Arrays.asList(proglanguage);
        this.country = country;
        this.know = isKnow;
    }

    @Override
    public String getName() {
        return name;
    }
    @Override
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public void setCountry(String country){
        this.country = country;
    }
    @Override
    public String getCountry(){
        return country;
    }
    @Override
    public String getSurname() {
        return surname;
    }
    @Override
    public void setSurname(String surname) {
        this.surname = surname;
    }
    @Override
    public String getGender() {
        return gender;
    }
    @Override
    public void setGender(String gender) {
        this.gender = gender;
    }
    @Override
    public List<String> getLanguage(){
        return language;
    }
    @Override
    public void setLanguage(List<String> language){
        this.language = language;
    }
    @Override
    public List<String> getProgLanguage(){
        return proglanguage;
    }
    @Override
    public void setProgLanguage(List<String> proglanguage){
        this.proglanguage = proglanguage;
    }
    
    @Override
    public String getIsKnow() {
        if(know){
            return "You know and you are awesome";
        }else return "You don`t know";
    }

    @Override
    public String toString() {
        return "Data{" + "name=" + name + ", surname=" + surname + ", gender=" + gender + ", language" + language + ", country" + country + ", programming language " + proglanguage + '}';
    }
}