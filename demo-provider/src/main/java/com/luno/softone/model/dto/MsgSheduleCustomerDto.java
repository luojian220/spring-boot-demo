package com.luno.softone.model.dto;

import com.luno.softone.model.entity.CustomerEntity;

import java.io.Serializable;

public class MsgSheduleCustomerDto extends CustomerEntity implements Serializable {
    private static final long serialVersionUID = 1L;
    //案件编号
    private String ncNumber;

    public String getNcNumber() {
        return ncNumber;
    }

    public void setNcNumber(String ncNumber) {
        this.ncNumber = ncNumber;
    }
}
