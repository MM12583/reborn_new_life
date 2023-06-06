package com.reborn.newlife.base.component;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@SuppressWarnings("serial")
@Getter
@Setter
public abstract class TableEntity implements Serializable {
	
	private String createBy;
	
	private Timestamp createDt;
}
