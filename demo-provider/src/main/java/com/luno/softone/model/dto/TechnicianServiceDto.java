package com.luno.softone.model.dto;


import com.luno.softone.model.entity.TechnicianServiceEntity;

public class TechnicianServiceDto extends TechnicianServiceEntity {

    /*客户名称*/
    private String cuName;


    /*技术员姓名*/
    private String empName;

    public String getCuName() {
        return cuName;
    }

    public void setCuName(String cuName) {
        this.cuName = cuName;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }
}
