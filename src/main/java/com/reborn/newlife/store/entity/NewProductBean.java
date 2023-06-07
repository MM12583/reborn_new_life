package com.reborn.newlife.store.entity;

import java.sql.Blob;
import java.sql.Clob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.reborn.newlife.base.component.EntityLogListener;
import com.reborn.newlife.base.component.TableEntity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@SuppressWarnings("serial")
@Table(name = "NewProduct")
@Entity
@EntityListeners(EntityLogListener.class)
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class NewProductBean extends TableEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(columnDefinition = "INT(8) ZEROFILL")
	Integer id;
	
	String name;
	
	String brand;
	
	@Column(columnDefinition = "DECIMAL(6,0)")
	Integer price;
	
	@Column(columnDefinition = "DECIMAL(6,0)")
	Integer purchasePrice;
	
	@Column(columnDefinition = "DECIMAL(3,1) default 1.0")
	Double discount;
	
	Clob copy;
	
	@Column(name = "`desc`")
	Clob desc;
	
	Blob picture;
	
	String fileName;
	
	String mimeType;
	
	Integer stock;
	
	Blob bgpicture;
	
	String bgfileName;
	
	Blob levelpicture;
	
	String levelfileName;
	
	Blob cnpicture;
	
	String cnfileName;

	@Transient
	MultipartFile productImage;
	
//	@Override
//	public String toString() {
//		StringBuilder builder = new StringBuilder();
//		builder.append("NewProductBean [id=");
//		builder.append(id);
//		builder.append(", name=");
//		builder.append(name);
//		builder.append(", brand=");
//		builder.append(brand);
//		builder.append(", price=");
//		builder.append(price);
//		builder.append(", purchasePrice=");
//		builder.append(purchasePrice);
//		builder.append(", discount=");
//		builder.append(discount);
//		builder.append(", copy=");
//		builder.append(copy);
//		builder.append(", desc=");
//		builder.append(desc);
//		builder.append(", picture=");
//		builder.append(picture);
//		builder.append(", fileName=");
//		builder.append(fileName);
//		builder.append(", mimeType=");
//		builder.append(mimeType);
//		builder.append(", stock=");
//		builder.append(stock);
//		builder.append(", bgpicture=");
//		builder.append(bgpicture);
//		builder.append(", bgfileName=");
//		builder.append(bgfileName);
//		builder.append(", levelpicture=");
//		builder.append(levelpicture);
//		builder.append(", levelfileName=");
//		builder.append(levelfileName);
//		builder.append(", cnpicture=");
//		builder.append(cnpicture);
//		builder.append(", cnfileName=");
//		builder.append(cnfileName);
//		builder.append(", productImage=");
//		builder.append(productImage);
//		builder.append("]");
//		return builder.toString();
//	}
}
