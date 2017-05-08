package com.oc.util;

public class MyStringUtils {
	/**
	 * 把长的字符串转换成Index个字符+...
	 * @param content
	 * @return
	 */
	public static String subStr(String content,Integer index){
		if(content!=null){
			if(content.length()>=index){
				return content.substring(0, index)+"...";
			}else{
				return content;
			}
		}
		return "";
	}

}
