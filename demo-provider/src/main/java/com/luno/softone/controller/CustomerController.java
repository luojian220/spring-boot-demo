package com.luno.softone.controller;

import com.alibaba.fastjson.JSONObject;
import com.luno.softone.common.utils.DateUtils;
import com.luno.softone.common.utils.PageUtils;
import com.luno.softone.common.utils.Query;
import com.luno.softone.common.utils.R;
import com.luno.softone.common.utils.StringUtils;
import com.luno.softone.common.utils.excel.ExcelImport;
import com.luno.softone.model.entity.CustomerAddressEntity;
import com.luno.softone.model.entity.CustomerContactEntity;
import com.luno.softone.model.entity.CustomerEntity;
import com.luno.softone.model.entity.CustomerShortEntity;
import com.luno.softone.model.entity.SysStaffEntity;
import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.service.CustomerAddressService;
import com.luno.softone.service.CustomerContactService;
import com.luno.softone.service.CustomerService;
import com.luno.softone.service.SysDeptService;
import com.luno.softone.service.SysStaffService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Controller
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:09:04
 */
@RestController
@RequestMapping("customer")
public class CustomerController extends AbstractController {
    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private CustomerAddressService customerAddressService;
    
    @Autowired
    private CustomerContactService customerContactService;
    
    
    @Autowired
    private SysStaffService sysStaffService;
    @Autowired
    private SysDeptService sysDeptService;
    private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);

    /**
     * 查看列表
     */
    @RequestMapping("/list")
//    @RequiresPermissions("customer:list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        params.put("currentUserId",getUserId());
        params.put("currentEmpId",getUser().getStaffId());
      //如果是销售主管只能查看自己部门的客户
    	if (getDeptName().startsWith("销售")) {
    		params.put("deplist", sysDeptService.getSubDeptIdList(getDeptId()));
        }
    	
    	 Query query = new Query(params);
        
        logger.info("customer收到请求参数：{}" , JSONObject.toJSONString(query));
//        System.out.println("customer收到请求参数："+JSONObject.toJSONString(query));
        List<CustomerEntity> customerList = customerService.queryList(query);
        int total = customerService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(customerList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }
    
    @RequestMapping("/traceList")
//  @RequiresPermissions("customer:list")
  public R traceList(@RequestParam Map<String, Object> params) {
      //查询列表数据
      params.put("currentUserId",getUserId());
      params.put("currentEmpId",getUser().getStaffId());
    //如果是销售主管只能查看自己部门的客户
  	if (getDeptName().startsWith("销售")) {
  		params.put("deplist", sysDeptService.getSubDeptIdList(getDeptId()));
      }
  	
  	 Query query = new Query(params);
      
      logger.info("customer收到请求参数：{}" , JSONObject.toJSONString(query));
//      System.out.println("customer收到请求参数："+JSONObject.toJSONString(query));
      List<CustomerEntity> customerList = customerService.queryTraceList(query);
      int total = customerService.queryTraceTotal(query);

      PageUtils pageUtil = new PageUtils(customerList, total, query.getLimit(), query.getPage());

      return R.ok().put("page", pageUtil);
  }
    /**
     * 查看信息
     */
    @RequestMapping("/info/{cuId}")
