package com.luno.softone.model.dto;


import com.luno.softone.model.entity.CustomerProgressRecordEntity;

public class CustomerProgressRecordDto extends CustomerProgressRecordEntity {


    private String cuName;


    private String createEmpName;


    public String getCuName() {
        return cuName;
    }

    public void setCuName(String cuName) {
        this.cuName = cuName;
    }

    public String getCreateEmpName() {
        return createEmpName;
    }

    public void setCreateEmpName(String createEmpName) {
        this.createEmpName = createEmpName;
    }
}
