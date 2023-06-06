package com.reborn.newlife.store.repository.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import com.reborn.newlife.base.component.BaseJpaRepository;
import com.reborn.newlife.store.entity.NewProductBean;
import com.reborn.newlife.store.repository.NewProductRepository;

@Repository
public class NewProductRepoImpl extends BaseJpaRepository<NewProductBean, Integer> implements NewProductRepository {
	
	public NewProductRepoImpl(EntityManager em) {
		super(NewProductBean.class, em);
	}

	@Override
	public void saveAllProducts(List<NewProductBean> products) {
		saveAll(products);
	}
    
}
