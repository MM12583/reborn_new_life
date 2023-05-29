package com.reborn.newlife.base.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.apache.commons.lang3.time.DateUtils;

public final class DateUtil {
	
	public static final String  DEFAULT_PATTERN = "yyyy-MM-dd";
	public static final String DEFAULT_PATTERN_HAS_TIME = "yyyy-MM-dd HH:mm:ss";
	
	public static Date now() {
		return new Date();
	}
	
	// sql between 右閉合問題
	public static Date toDateEnd(Date date) {
		
		DateUtils.addHours(date, 23);
		DateUtils.addMinutes(date, 59);
		DateUtils.addMilliseconds(date, 59);
		
		return date;
	}
	
	// 相差時間
	public static Period getPeriod(Date statDate, Date enDate) {
		return Period.between(convertToLocalDate(statDate), convertToLocalDate(enDate));
	}
	
	public static LocalDate convertToLocalDate(Date date) {
	    return date.toInstant()
	      .atZone(ZoneId.systemDefault())
	      .toLocalDate();
	}

	public static Date parseDate(String rawDate, String pattern) throws ParseException {
		Date date = null;
		if (rawDate != null) {
			SimpleDateFormat dateFormatter = new SimpleDateFormat(pattern);
			date = dateFormatter.parse(rawDate);
		}

		return date;
	}
	
	public static String parseStr(Date rawDate, String pattern) throws ParseException {
		
		DateFormat dateFormat = new SimpleDateFormat(pattern);
		String dateToStr = dateFormat.format(rawDate);
		
		return dateToStr;
	}

	public static Timestamp getTimestamp() {
		return new Timestamp(System.currentTimeMillis());
	}

	public static Timestamp getTimestamp(Date date) {
		return date == null ? null : new Timestamp(date.getTime());
	}
	
	public static java.sql.Date getSqlDate() {
		return new java.sql.Date(System.currentTimeMillis());
	}

	public static java.sql.Date getSqlDate(Date date) {
		return date == null ? null : new java.sql.Date(date.getTime());
	}
	
	public static Calendar getCalendar() {
		return GregorianCalendar.getInstance();
	}
	
	public static Calendar getSpecCalendar(int year, int month, int day) {
		// month 0 開始
		--month;
		return new GregorianCalendar(year, month, day);
	}
}