//    @RequiresPermissions("customer:info")
    public R info(@PathVariable("cuId") Integer cuId) {
        CustomerEntity customer = customerService.queryObject(cuId);

      //  CustomerDto customerDto = new CustomerDto();
//        BeanUtils.copyProperties(customer,customerDto);
        /*if (customer.getCuContractBeginTime() != null ) {
            customerDto.setContractBeginTime(DateUtils.format(customer.getCuContractBeginTime()));
        }
        if (customer.getCuContractEndTime() != null ) {
            customerDto.setContractEndTime(DateUtils.format(customer.getCuContractEndTime()));
        }*/
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("caCuId", cuId);
        List<CustomerAddressEntity> addList= customerAddressService.queryList(map);
        map.remove("caCuId");
        map.put("ccCuId", cuId);
        List<CustomerContactEntity> contactList= customerContactService.queryList(map);
        
        customer.setAddress(addList);
        customer.setContact(contactList);
        return R.ok().put("customer", customer);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("customer:save")
    public R save(@RequestBody CustomerEntity customer) {
        logger.info("customer:save 收到请求参数：{}" + JSONObject.toJSONString(customer));
        if (customer.getCuIsVip() == null) {
            customer.setCuIsVip(0);
        }
        SysUserEntity userEntity = getUser();
        customer.setCuAddEmpNumber(userEntity.getStaffId());
        
        getAddConcat(customer);
        
        customerService.save(customer);

        saveupdateAddConcat(customer);

 
        return R.ok();
    }

	private void getAddConcat(CustomerEntity customer) {
		if(customer.getAddress().size()>0){
        	customer.setCuAddress(customer.getAddress().get(0).getCaAddress());
        }
        if(customer.getContact().size()>0){
        	customer.setCuContact(customer.getContact().get(0).getCcContact());
        	customer.setCuContactPhone(customer.getContact().get(0).getCcPhone());
        }
	}

	private void saveupdateAddConcat(CustomerEntity customer) {
		List<Integer> caIdDelList= customer.getCaIdDelList();
        if(caIdDelList.size()>0){
        	Integer[] arry=new Integer[caIdDelList.size()];
        	caIdDelList.toArray(arry);
        	customerAddressService.deleteBatch(arry);
        }
        List<Integer> ccIdDelList=customer.getCcIdDelList();
        if(ccIdDelList.size()>0){
        	Integer[] arry=new Integer[ccIdDelList.size()];
        	ccIdDelList.toArray(arry);
        	customerContactService.deleteBatch(arry);
        }
       
       
        List<CustomerAddressEntity> addList= customer.getAddress();
        for(CustomerAddressEntity cae:addList){
        	if(cae.getFlag()==1){
        		cae.setCaCuId(customer.getCuId());
        		cae.setCaAddTime(new Date());
        		customerAddressService.save(cae);
        	}else{
        		customerAddressService.update(cae);
        	}
        }
        List<CustomerContactEntity> contactList=customer.getContact();
        for(CustomerContactEntity cce:contactList){
        	if(cce.getFlag()==1){
        		cce.setCcCuId(customer.getCuId());
        		cce.setCcAddTime(new Date());
        		customerContactService.save(cce);
        	}else{
        		customerContactService.update(cce);
        	}
        }
	}

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("customer:update")
    public R update(@RequestBody CustomerEntity customer) {
        logger.info("customer:update 收到请求参数：{}" + JSONObject.toJSONString(customer));
        getAddConcat(customer);
        customerService.update(customer);
        saveupdateAddConcat(customer);
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("customer:delete")
    public R delete(@RequestBody Integer[] cuIds) {
        customerService.deleteBatch(cuIds);

        return R.ok();
    }

    /**
     * 查看所有列表
     */
    @RequestMapping("/queryAll")
    public R queryAll(@RequestParam Map<String, Object> params) {
    	//查询列表数据
        params.put("currentUserId",getUserId());
    		//销售只查看自己的
    	 params.put("currentEmpId",getUser().getStaffId());
        List<CustomerShortEntity> list = customerService.queryHelpList(params);

        return R.ok().put("list", list);
    }

    /**
     * 导入客户信息 excel
     * @return
     */
    @RequestMapping(value = "/importCustomer",method = RequestMethod.POST)
    public R importCustomer(@RequestParam("file") MultipartFile multipartFile) {

        int num = 0;
        List<String[]> listData = ExcelImport.getExcelData(multipartFile);
        if (listData != null && listData.size() > 1 ) {
            List<CustomerShortEntity> customerAllList = null;
            List<SysStaffEntity> sysStaffAllList = null;
            List<CustomerEntity> customerList = new ArrayList<>();

            int count = -1 ;
            for (String[] arrItem : listData) {
                count ++;
                if (count == 0) {
                    continue;
                }
                StringBuilder stringBuilder = new StringBuilder();
                for (String item : arrItem ) {
                    stringBuilder.append(item).append("_");
                }
                logger.info( "第" + count + " 行 :" + stringBuilder.toString());
                if (arrItem.length < 11) {
                    logger.error("第"+ count +"行，客户信息不完整，请确认！");
                    return R.error(":第"+ count +"行，客户信息不完整，请确认！");
                }
                CustomerEntity customer = new CustomerEntity();
                customer.setCuName(arrItem[0].trim());
                customer.setCuSimpleName(arrItem[1].trim());
                customer.setCuPhone(arrItem[2].trim());
                customer.setCuAddress(arrItem[3].trim());
                //联系人 /电话
                customer.setCuContact(arrItem[4].trim());
                customer.setCuContactPhone(arrItem[5].trim());
                //负责人 / 电话
                customer.setCuPrincipal(arrItem[6].trim());
                customer.setCuPrincipalPhone(arrItem[7].trim());
                if (StringUtils.isNotEmpty(arrItem[8].trim())) {
                    if ("是".equals(arrItem[8].trim())) {
                        customer.setCuIsVip(1);
                        customer.setCuContractBeginTime(DateUtils.strToDate(arrItem[9].trim()));
                        customer.setCuContractEndTime(DateUtils.strToDate(arrItem[10].trim()));
                    } else if ("否".equals(arrItem[8].trim())){
                        customer.setCuIsVip(0);
                    } else {
                        return R.error(":第"+ count +"行，是否vip属性格式不正确");
                    }
                } else {
                    customer.setCuIsVip(0);
                }
                customer.setCuMarketEmpId(arrItem[11].trim());
                if (arrItem.length >= 13) {
                    customer.setCuRemark(arrItem[12].trim());
                }
                // 正确性验证
                try {
                    Map<String,Object> params = new HashMap<>();
                    if (customerAllList == null)
                        customerAllList = customerService.queryHelpList(params);

                    if (sysStaffAllList == null)
                        sysStaffAllList = sysStaffService.queryListAll(params);
                    checkFiled(count, customer,customerAllList,sysStaffAllList);
                } catch (IllegalArgumentException e) {
                    return R.error(e.getMessage());
                }
                customer.setCuAddEmpNumber(getUser().getStaffId());
                customer.setCuAddTime(new Date());
                customerList.add(customer);
            }
            customerService.insertBatch(customerList);
            return R.ok().put("list", customerList);

        }
        return R.error(" 选择的文件内容为空，请确认！");
    }


    private void checkFiled(int count,CustomerEntity customer,
                            List<CustomerShortEntity> allList,List<SysStaffEntity> staffAllList ) {

        if (StringUtils.isNullOrEmpty(customer.getCuName())) {
            throw new IllegalArgumentException(":第"+ count +"行，客户名称不能为空");
        }
        if (StringUtils.isNullOrEmpty(customer.getCuSimpleName())) {
            throw new IllegalArgumentException(":第"+ count +"行，客户简称不能为空");
        }
        if (StringUtils.isNullOrEmpty(customer.getCuPhone())) {
            throw new IllegalArgumentException(":第"+ count +"行，电话不能为空");
        }
        if (StringUtils.isNullOrEmpty(customer.getCuAddress())) {
            throw new IllegalArgumentException(":第"+ count +"行，客户地址不能为空");
        }
        if (StringUtils.isNullOrEmpty(customer.getCuContact())) {
            throw new IllegalArgumentException(":第"+ count +"行，联系人不能为空");
        }
        if (StringUtils.isNullOrEmpty(customer.getCuContactPhone())) {
            throw new IllegalArgumentException(":第"+ count +"行，联系电话不能为空");
        }
        if (StringUtils.isNullOrEmpty(customer.getCuMarketEmpId())) {
            throw new IllegalArgumentException(":第"+ count +"行，销售负责人不能为空");
        }
        if (customer.getCuIsVip() == 1 && customer.getCuContractBeginTime() == null
                && customer.getCuContractEndTime() == null) {
            throw new IllegalArgumentException(":第"+ count +"行，合同起始日期格式不正确");
        }

        List<CustomerShortEntity> cusResult = allList.stream()
                .filter(item -> customer.getCuName().equals(item.getCuName())).collect(Collectors.toList());
        if (cusResult != null && cusResult.size() > 0) {
            throw new IllegalArgumentException(":第"+ count +"行，客户名称已经存在！");
        }
        List<SysStaffEntity> staffResult = staffAllList.stream().
                filter(item -> customer.getCuMarketEmpId().equals(item.getName())).collect(Collectors.toList());
        if (staffResult != null && staffResult.size() > 0 ) {
            customer.setCuMarketEmpId(staffResult.get(0).getStaffId());
        } else {
            throw new IllegalArgumentException(":第"+ count +"行，销售负责人不正确！");
        }

    }
}
