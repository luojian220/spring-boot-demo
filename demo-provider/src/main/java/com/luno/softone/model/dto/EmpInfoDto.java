package com.luno.softone.model.dto;

import java.util.Date;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: EmpInfoDto
 * @Reason: 员工信息
 * @date: 2018年11月25日 17:55
 * @company:星牛旅游
 * @since JDK 1.8
 */
public class EmpInfoDto {

    //员工编号
    private String empId;

    //姓名
    private String name;

    //处理时间
    private Date date;
    //处理时间 字符串
    private String dateStr;


    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {

        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDateStr() {
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }
}
