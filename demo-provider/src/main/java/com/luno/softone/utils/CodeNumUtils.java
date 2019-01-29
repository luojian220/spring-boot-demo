package com.luno.softone.utils;


public class CodeNumUtils {

    /**
     * 累加每一位，超过10则然后进位
     */
//    private static String accumulate(String Num) {
//        //String Num="0002";
//
//
//        //转成整数并执行累加操作,但是可能位数变少了,怎么办呢?
//        int i = Integer.valueOf(Num) + 1;
//
//        //为了拼接字符串使用
//        StringBuffer sb = new StringBuffer();
//
//        //累加后转成字符串
//        String num = String.valueOf(i);
//
//        //补全前面缺失的0
//        for (int j = 0; j < 4 - num.length(); j++) {
//            sb.append("0");
//        }
//        if (num.length() <= 4) {
//            num = sb.toString() + num;
//        } else {
//
//            //超出字符串长度..给与提示..
//            num = "无可用序列";
//        }
//        System.out.println(num);
//        return num;
//    }


    /**
     * 使用redis和数据库生成员工编号
     * @param prefix  前缀
     * @param DBMaxId 数据库最大的id
     * @return
     */
//    @Deprecated
//    public static String GetCacheId(String DBMaxId, String prefix) {
//        String key = "STAFFID";
//        String num = "000";
//        if (J2CacheUtils.get(key) != null) {
//            if (StringUtils.isNotBlank(DBMaxId)) {
//                String DBMaxNum = DBMaxId.split(prefix + "-")[1];
//                if (J2CacheUtils.get(key).toString().compareTo(DBMaxNum) >= 0) {
//                    num = accumulate(J2CacheUtils.get(key).toString());
//                } else {
//                    num = accumulate(DBMaxNum);
//                }
//            } else {
//                num = accumulate(J2CacheUtils.get(key).toString());
//            }
//
//        } else if (StringUtils.isNotBlank(DBMaxId)) {
//            String DBMaxNum = DBMaxId.split(prefix + "-")[1];
//            num = accumulate(DBMaxNum);
//        } else {
//            num = accumulate("000");
//        }
//        J2CacheUtils.put(key, num);
//        return prefix + "-" + num;
//    }


    /**
     * 使用数据库最大值生成员工编号
     * @param prefix  前缀
     * @param DBMaxId 数据库最大的id
     * @return
     */
//    public static String GetId(String DBMaxId, String prefix){
//        String num = "000";
//        if (StringUtils.isNotBlank(DBMaxId)) {
//            String DBMaxNum = DBMaxId.split(prefix + "-")[1];
//            num = accumulate(DBMaxNum);
//        } else {
//            num = accumulate("000");
//        }
//        return prefix + "-" + num;
//    }

//    public static void main(String[] args) {
//        System.out.println(GetId("YS-0010", "YS"));
//
//    }


    /**
     * 格式化数字dcs
     * @param lenth
     * @param numer
     * @return
     */
    public static String format(int numer,int lenth) {
    	String str = String.format("%0"+lenth+"d", numer);
		return str;
	}
    
    public static String GetId(int DBMaxId, String prefix){
        return prefix + "-" + format(DBMaxId,4);
    }

    /**
     *
     * 获取ID
     * @return
     */
    public static String GetId(int DBMaxId, String prefix,int length){
        return prefix + "-" + format(DBMaxId,length);
    }
}