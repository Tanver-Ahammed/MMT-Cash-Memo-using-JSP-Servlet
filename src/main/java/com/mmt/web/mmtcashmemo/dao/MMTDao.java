package com.mmt.web.mmtcashmemo.dao;

import com.mmt.web.mmtcashmemo.entity.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MMTDao {
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    private String INSERT_SQL = "INSERT INTO customer (name, address, contact, date, urea, mop, tsp, dap) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

    private String DRIVER = "com.mysql.cj.jdbc.Driver";
    private String URL = "jdbc:mysql://docker-mysql:3306/mmt?allowPublicKeyRetrieval=true&useSSL=false";
    private String USER = "root";
    private String PASSWORD = "12345";

    private Connection getConnection() {
        Connection con = null;
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public int insertCustomer(Customer customer) {
        int affectedRows = 0;
        this.connection = this.getConnection();
        try {
            this.preparedStatement = this.connection.prepareStatement(INSERT_SQL);
            this.preparedStatement.setString(1, customer.getName());
            this.preparedStatement.setString(2, customer.getAddress());
            this.preparedStatement.setString(3, customer.getContact());
            this.preparedStatement.setString(4, customer.getDate());
            this.preparedStatement.setInt(5, customer.getUrea());
            this.preparedStatement.setInt(6, customer.getMop());
            this.preparedStatement.setInt(7, customer.getTsp());
            this.preparedStatement.setInt(8, customer.getDap());
            affectedRows = this.preparedStatement.executeUpdate();
            this.preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return affectedRows;
    }

    public Customer searchByMemoNo(int memoNum) {
        Customer customer = null;
        String Search_SQL_MemoNO = "SELECT * FROM customer WHERE memoNo = ?;";
        this.connection = this.getConnection();
        try {
            this.preparedStatement = this.connection.prepareStatement(Search_SQL_MemoNO);
            this.preparedStatement.setInt(1, memoNum);
            this.resultSet = this.preparedStatement.executeQuery();
            while (this.resultSet.next()) {
                int memoNo = this.resultSet.getInt("memoNo");
                String name = this.resultSet.getString("name");
                String address = this.resultSet.getString("address");
                String contact = this.resultSet.getString("contact");
                String date = this.resultSet.getString("date");
                int urea = this.resultSet.getInt("urea");
                int mop = this.resultSet.getInt("mop");
                int tsp = this.resultSet.getInt("tsp");
                int dap = this.resultSet.getInt("dap");
                customer = new Customer(memoNo, name, address, contact, date, urea, mop, tsp, dap);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    public List<Customer> searchByCusName(String cus_Name) {
        List<Customer> customerList = new ArrayList<>();
        String Search_SQL_CusNAME = "SELECT * FROM customer;";
        this.connection = this.getConnection();
        try {
            this.preparedStatement = this.connection.prepareStatement(Search_SQL_CusNAME);
            this.resultSet = this.preparedStatement.executeQuery();
            while (this.resultSet.next()) {
                int memoNo = this.resultSet.getInt("memoNo");
                String name = this.resultSet.getString("name");
                String contact = this.resultSet.getString("contact");
                customerList.add(new Customer(memoNo, name, contact));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

}
