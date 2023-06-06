package com.reborn.newlife.store.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reborn.newlife.base.component.BaseNewLife;
import com.reborn.newlife.store.service.NewProductService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "商品項目")
@RestController
public class ProductController extends BaseNewLife {
	
	@Autowired
	public NewProductService newProductService;
	
	@ApiOperation(value = "初始化 NewProduct 資料", httpMethod = "GET")
	@GetMapping(path = "/initNewProduct")
	public String initNewProductsData() {
		
		log.info("Start initial NewProduct Data");
		
		String filePath;
		try {
			filePath = ResourceUtils.CLASSPATH_URL_PREFIX + "rez_data/newProduct.txt";
			File file = ResourceUtils.getFile(filePath);
			newProductService.initialNewProductsData(file);
			log.info("Initial NewProduct Data Success");
			return "初始化 NewProduct 資料成功 !";
		} catch (Exception e) {
			log.info("Initial NewProduct Data failed");
			log.error(e.getMessage());
			return "初始化 NewProduct 資料失敗 !";
		}
		
		
		
	}
	
}










