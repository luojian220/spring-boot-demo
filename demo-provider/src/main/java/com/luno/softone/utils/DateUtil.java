package com.luno.softone.utils;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

public class DateUtil {
	/**
	 * 将长时间格式时间转换为字符串 yyyy-MM-dd HH:mm:ss
	 * 
	 * @param dateDate
	 * @return
	 */
	public static String dateToStrLong(Date dateDate) {

		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateString = formatter.format(dateDate);
			return dateString;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	/**
	 * 将长时间格式时间转换为字符串 yyyy-MM-dd
	 *
	 * @param dateDate
	 * @return
	 */
	public static String dateToStrShort(Date dateDate) {

		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			String dateString = formatter.format(dateDate);
			return dateString;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	public static String dateToQuarter(Date dateDate) {
		
		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			String dateString = formatter.format(getSpecialTimefromDate(dateDate));
			return dateString;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 将长时间格式字符串转换为时间 yyyy-MM-dd HH:mm:ss
	 * 
	 * @param strDate
	 * @return
	 */
	public static Date strToDateLong(String strDate) {
		try {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ParsePosition pos = new ParsePosition(0);
		Date strtodate = formatter.parse(strDate, pos);
		return strtodate;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	 /**
     * 在日期上增加数个整月
     * 
     * @param date
     *            日期
     * @param n
     *            要增加的月数
     * @return
     */
    public static Date addMonth(Date date, int n) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MONTH, n);
        return cal.getTime();
    }

    /**
     * 在日期上增加天数
     * 
     * @param date
     *            日期
     * @param n
     *            要增加的天数
     * @return
     */
    public static Date addDay(Date date, int n) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, n);
        return cal.getTime();
    }
    
    /**
     * 
     * @param currentDate
     * @return
     */
    @SuppressWarnings("static-access")
	public static Date getSpecialTimefromDate(Date currentDate){
         Calendar calendar=Calendar.getInstance();
         calendar.setTime(currentDate);
         int minute=calendar.get(Calendar.MINUTE);
         int second=calendar.get(Calendar.SECOND);
         int millisecond=calendar.get(Calendar.MILLISECOND);
         boolean isSpecialTime=(minute==0||minute==15||minute==30||minute==45)&&second==0&&millisecond==0;
         if(isSpecialTime){
            return currentDate;
         }else {
             Calendar specialCalendar=Calendar.getInstance();
             specialCalendar.setTime(currentDate);
             specialCalendar.set(Calendar.MINUTE,0);
             specialCalendar.set(Calendar.SECOND,0);
             specialCalendar.set(Calendar.MILLISECOND,0);
             long minDiff=0;//Long.MAX_VALUE;
             Calendar res=Calendar.getInstance();
             for(int i=0;i<=4;i++){
                 long diff=Math.abs(calendar.getTimeInMillis()-specialCalendar.getTimeInMillis());
                 
                 if(diff <= minDiff || minDiff==0){
                     minDiff=diff;
                     res.setTime(specialCalendar.getTime());
                 }else {
                	 break;
                 }
                 specialCalendar.add(Calendar.MINUTE,15);
             }
             return res.getTime();
         }
     }
    public static String addDateHour(String day, int hour){   
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;   
        try {   
            date = format.parse(day);   
        } catch (Exception ex) {   
            ex.printStackTrace();   
        }   
        if (date == null)   
            return "";   
        date = addDateHour(date,hour);   
        return format.format(date);   
    }
    /**
     * 小时追加
     * @param hour
     * @param date
     * @return
     */
	public static Date addDateHour(Date date,int hour) {
		//        System.out.println("front:" + format.format(date)); //显示输入的日期  
		        Calendar cal = Calendar.getInstance();   
		        cal.setTime(date);   
		        cal.add(Calendar.HOUR, hour);// 24小时制   
		        date = cal.getTime();   
		//        System.out.println("after:" + format.format(date));  //显示更新后的日期 
		        cal = null;
		return date;
	}
	
    public static String addDateHourShort(String day, int hour){   
        return addDateHour(day+":00",hour);   
    }
    
    /**
     * 
     * @return
     */
    public static  String getCurrentWorkTime() {
		String time = null;
    	Date currDt=addDateHour(new Date(),2);
    	String currentDt=DateUtil.dateToStrShort(currDt);
    	Date startDt=strToDateLong(currentDt+" 08:00:00");
    	Date endDt=strToDateLong(currentDt+" 18:00:00");
    	
    	if(currDt.before(startDt)){
    		 time = dateToQuarter(startDt);
    	}else if(currDt.after(endDt)){
    		 time = dateToStrShort(DateUtil.addDay(currDt,1))+" 08:00:00";
    	}else{
    		time = dateToQuarter(currDt);
    	}
		return time;
	}

	/**
	 * 处理参数结束日期
	 * @param map
	 */
	public static void setDateParam(Map<String,Object> map) {
		// 如果有日期参数， 结束日期加1
		if (map.get("endTime") != null) {
			try {
				Date endTime = (Date) map.get("endTime");
				endTime = org.apache.commons.lang3.time.DateUtils.addDays(endTime, 1);
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(endTime);
				calendar.set(Calendar.HOUR_OF_DAY, 0);
				calendar.set(Calendar.MINUTE, 0);
				calendar.set(Calendar.SECOND, 0);
				map.put("endTime", calendar.getTime());
			} catch (Exception e) {
				map.remove("endTime");
			}
		}
		if (map.get("beginTime") != null) {
			try{
				Date beginTime = (Date) map.get("beginTime");
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(beginTime);
				calendar.set(Calendar.HOUR_OF_DAY,0);
				calendar.set(Calendar.MINUTE,0);
				calendar.set(Calendar.SECOND,0);
				map.put("beginTime",calendar.getTime());
			} catch (Exception e) {
				map.remove("beginTime");
			}
		}
	}
public static void main(String[] args) {
	System.out.println("XXXX--"+dateToQuarter((strToDateLong("2018-11-23 12:15:13"))));
	System.out.println("XXXX--"+dateToQuarter((strToDateLong("2018-11-23 12:07:13"))));
	System.out.println("XXXX--"+dateToQuarter((strToDateLong("2018-11-23 12:08:13"))));
	
	System.out.println("XXXX--"+dateToQuarter((strToDateLong("2018-11-23 12:20:13"))));
	System.out.println("XXXX--"+dateToQuarter((strToDateLong("2018-11-23 12:24:13"))));
	System.out.println("XXXX--"+dateToQuarter( (strToDateLong("2018-11-23 12:25:13"))));
	System.out.println("XXXX--"+dateToQuarter( (strToDateLong("2018-11-23 12:48:13"))));
	System.out.println("XXXX--"+dateToQuarter( (strToDateLong("2018-11-23 12:52:13"))));
	System.out.println("XXXX--"+dateToQuarter( (strToDateLong("2018-11-23 12:18:13"))));
	System.out.println("XXXX--"+addDateHourShort(dateToQuarter( (strToDateLong("2018-11-23 12:18:13"))),2));
	System.out.println("XXXX--"+getCurrentWorkTime() );
	
}

}
