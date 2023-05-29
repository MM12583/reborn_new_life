package com.reborn.newlife.base.util;

import org.apache.commons.lang3.StringUtils;

public final class StrUtil {
	
	public static String trim(String s) {
		if (s == null) {
			return null;
		} else {
			return s.isEmpty() ? "" : s.trim();
		}
	}

	public static String[] split(String str, char delimiter) {
		return StringUtils.splitPreserveAllTokens(str, delimiter);
	}

	public static String[] split(String str, String delimiter) {
		return StringUtils.splitPreserveAllTokens(str, delimiter);
	}
	
	public static String firstCharToUpperCase(String str) {
		return changeFirstCharacterCase(str, true);
	}

	public static String firstCharTolowercase(String str) {
		return changeFirstCharacterCase(str, false);
	}

	private static String changeFirstCharacterCase(String str, boolean capitalize) {
		if (str != null && str.length() != 0) {
			StringBuilder sb = new StringBuilder(str.length());
			if (capitalize) {
				sb.append(Character.toUpperCase(str.charAt(0)));
			} else {
				sb.append(Character.toLowerCase(str.charAt(0)));
			}

			sb.append(str.substring(1));
			return sb.toString();
		} else {
			return str;
		}
	}

	public static String join(String[] strs, String delimiter) {
		
		if (null == strs) return null;
			
		StringBuilder sb = new StringBuilder();

		for (int i = 0; i < strs.length; ++ i) {
			if (i > 0) {
				sb.append(delimiter);
			}

			sb.append(strs[i]);
		}

		return sb.toString();
	}

	public static boolean isEmpty(String str) {
		boolean empty = false;
		if (str == null || str.trim().isEmpty()) {
			empty = true;
		}

		return empty;
	}

	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}

}










