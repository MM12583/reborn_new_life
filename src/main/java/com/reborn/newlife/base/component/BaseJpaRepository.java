package com.reborn.newlife.base.component;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.support.JpaEntityInformationSupport;
import org.springframework.data.jpa.repository.support.QuerydslJpaPredicateExecutor;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.data.querydsl.SimpleEntityPathResolver;

public abstract class BaseJpaRepository<T, ID> extends SimpleJpaRepository<T, ID> {

    public EntityManager em;
    protected final QuerydslJpaPredicateExecutor<T> jpaPredicateExecutor;

    BaseJpaRepository(Class<T> domainClass, EntityManager em) {
        super(domainClass, em);
        this.em = em;
        this.jpaPredicateExecutor = 
        		new QuerydslJpaPredicateExecutor<>(
        				JpaEntityInformationSupport.getEntityInformation(domainClass, em), 
        				em, 
        				SimpleEntityPathResolver.INSTANCE, getRepositoryMethodMetadata());
    }
}
