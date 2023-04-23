package com.walk.mall.tiny.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/**
 * 日期处理
 * @author Mark sunlightcs@gmail.com
 */
public class DateUtils {
    /** 时间格式(yyyy-MM-dd) */
    public final static String DATE_PATTERN = "yyyy-MM-dd";
    public final static String DATE = "yyyyMMdd";
    public final static String DATE_TIME = "yyyyMMddHHmmss";
    public final static String MONTH_DAY_PATTERN = "MM-dd";
    /** 时间格式(yyyy-MM-dd HH:mm:ss) */
    public final static String DATE_TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";
    public final static String DATE_DAY = "yyyy-MM-dd";

    public final static String TIME = "HH:mm:ss";

    /**
     * 时间转换
     * @param date
     * @return
     */
    public static Date getDate(String date,String pattern) {
        DateFormat dateFormat = new SimpleDateFormat(pattern);
        try {
            dateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
            return dateFormat.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }
    /**
     * 日期格式化 日期格式为：yyyy-MM-dd
     * @param date  日期
     * @return 返回yyyy-MM-dd格式日期
     */
    public static String format(Date date) {
        return format(date, DATE_PATTERN);
    }

    /**
     * 日期格式化 日期格式为：yyyy-MM-dd HH:mm:ss
     * @param date  日期
     * @return 返回yyyy-MM-dd HH:mm:ss格式日期
     */
    public static String formatLong(Date date) {
        return format(date, DATE_TIME_PATTERN);
    }


    /**
     * 日期格式化 日期格式为：yyyy-MM-dd
     * @param date  日期
     * @return 返回yyyy-MM-dd格式日期
     */
    public static String getTime(Date date) {
        return format(date, TIME);
    }
    /**
     * 日期格式化 日期格式为：yyyy-MM-dd
     * @param date  日期
     * @param pattern  格式，如：DateUtils.DATE_TIME_PATTERN
     * @return 返回yyyy-MM-dd格式日期
     */
    public static String format(Date date, String pattern) {
        if (date != null) {
            SimpleDateFormat df = new SimpleDateFormat(pattern);
            return df.format(date);
        }
        return null;
    }

    /**
     * 对日期的【秒】进行加/减
     * @param date 日期
     * @param seconds 秒数，负数为减
     * @return 加/减几秒后的日期
     */
    public static Date addDateSeconds(Date date, int seconds) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.add(Calendar.SECOND, seconds);
        date = calendar.getTime();
        return date;
    }

