package com.reborn.newlife.base.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import com.reborn.newlife.base.entity.NewProductBean;

public class NewProductRepositoryImpl implements NewProductRepository {
    private final DataSource dataSource;

    public NewProductRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public void saveOrUpdateNewProduct(List<NewProductBean> products) throws SQLException {
    	
        try (Connection connection = dataSource.getConnection()) {
        	String sql = "INSERT INTO NewProduct (id, name, brand, price, purchasePrice, discount, copy, `desc`, picture, fileName, mimeType, stock, bgpicture, bgfileName, levelpicture, levelfileName, cnpicture, cnfileName) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " +
                    "ON DUPLICATE KEY UPDATE name = VALUES(name), " +
                    "brand = VALUES(brand), price = VALUES(price), purchasePrice = VALUES(purchasePrice), discount = VALUES(discount), copy = VALUES(copy), `desc` = VALUES(`desc`), picture = VALUES(picture), fileName = VALUES(fileName), " +
        	        "mimeType = VALUES(mimeType), stock = VALUES(stock), bgpicture = VALUES(bgpicture), bgfileName = VALUES(bgfileName), levelpicture = VALUES(levelpicture), levelfileName = VALUES(levelfileName), cnpicture = VALUES(cnpicture), " +
                    "cnfileName = VALUES(cnfileName) ";
        	PreparedStatement statement = connection.prepareStatement(sql);
        	String count = "00000001";
        	for (NewProductBean product : products) {
        		statement.setInt(1, Integer.parseInt(count));
                statement.setString(2, product.getName());
                statement.setString(3, product.getBrand());
                statement.setInt(4, product.getPrice());
                statement.setInt(5, product.getPurchasePrice());
                statement.setDouble(6, product.getDiscount());
                statement.setClob(7, product.getCopy());
                statement.setClob(8, product.getDesc());
                statement.setBlob(9, product.getPicture());
                statement.setString(10, product.getFileName());
                statement.setString(11, product.getMimeType());
                statement.setInt(12, product.getStock());
                statement.setBlob(13, product.getBgpicture());
                statement.setString(14, product.getBgfileName());
                statement.setBlob(15, product.getLevelpicture());
                statement.setString(16, product.getLevelfileName());
                statement.setBlob(17, product.getCnpicture());
                statement.setString(18, product.getCnfileName());

                // 執行數據庫操作
                statement.executeUpdate();
                
                count = String.format("%08d", Integer.parseInt(count) + 1); 
            }
        } catch (SQLException e) {
           throw new SQLException("executeUpdate fail: "+e);
        }
    }

    
}
