/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.housestore;

import java.util.List;
import org.obrii.mit.dp2021.manilo.javaproject1.data.Data;

/**
 *
 * @author Дмитрий
 */
public class StoreCrud {

    private List<Data> dataList = Store.getStore();

    public StoreCrud() {

    }

    public void createData(Data data) {
        data.setId(dataList.size());
        dataList.add(data);
    }

    public List<Data> readData() {
        return dataList;
    }

    public void updateData(int id, Data data) {
        data.setId(id);
        dataList.set(id, data);

    }

    public void deleteData(int id) {
        dataList.remove(id);
    }
}