    /**
     * 对日期的【分钟】进行加/减
     * @param date 日期
     * @param minutes 分钟数，负数为减
     * @return 加/减几分钟后的日期
     */
    public static Date addDateMinutes(Date date, int minutes) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.add(Calendar.MINUTE, minutes);
        date = calendar.getTime();
        return date;
    }

    /**
     * 对日期的【小时】进行加/减
     * @param date 日期
     * @param hours 小时数，负数为减
     * @return 加/减几小时后的日期
     */
    public static Date addDateHours(Date date, int hours) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.add(Calendar.HOUR, hours);
        date = calendar.getTime();
        return date;
    }

    /**
     * 对日期的【天】进行加/减
     * @param date 日期
     * @param days 天数，负数为减
     * @return 加/减几天后的日期
     */
    public static Date addDateDays(Date date, int days) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        //把日期往后增加一天.整数往后推,负数往前移动
        calendar.add(Calendar.DATE, days);
        date = calendar.getTime();
        return date;
    }

    /**
     * 对日期的【天】进行加/减
     * @param date 日期
     * @param months 月数，负数为减
     * @return 加/减几天后的日期
     */
    public static Date addDateMonths(Date date, int months) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        //把日期往后增加一天.整数往后推,负数往前移动
        calendar.add(Calendar.MONTH, months);
        date = calendar.getTime();
        return date;
    }

    /**
     * 对日期的【周】进行加/减
     * @param date 日期
     * @param weeks 周数，负数为减
     * @return 加/减几周后的日期
     */
    public static Date addDateWeeks(Date date, int weeks) {
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        //把日期往后增加一天.整数往后推,负数往前移动
        calendar.add(Calendar.DATE, weeks*7);
        date = calendar.getTime();
        return date;
    }

    /**
     *
     * @param time
     * @return
     */
    public static Integer seconds(String time){
        if (!time.contains(":")) {
            return 0;
        }else {
            String[]array1 = time.split(":");
            return Integer.valueOf(array1[0])*3600+Integer.valueOf(array1[1])*60+Integer.valueOf(array1[2]);
        }
    }

    /**
     * 当前天的最初一刻
     * @param date
     * @return
     * @throws ParseException
     */
    public static Date getFirstTime(Date date){
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    /**
     * 当月的最初一天
     * @param date
     * @return
     * @throws ParseException
     */
    public static Date getFirstDay(Date date){
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        return calendar.getTime();
    }

    /**
     * 当月的最后一天
     * @param date
     * @return
     * @throws ParseException
     */
    public static Date getLastDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int last = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        calendar.set(Calendar.DAY_OF_MONTH, last);
        return calendar.getTime();
    }

    /**
     * 当前天的最后一刻
     * @param date
     * @return
     * @throws ParseException
     */
    public static Date getLastTime(Date date){
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        calendar.add(Calendar.DAY_OF_MONTH, 1);
        calendar.add(Calendar.SECOND, -1);
        return calendar.getTime();
    }


    /**
     * 今天的最初的时间
     * @return
     */
    public static Long getTodayStartTimeStamp(){
        return getFirstTime(new Date()).getTime()/1000;
    }

    /**
     * 今天的最后的时间
     * @return
     */
    public static Long getTodayEndTimeStamp(){
        return getLastTime(new Date()).getTime()/1000;
    }

    public static Date getDate(String date) {
        DateFormat format = new SimpleDateFormat(DATE_TIME_PATTERN);
        try {
            format.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
            return format.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }

    public static Date getDateYMD(String date) {
        DateFormat format = new SimpleDateFormat(DATE_PATTERN);
        try {
            format.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
            return format.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * 返回年份
     * @param date
     * @return
     */
    public static int getYear(Date date) {
        String dateStr = dateToString(date);
        return Integer.parseInt(dateStr.substring(0, 4));
    }

    /**
     * 返回年份后两位
     * @param date
     * @return
     */
    public static Integer getYearKeepTwoNumber(Date date) {
        String dateStr = dateToString(date);
        return Integer.parseInt(dateStr.substring(2, 4));
    }

    /**
     * 返回月份
     * @param date
     * @return
     */
    public static int getMonth(Date date) {
        String dateStr = dateToString(date);
        return Integer.parseInt(dateStr.substring(5, 7));
    }

    /**
     * 返回日期的多少天
     * @param date
     * @return
     */
    public static int getDay(Date date) {
        String dateStr = dateToString(date);
        return Integer.parseInt(dateStr.substring(8, 10));
    }

    /**
     * 返回日期的多少分
     * @param date
     * @return
     */
    public static int getMinute(Date date) {
        String dateStr = timeToString(date);
        return Integer.parseInt(dateStr.substring(3, 5));
    }

    public static String dateToString(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_DAY);
        return dateFormat.format(date);
    }

    public static String timeToString(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(TIME);
        return dateFormat.format(date);
    }

    public static Integer getDuration(Date beginTime, Date endTime){
        int beginTimeYear = getYear(beginTime);
        int beginTimeMonth = getMonth(beginTime);
        int endTimeYear = getYear(endTime);
        int endTimeMonth = getMonth(endTime);
        return (endTimeYear - beginTimeYear) * 12 + (endTimeMonth - beginTimeMonth );
    }

    /**
     * 获取指定日期所在月份开始的时间
     * lkeji
     * @return
     */
    public static Date getMonthBegin(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        //设置为1号,当前日期既为本月第一天
        c.set(Calendar.DAY_OF_MONTH, 1);
        //将小时至0
        c.set(Calendar.HOUR_OF_DAY, 0);
        //将分钟至0
        c.set(Calendar.MINUTE, 0);
        //将秒至0
        c.set(Calendar.SECOND,0);
        //将毫秒至0
        c.set(Calendar.MILLISECOND, 0);
        return c.getTime();
    }

    public static int caculateTotalTime(Date startTime, Date endTime) {
        Long l = 0L;
        l = (endTime.getTime() - startTime.getTime()) / (1000 * 60 * 60 * 24);
        return l.intValue()+1;
    }

    //计算两个时间相差的秒数
    public static int caculateSeconds(Date startTime, Date endTime) {
        Long l = 0L;
        l = (endTime.getTime() - startTime.getTime()) / 1000;
        return l.intValue()+1;
    }
}
