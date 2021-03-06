/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.files;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.obrii.mit.dp2021.manilo.javaproject1.data.Data;
import org.obrii.mit.dp2021.manilo.javaproject1.servlet.DataCrudInterface;

/**
 *
 * @author Дмитрий
 */
public class FileCrud implements DataCrudInterface {

    private File file;
    
    public FileCrud(File file) {
        this.file = file;
    }
    
    public FileCrud() {
    }

    public File getFile() {
        return file;
    }
    
    public void setFileName(File file) {
        this.file = file;
    }

    @Override
    public void writeData(List<Data> data) {
        try (FileOutputStream fos = new FileOutputStream(file);
                ObjectOutputStream oos = new ObjectOutputStream(fos)) {
            data.stream().forEach(d -> {
                try {
                    oos.writeObject(d);
                } catch (IOException ex) {
                    Logger.getLogger(FileCrud.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileCrud.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FileCrud.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    @Override
    public List<Data> readData() {
        try (FileInputStream fis = new FileInputStream(file);
                ObjectInputStream ois = new ObjectInputStream(fis)) {
            List<Data> result = new ArrayList<>();
            while (fis.available() > 0) {
                result.add((Data) ois.readObject());
            }

            return result;

        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileCrud.class.getName()).log(Level.SEVERE, null, ex);
            return new ArrayList<Data>();
        } catch (IOException | ClassNotFoundException ex) {
            Logger.getLogger(FileCrud.class.getName()).log(Level.SEVERE, null, ex);
            return new ArrayList<Data>();
        }
    }

    @Override
    public void updateData(int id, Data data) {
        List<Data> newData = new ArrayList<>();
        data.setId(id);
        for (Data d : this.readData()) {
            if (d.getId() != id) {
                newData.add(d);
            } else {
                newData.add(data);
            }
        }
        this.writeData(newData);
    }

    @Override
    public void createData(Data data) {
        List<Data> dataList = this.readData();
        data.setId(dataList.size());
        dataList.add(data);
        this.writeData(dataList);
    }

    @Override
    public void deleteData(int id) {
        List<Data> newData = new ArrayList<>();
        int index = 0;
        for (Data d : this.readData()) {
            if (d.getId() != id) {
                d.setId(index);
                newData.add(d);
                index++;
            }
        }
        this.writeData(newData);
    }
}
