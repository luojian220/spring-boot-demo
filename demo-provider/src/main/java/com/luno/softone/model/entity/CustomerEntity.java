package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 实体
 * 表名 customer
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
public class CustomerEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer cuId;
    //客户编号
    private String cuNumber;
    //客户名称
    private String cuName;
    //客户简称
    private String cuSimpleName;
    //拼音名称
    private String cuPyName;
    //拼音简称
    private String cuSimplePyName;
    //电话
    private String cuPhone;
    //地址
    private String cuAddress;
    //联系人
    private String cuContact;
    //联系电话
    private String cuContactPhone;
    //传真
    private String cuFax;
    //邮政编码
    private String cuZipCode;
    //网址
    private String cuUrl;
    //邮箱
    private String cuEmail;
    //负责人
    private String cuPrincipal;
    //负责人电话
    private String cuPrincipalPhone;
    //来源
    private String cuSource;
    //状态
    private String cuState;
    //是否vip
    private Integer cuIsVip;
    //合同开始时间
    private Date cuContractBeginTime;
    //合同结束时间
    private Date cuContractEndTime;
    //销售负责人 cu_market_emp_id cuMarketEmpId
    private String cuMarketEmpId;
    private String cuMarketEmpName;
    //创建人编号
    private String cuAddEmpNumber;
    //创建时间
    private Date cuAddTime;
    //更新人编号
    private String cuUpEmpNumber;
    //更新时间
    private Date cuUpTime;
    //remark
    private String cuRemark;

    
    //跟踪日志
    private String content;
    //跟踪日期
    private Date progressDate;
    //创建人id
    private String createEmpId;
    // 跟踪类型
    private String type;
    
    private List<CustomerAddressEntity> address=new ArrayList<CustomerAddressEntity>();
    private List<CustomerContactEntity> contact=new ArrayList<CustomerContactEntity>();
    private List<Integer> caIdDelList=new ArrayList<Integer>();
    private List<Integer> ccIdDelList=new ArrayList<Integer>();

    

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getProgressDate() {
		return progressDate;
	}

	public void setProgressDate(Date progressDate) {
		this.progressDate = progressDate;
	}



	public String getCreateEmpId() {
		return createEmpId;
	}

	public void setCreateEmpId(String createEmpId) {
		this.createEmpId = createEmpId;
	}

	public String getCuMarketEmpName() {
		return cuMarketEmpName;
	}

	public void setCuMarketEmpName(String cuMarketEmpName) {
		this.cuMarketEmpName = cuMarketEmpName;
	}

	public List<Integer> getCaIdDelList() {
		return caIdDelList;
	}

	public void setCaIdDelList(List<Integer> caIdDelList) {
		this.caIdDelList = caIdDelList;
	}

	public List<Integer> getCcIdDelList() {
		return ccIdDelList;
	}

	public void setCcIdDelList(List<Integer> ccIdDelList) {
		this.ccIdDelList = ccIdDelList;
	}

	public List<CustomerAddressEntity> getAddress() {
		return address;
	}

	public void setAddress(List<CustomerAddressEntity> address) {
		this.address = address;
	}

	public List<CustomerContactEntity> getContact() {
		return contact;
	}

	public void setContact(List<CustomerContactEntity> contact) {
		this.contact = contact;
	}

	/**
     * 设置：
     */
    public void setCuId(Integer cuId) {
        this.cuId = cuId;
    }

    /**
     * 获取：
     */
    public Integer getCuId() {
        return cuId;
    }
    /**
     * 设置：客户编号
     */
    public void setCuNumber(String cuNumber) {
        this.cuNumber = cuNumber;
    }

    /**
     * 获取：客户编号
     */
    public String getCuNumber() {
        return cuNumber;
    }
    /**
     * 设置：客户名称
     */
    public void setCuName(String cuName) {
        this.cuName = cuName;
    }

    /**
     * 获取：客户名称
     */
    public String getCuName() {
        return cuName;
    }
    /**
     * 设置：客户简称
     */
    public void setCuSimpleName(String cuSimpleName) {
        this.cuSimpleName = cuSimpleName;
    }

    /**
     * 获取：客户简称
     */
    public String getCuSimpleName() {
        return cuSimpleName;
    }
    /**
     * 设置：拼音名称
     */
    public void setCuPyName(String cuPyName) {
        this.cuPyName = cuPyName;
    }

    /**
     * 获取：拼音名称
     */
    public String getCuPyName() {
        return cuPyName;
    }
    /**
     * 设置：拼音简称
     */
    public void setCuSimplePyName(String cuSimplePyName) {
        this.cuSimplePyName = cuSimplePyName;
    }

    /**
     * 获取：拼音简称
     */
    public String getCuSimplePyName() {
        return cuSimplePyName;
    }
    /**
     * 设置：电话
     */
    public void setCuPhone(String cuPhone) {
        this.cuPhone = cuPhone;
    }

    /**
     * 获取：电话
     */
    public String getCuPhone() {
        return cuPhone;
    }
    /**
     * 设置：地址
     */
    public void setCuAddress(String cuAddress) {
        this.cuAddress = cuAddress;
    }

    /**
     * 获取：地址
     */
    public String getCuAddress() {
        return cuAddress;
    }
    /**
     * 设置：联系人
     */
    public void setCuContact(String cuContact) {
        this.cuContact = cuContact;
    }

    /**
     * 获取：联系人
     */
    public String getCuContact() {
        return cuContact;
    }
    /**
     * 设置：联系电话
     */
    public void setCuContactPhone(String cuContactPhone) {
        this.cuContactPhone = cuContactPhone;
    }

    /**
     * 获取：联系电话
     */
    public String getCuContactPhone() {
        return cuContactPhone;
    }
    /**
     * 设置：传真
     */
    public void setCuFax(String cuFax) {
        this.cuFax = cuFax;
    }

    /**
     * 获取：传真
     */
    public String getCuFax() {
        return cuFax;
    }
    /**
     * 设置：邮政编码
     */
    public void setCuZipCode(String cuZipCode) {
        this.cuZipCode = cuZipCode;
    }

    /**
     * 获取：邮政编码
     */
    public String getCuZipCode() {
        return cuZipCode;
    }
    /**
     * 设置：网址
     */
    public void setCuUrl(String cuUrl) {
        this.cuUrl = cuUrl;
    }

    /**
     * 获取：网址
     */
    public String getCuUrl() {
        return cuUrl;
    }
    /**
     * 设置：邮箱
     */
    public void setCuEmail(String cuEmail) {
        this.cuEmail = cuEmail;
    }

    /**
     * 获取：邮箱
     */
    public String getCuEmail() {
        return cuEmail;
    }
    /**
     * 设置：负责人
     */
    public void setCuPrincipal(String cuPrincipal) {
        this.cuPrincipal = cuPrincipal;
    }

    /**
     * 获取：负责人
     */
    public String getCuPrincipal() {
        return cuPrincipal;
    }
    /**
     * 设置：负责人电话
     */
    public void setCuPrincipalPhone(String cuPrincipalPhone) {
        this.cuPrincipalPhone = cuPrincipalPhone;
    }

    /**
     * 获取：负责人电话
     */
    public String getCuPrincipalPhone() {
        return cuPrincipalPhone;
    }
    /**
     * 设置：来源
     */
    public void setCuSource(String cuSource) {
        this.cuSource = cuSource;
    }

    /**
     * 获取：来源
     */
    public String getCuSource() {
        return cuSource;
    }
    /**
     * 设置：状态
     */
    public void setCuState(String cuState) {
        this.cuState = cuState;
    }

    /**
     * 获取：状态
     */
    public String getCuState() {
        return cuState;
    }
    /**
     * 设置：是否vip
     */
    public void setCuIsVip(Integer cuIsVip) {
        this.cuIsVip = cuIsVip;
    }

    /**
     * 获取：是否vip
     */
    public Integer getCuIsVip() {
        return cuIsVip;
    }
    /**
     * 设置：合同开始时间
     */
    public void setCuContractBeginTime(Date cuContractBeginTime) {
        this.cuContractBeginTime = cuContractBeginTime;
    }

    /**
     * 获取：合同开始时间
     */
    public Date getCuContractBeginTime() {
        return cuContractBeginTime;
    }
    /**
     * 设置：合同结束时间
     */
    public void setCuContractEndTime(Date cuContractEndTime) {
        this.cuContractEndTime = cuContractEndTime;
    }

    /**
     * 获取：合同结束时间
     */
    public Date getCuContractEndTime() {
        return cuContractEndTime;
    }
    /**
     * 设置：销售人员
     */
    public void setCuMarketEmpId(String cuMarketEmpId) {
        this.cuMarketEmpId = cuMarketEmpId;
    }

    /**
     * 获取：销售人员
     */
    public String getCuMarketEmpId() {
        return cuMarketEmpId;
    }
    /**
     * 设置：创建人编号
     */
    public void setCuAddEmpNumber(String cuAddEmpNumber) {
        this.cuAddEmpNumber = cuAddEmpNumber;
    }

    /**
     * 获取：创建人编号
     */
    public String getCuAddEmpNumber() {
        return cuAddEmpNumber;
    }
    /**
     * 设置：创建时间
     */
    public void setCuAddTime(Date cuAddTime) {
        this.cuAddTime = cuAddTime;
    }

    /**
     * 获取：创建时间
     */
    public Date getCuAddTime() {
        return cuAddTime;
    }
    /**
     * 设置：更新人编号
     */
    public void setCuUpEmpNumber(String cuUpEmpNumber) {
        this.cuUpEmpNumber = cuUpEmpNumber;
    }

    /**
     * 获取：更新人编号
     */
    public String getCuUpEmpNumber() {
        return cuUpEmpNumber;
    }
    /**
     * 设置：更新时间
     */
    public void setCuUpTime(Date cuUpTime) {
        this.cuUpTime = cuUpTime;
    }

    /**
     * 获取：更新时间
     */
    public Date getCuUpTime() {
        return cuUpTime;
    }
    /**
     * 设置：remark
     */
    public void setCuRemark(String cuRemark) {
        this.cuRemark = cuRemark;
    }

    /**
     * 获取：remark
     */
    public String getCuRemark() {
        return cuRemark;
    }

	@Override
	public String toString() {
		return "CustomerEntity [cuId=" + cuId + ", cuNumber=" + cuNumber
				+ ", cuName=" + cuName + ", cuSimpleName=" + cuSimpleName
				+ ", cuPyName=" + cuPyName + ", cuSimplePyName="
				+ cuSimplePyName + ", cuPhone=" + cuPhone + ", cuAddress="
				+ cuAddress + ", cuContact=" + cuContact + ", cuContactPhone="
				+ cuContactPhone + ", cuFax=" + cuFax + ", cuZipCode="
				+ cuZipCode + ", cuUrl=" + cuUrl + ", cuEmail=" + cuEmail
				+ ", cuPrincipal=" + cuPrincipal + ", cuPrincipalPhone="
				+ cuPrincipalPhone + ", cuSource=" + cuSource + ", cuState="
				+ cuState + ", cuIsVip=" + cuIsVip + ", cuContractBeginTime="
				+ cuContractBeginTime + ", cuContractEndTime="
				+ cuContractEndTime + ", cuMarketEmpId=" + cuMarketEmpId
				+ ", cuAddEmpNumber=" + cuAddEmpNumber + ", cuAddTime="
				+ cuAddTime + ", cuUpEmpNumber=" + cuUpEmpNumber
				+ ", cuUpTime=" + cuUpTime + ", cuRemark=" + cuRemark + "]";
	}
    
    
}
