/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package murach.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import murach.business.Product;
import murach.dao.ProductDAO;
import murach.util.DBConnection;

/**
 *
 * @author curti
 */
public class ProductDAOImpl implements ProductDAO{
    
    private int noOfRecords;
    private DBConnection connection;

    public ProductDAOImpl(String driver, String localhost, String database,String username, String password) throws ClassNotFoundException, SQLException {
        connection = new DBConnection(driver, localhost, database, username, password);
    }

    @Override
    public List<Product> showAllProduct(int offSet, int noOfRecords) throws SQLException {
        String sql = "SELECT SQL_CALC_FOUND_ROWS * FROM product limit "+offSet+","+noOfRecords;
        List<Product> productList = new ArrayList<Product>();
        connection.initStatement(sql);
        ResultSet rs = connection.executeQuery();
        while(rs.next()){
        productList.add(new Product(rs.getLong("productId"), rs.getString("code"),
                rs.getString("description"), rs.getDouble("price")));
        }
        
        sql = "SELECT FOUND_ROWS()";
        connection.initStatement(sql);
        rs = connection.executeQuery();
        while(rs.next()){
        this.noOfRecords = rs.getInt(1);
        }
        return productList;
    }

    public int getNoOfRecords() {
        return noOfRecords;
    }
    
    
}
