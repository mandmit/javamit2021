/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.data;

import java.io.Serializable;

/**
 *
 * @author Дмитрий
 */
public class Data implements Serializable{
    private int id;
    private String name;
    private String surname;
    private int age;
    private int stage;
    private String hobby;

    public Data() {
    }

    public Data(int id, String name, String surname, int age, int stage, String hobby) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.stage = stage;
        this.hobby = hobby;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getStage() {
        return stage;
    }

    public void setStage(int stage) {
        this.stage = stage;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Data{id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", surname=").append(surname);
        sb.append(", age=").append(age);
        sb.append(", stage=").append(stage);
        sb.append(", hobby=").append(hobby);
        sb.append('}');
        return sb.toString();
    }
    
    
}


