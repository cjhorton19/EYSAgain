/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package murach.dao;

import java.sql.SQLException;
import java.util.List;
import murach.business.Product;

/**
 *
 * @author Dell
 */
public interface ProductDAO {
    
    public List<Product> showAllProduct(int offSet, int noOfRecords) throws SQLException;
    public int getNoOfRecords();
    
}
