package com.reborn.newlife.base.util;

import java.util.Collection;
import java.util.Map;
import org.apache.commons.collections4.CollectionUtils;

public final class CollectionUtil {
	
	// zero element  => empty
	public static boolean isEmpty(Collection<?> collection) {
		return collection == null || collection.isEmpty();
	}

	public static boolean isNotEmpty(Collection<?> collection) {
		return !isEmpty(collection);
	}

	public static boolean isEmpty(Map<?, ?> map) {
		return map == null || map.isEmpty();
	}

	public static boolean isNotEmpty(Map<?, ?> map) {
		return !isEmpty(map);
	}
	
	// 聯集
	public static Collection<?> union(Collection<?> colLeft, Collection<?> colRight){
		
		return CollectionUtils.union(colLeft, colRight);
	}
	
	// 交集
	public static Collection<?> intersection(Collection<?> colLeft, Collection<?> colRight){
		
		return CollectionUtils.intersection(colLeft, colRight);
	}
	
	// 差集
	public static Collection<?> disjunction(Collection<?> colLeft, Collection<?> colRight){
		
		return CollectionUtils.disjunction(colLeft, colRight);
	}
}






