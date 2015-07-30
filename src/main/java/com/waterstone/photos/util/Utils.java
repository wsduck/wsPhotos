package com.waterstone.photos.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

	public static final int RESTFUL_RET_SUCCESS = 0;

	public static final int RESTFUL_RET_FAILED = 1;

	/**
	 * 格式化时间变量，使之成为日期加时间的格式。
	 * @param time 时间变量
	 * @return 格式化后的日期时间字符串
	 */
	public static String formatDateToHours(Date time) {
		SimpleDateFormat formatter;
		formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ctime = formatter.format(time);
		return ctime;
	}
}
