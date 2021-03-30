/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.webjdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.obrii.mit.dp2021.manilo.javaproject1.data.Data;
import org.obrii.mit.dp2021.manilo.javaproject1.files.Config;
import org.obrii.mit.dp2021.manilo.javaproject1.files.FileCrud;
import org.obrii.mit.dp2021.manilo.javaproject1.servlet.DataCrudInterface;

/**
 *
 * @author Дмитрий
 */
public class DBCrud implements DataCrudInterface {

    private int id = 1;
    private Logger logger;
    private Statement statement;
    private Connection connection;

    public DBCrud() {
        logger = Logger.getLogger(FileCrud.class.getName());
        try {
            Class.forName("org.postgresql.Driver");
            this.connection = DriverManager.getConnection(Config.getURL(), Config.getDbUser(), Config.getDbPass());
            this.connection.setAutoCommit(false);
            this.statement = this.connection.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
    }

    private void SQL(String sql) {
        try {
            statement.executeUpdate(sql);
            connection.commit();
        } catch (SQLException e) {
            logger.log(Level.WARNING, null, e);
        }
    }

    @Override
    public List<Data> readData() {
        try {
            ResultSet result = this.statement.executeQuery("SELECT * FROM users");
            List<Data> data = new ArrayList<>();

            while (result.next()) {
                data.add(new Data(
                        result.getInt("id"),
                        result.getString("name"),
                        result.getString("surname"),
                        result.getInt("age"),
                        result.getInt("stage"),
                        result.getString("hobby")
                ));
            }

            return data;
        } catch (SQLException e) {
            this.logger.log(Level.WARNING, e.toString());
            return new ArrayList<>();
        }

    }

    @Override
    public void createData(Data data) {
        data.setId(id);
        SQL(String.format("INSERT INTO users (name, surname, age, stage, hobby) VALUES ('%s', '%s', %d, %d, '%s');",
                data.getName(), data.getSurname(), data.getAge(), data.getStage(), data.getHobby()));
        id++;
    }

    @Override
    public void deleteData(int id) {
        SQL("DELETE FROM users WHERE id=" + id);

    }

    @Override
    public void updateData(int id, Data data) {
        SQL(String.format("UPDATE users "
                + "SET name='" + data.getName() + "' , "
                + "surname='" + data.getSurname() + "' , "
                + "age=" + data.getAge() + " , "
                + "stage=" + data.getStage() + " , "
                + "hobby='" + data.getHobby() + "' "
                + "WHERE id=" + id)
        );
    }

    @Override
    public List<Data> sortData(String phrase) {
        List<Data> newData = new ArrayList<>();
        for (Data d : this.readData()) {
            if (d.getName().contains(phrase)) {
                newData.add(d);
            }
        }
        return newData;
    }
}
