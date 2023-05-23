package com.reborn.newlife.base.repository;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.RollbackException;

import org.springframework.data.jpa.repository.JpaRepository;

import com.reborn.newlife.base.entity.NewProductBean;

public interface NewProductRepository {
    void saveOrUpdateNewProduct(List<NewProductBean> products) throws SQLException;
    
}
