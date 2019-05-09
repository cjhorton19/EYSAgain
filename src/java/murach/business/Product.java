/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;

/**
 *
 * @author curti
 */
public class Product implements Serializable{

    private long productId;    
    private String code;
    private String description;
    private double price;

    public Product() {}

    public Product(long productId, String code, String description, double price) {
        this.productId = productId;
        this.code = code;
        this.description = description;
        this.price = price;
    }
    
    public long getId() {
        return productId;
    }

    public void setId(long productId) {
        this.productId = productId;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }

    public String getImageURL() {
        String imageURL = "/EYS582019/images/" + "w" + productId + ".jpg";
        return imageURL;
    }

    public String getProductType() {
        return "Men's T-Shirts";
    }
}
