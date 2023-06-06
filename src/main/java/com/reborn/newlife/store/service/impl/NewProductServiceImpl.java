package com.reborn.newlife.store.service.impl;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.reborn.newlife.base.util.DataReader;
import com.reborn.newlife.store.entity.NewProductBean;
import com.reborn.newlife.store.repository.NewProductRepository;
import com.reborn.newlife.store.service.NewProductService;

@Service
public class NewProductServiceImpl implements NewProductService {
	
	@Autowired
	public NewProductRepository newProductRepository;
	
	@Transactional	
	@Override
	public void initialNewProductsData(File file) {
		DataReader dataReader = new DataReader();
		List<NewProductBean> products = dataReader.readDataFromFile(file);
		newProductRepository.saveAllProducts(products);
		
	}
      
}
