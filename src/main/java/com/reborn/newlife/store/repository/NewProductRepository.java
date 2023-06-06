package com.reborn.newlife.store.repository;

import java.util.List;

import com.reborn.newlife.store.entity.NewProductBean;

public interface NewProductRepository  {
    
	void saveAllProducts(List<NewProductBean> products);
    
}
