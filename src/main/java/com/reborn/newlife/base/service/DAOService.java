package com.reborn.newlife.base.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reborn.newlife.base.entity.NewProductBean;
import com.reborn.newlife.base.repository.NewProductRepository;
import com.reborn.newlife.base.util.DataReader;

@Service
public class DAOService {
	
	public final NewProductRepository newProductRepository;

	
    @Autowired
    public DAOService(NewProductRepository newProductRepository) {
        this.newProductRepository = newProductRepository;
    }

    public void saveOrUpdateNewProduct(String fileName) throws SQLException {
    	DataReader dataReader = new DataReader();
    	List<NewProductBean> products = dataReader.readDataFromFile(fileName);
    	newProductRepository.saveOrUpdateNewProduct(products);
    }
      
}
