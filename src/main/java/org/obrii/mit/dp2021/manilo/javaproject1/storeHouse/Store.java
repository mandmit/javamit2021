/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.storeHouse;

import java.util.ArrayList;
import java.util.List;
import org.obrii.mit.dp2021.manilo.javaproject1.data.Data;

/**
 *
 * @author Дмитрий
 */
public class Store {
    
    private static Store storeInstance = new Store();
    private static List<Data> dataStore;
    private Store(){
        dataStore = new ArrayList<>();
        dataStore.add(new Data(0,"Dmitry",18));
        dataStore.add(new Data(1,"Manilo",20));
    }
    
    public static Store getInstance(){
        return storeInstance;
    }
    
    public static List<Data> getStore(){
        return dataStore;
    }
    
}
