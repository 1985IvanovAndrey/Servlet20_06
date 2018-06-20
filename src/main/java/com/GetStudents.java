package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GetStudents {

    ArrayList<Student> studentsList = new ArrayList<>();


    public ArrayList<Student> getStudentsList() throws SQLException {
        String script = "Select * From studentsmanandwoman";
        Connection connection = null;
        ConnectionToBd connectionToBd = new ConnectionToBd();
        connection = connectionToBd.myCreateConnection();
        PreparedStatement pr = connection.prepareStatement(script);
        ResultSet rs = pr.executeQuery();
        while (rs.next()) {
            studentsList.add(new Student(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
        }
        return studentsList;
    }
}


