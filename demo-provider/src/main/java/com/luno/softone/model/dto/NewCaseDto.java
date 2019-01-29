package com.luno.softone.model.dto;

import com.luno.softone.model.entity.NewCaseEntity;

import java.util.List;

public class NewCaseDto extends NewCaseEntity {

    //案件类型 数组
    private List<String> ncCaseTypeList;

    // 前三次技术
    private List<EmpInfoDto> threeTechList ;

    public List<String> getNcCaseTypeList() {
        return ncCaseTypeList;
    }

    public void setNcCaseTypeList(List<String> ncCaseTypeList) {
        this.ncCaseTypeList = ncCaseTypeList;
    }

    public List<EmpInfoDto> getThreeTechList() {
        return threeTechList;
    }

    public void setThreeTechList(List<EmpInfoDto> threeTechList) {
        this.threeTechList = threeTechList;
    }
}
