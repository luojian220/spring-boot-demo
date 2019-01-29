package com.luno.softone.model.dto;


import com.luno.softone.model.entity.CustomerEntity;

public class CustomerDto extends CustomerEntity {

    //合同开始时间
    private String contractBeginTime;
    //合同结束时间
    private String contractEndTime;

    public String getContractBeginTime() {
        return contractBeginTime;
    }

    public void setContractBeginTime(String contractBeginTime) {
        this.contractBeginTime = contractBeginTime;
    }

    public String getContractEndTime() {
        return contractEndTime;
    }

    public void setContractEndTime(String contractEndTime) {
        this.contractEndTime = contractEndTime;
    }

}
