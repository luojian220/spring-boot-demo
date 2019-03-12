package com.luno.softone.service.impl;



import com.luno.softone.dao.SysDeptDao;
import com.luno.softone.model.entity.SysDeptEntity;
import com.luno.softone.model.entity.UserWindowDto;
import com.luno.softone.common.page.Page;
import com.luno.softone.common.page.PageHelper;
import com.luno.softone.service.SysDeptService;
import com.luno.softone.common.utils.Constant;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("sysDeptService")
public class SysDeptServiceImpl implements SysDeptService {
    @Autowired
    private SysDeptDao sysDeptDao;

    @Override
    public SysDeptEntity queryObject(Long deptId) {
        return sysDeptDao.queryObject(deptId);
    }

    @Override
    public List<SysDeptEntity> queryList(Map<String, Object> map) {
        return sysDeptDao.queryList(map);
    }

    @Override
    public void save(SysDeptEntity sysDept) {
        sysDeptDao.save(sysDept);
    }

    @Override
    public void update(SysDeptEntity sysDept) {
        sysDeptDao.update(sysDept);
    }

    @Override
    public void delete(Long deptId) {
        sysDeptDao.delete(deptId);
    }

    @Override
    public List<Long> queryDetpIdList(Long parentId) {
        return sysDeptDao.queryDetpIdList(parentId);
    }

    @Override
    public String getSubDeptIdList(Long deptId) {
        //部门及子部门ID列表
        List<Long> deptIdList = new ArrayList<>();

        //获取子部门ID
        List<Long> subIdList = queryDetpIdList(deptId);
        getDeptTreeList(subIdList, deptIdList);

        //添加本部门
        deptIdList.add(deptId);

        String deptFilter = StringUtils.join(deptIdList, ",");
        return deptFilter;
    }

    /**
     * 递归
     */
    public void getDeptTreeList(List<Long> subIdList, List<Long> deptIdList) {
        for (Long deptId : subIdList) {
            List<Long> list = queryDetpIdList(deptId);
            if (list.size() > 0) {
                getDeptTreeList(list, deptIdList);
            }

            deptIdList.add(deptId);
        }
    }

    @Override
    public Page<UserWindowDto> queryPageByDto(UserWindowDto userWindowDto, int pageNum) {
        PageHelper.startPage(pageNum, Constant.pageSize);
        sysDeptDao.queryPageByDto(userWindowDto);
        return PageHelper.endPage();
    }
}
