package com.reborn.newlife.base.util;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.springframework.beans.factory.config.YamlPropertiesFactoryBean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.util.FileCopyUtils;

import com.reborn.newlife.base.repository.NewProductRepository;
import com.reborn.newlife.base.repository.NewProductRepositoryImpl;
import com.reborn.newlife.base.service.DAOService;

// 僅 Create Table
public class InitialData {
	
	public static void main(String[] args) throws SQLException {
		 // 讀取 YAML 檔案並取得資料庫相關屬性
        Properties properties = readYamlFile("application-dev.yml");

        // 建立資料庫連線
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(properties.getProperty("spring.datasource.druid.driver-class-name"));
        dataSource.setUrl(properties.getProperty("spring.datasource.druid.url"));
        dataSource.setUsername(properties.getProperty("spring.datasource.druid.username"));
        dataSource.setPassword(properties.getProperty("spring.datasource.druid.password"));
//
//        // 使用 dataSource 執行 SQL 語句
//        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
//        executeSqlFromFile(jdbcTemplate, "new_shopping.sql");
        		
        //
		NewProductRepository newProductRepository = new NewProductRepositoryImpl(dataSource);
		DAOService daoService = new DAOService(newProductRepository);
        daoService.saveOrUpdateNewProduct("C:/workby/reborn_new_life/src/main/resources/rez_data/newProduct.txt");
    }
	
	private static Properties readYamlFile(String fileName) {
        Properties properties = new Properties();
        try {
        	ClassPathResource resource = new ClassPathResource(fileName);
            YamlPropertiesFactoryBean yamlFactory = new YamlPropertiesFactoryBean();
            yamlFactory.setResources(resource);
            properties = yamlFactory.getObject();
            System.out.println(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return properties;
    }

    private static void executeSqlFromFile(JdbcTemplate jdbcTemplate, String fileName) {
        try {
            // 讀取 SQL 檔案內容
            ClassPathResource resource = new ClassPathResource(fileName);
            byte[] bytes = FileCopyUtils.copyToByteArray(resource.getInputStream());
            String sql = new String(bytes, StandardCharsets.UTF_8);

            // 執行 SQL 語句
            Connection connection = jdbcTemplate.getDataSource().getConnection();
            Statement statement = connection.createStatement();
            statement.execute(sql);

            // 關閉連線和語句
            statement.close();
            connection.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
