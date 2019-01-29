package com.luno.softone.model.entity;

import javax.persistence.Column;
import javax.persistence.Table;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: City
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月28日 14:45
 * @company:宝尊电商
 * @since JDK 1.7
 */
@Table
public class City {

    private Integer id ;

    private String name;

    @Column(name = "countryCode")
    private String countryCode;

    private String district;


    private String population;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getPopulation() {
        return population;
    }

    public void setPopulation(String population) {
        this.population = population;
    }

}
