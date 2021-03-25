/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.servlet;

import java.util.List;
import org.obrii.mit.dp2021.manilo.javaproject1.data.Data;

/**
 *
 * @author Дмитрий
 */
public interface DataCrudInterface {

    void createData(Data data);

    void deleteData(int id);

    List<Data> readData();

    void updateData(int id, Data data);
    
    public List<Data> sortData(String word);
}
