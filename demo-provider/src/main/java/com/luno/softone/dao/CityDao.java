package com.luno.softone.dao;

import com.luno.softone.model.entity.City;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: CityDao
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月28日 14:53

 * @since JDK 1.7
 */
@Mapper
public interface CityDao extends tk.mybatis.mapper.common.Mapper<City> {


    City getById (@Param("id") Integer id) ;

}
