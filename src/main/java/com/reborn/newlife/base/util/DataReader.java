package com.reborn.newlife.base.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialClob;

import com.reborn.newlife.store.entity.NewProductBean;

public class DataReader {
	
	public List<NewProductBean> readDataFromFile(File file) {
		
		List<NewProductBean> products = new ArrayList<>();

		try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
			String line;
			while ((line = reader.readLine()) != null) {
				NewProductBean product = parseLine(line);
				products.add(product);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return products;
	}

	private NewProductBean parseLine(String line) {
		
		String[] token = line.split("\\|");
		NewProductBean product = new NewProductBean();
		
		try {

			product.setName(token[0]);
			product.setBrand(token[1]);
			product.setPrice(Integer.parseInt(token[2].trim()));
			product.setPurchasePrice(Integer.parseInt(token[3].trim()));
			product.setDiscount(Double.parseDouble(token[4].trim()));
//			Clob clob = fileToClob(realPath + "/" + token[5]);
//			product.setCopy(clob);
//			clob = fileToClob(realPath + "/" + token[6]);
//			product.setDesc(clob);
//			Blob blob = fileToBlob(realPath + "/" + token[7].trim());
//			product.setPicture(blob);
			product.setFileName(extractFileName(token[7].trim()));
			product.setMimeType(token[8]);
			product.setStock(Integer.parseInt(token[9].trim()));
			// 讀取圖片檔
//			blob = fileToBlob(realPath + "/" + token[10].trim());
//			product.setBgpicture(blob);
			product.setBgfileName(extractFileName(token[10].trim()));
//			blob = fileToBlob(realPath + "/" + token[11].trim());
//			product.setLevelpicture(blob);
			product.setLevelfileName(extractFileName(token[11].trim()));
//			blob = fileToBlob(realPath + "/" + token[12].trim());
//			product.setCnpicture(blob);
			product.setCnfileName(extractFileName(token[12].trim()));
		
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return product;
	}

	public static Blob fileToBlob(String imageFileName) throws IOException, SQLException {
		File imageFile = new File(imageFileName);
		long size = imageFile.length();
		byte[] b = new byte[(int) size];
		SerialBlob sb = null;
		try (FileInputStream fis = new FileInputStream(imageFile);) {
			fis.read(b);
			sb = new SerialBlob(b);
		}
		return sb;
	}

	public static Clob fileToClob(String textFileName) throws IOException, SQLException {
		Clob clob = null;
		try (InputStreamReader isr = new InputStreamReader(new FileInputStream(textFileName), "UTF-8");) {
			char[] c = new char[8192];
			StringBuffer buf = new StringBuffer();
			int len = 0;
			while ((len = isr.read(c)) != -1) {
				buf.append(new String(c, 0, len));
			}
			char[] ca = buf.toString().toCharArray();
			clob = new SerialClob(ca);
		}
		return clob;
	}

	public static String extractFileName(String pathName) throws IOException, SQLException {
		return pathName.substring(pathName.lastIndexOf("/") + 1);
	}
}
