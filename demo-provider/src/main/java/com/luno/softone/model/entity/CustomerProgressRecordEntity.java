package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 客户跟踪记录实体
 * 表名 costomer_progress_record
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-28 16:26:18
 */
public class CustomerProgressRecordEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键
    private Integer id;
    //案件id
    private Integer cuId;
    //跟踪日志
    private String content;
    //跟踪日期
    private Date progressDate;
    //创建日期
    private Date createDate;
    //创建人id
    private String createEmpId;

    // 跟踪类型
    private String type;
    /**
     * 设置：主键
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：主键
     */
    public Integer getId() {
        return id;
    }
    /**
     * 设置：案件id
     */
    public void setCuId(Integer cuId) {
        this.cuId = cuId;
    }

    /**
     * 获取：案件id
     */
    public Integer getCuId() {
        return cuId;
    }
    /**
     * 设置：跟踪日志
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * 获取：跟踪日志
     */
    public String getContent() {
        return content;
    }
    /**
     * 设置：跟踪日期
     */
    public void setProgressDate(Date progressDate) {
        this.progressDate = progressDate;
    }

    /**
     * 获取：跟踪日期
     */
    public Date getProgressDate() {
        return progressDate;
    }
    /**
     * 设置：创建日期
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * 获取：创建日期
     */
    public Date getCreateDate() {
        return createDate;
    }
    /**
     * 设置：创建人id
     */
    public void setCreateEmpId(String createEmpId) {
        this.createEmpId = createEmpId;
    }

    /**
     * 获取：创建人id
     */
    public String getCreateEmpId() {
        return createEmpId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
