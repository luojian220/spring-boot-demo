package com.luno.softone.model.entity.example;

import com.luno.softone.common.entity.example.AbstractExample;
import com.luno.softone.common.entity.example.GeneratedCriteria;

import java.util.Date;
import java.util.List;

/**
 * 实体
 * 表名 customer_address
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-09-27 20:46:53
 */
public class CustomerAddressExample extends AbstractExample {
    private static final long serialVersionUID = 1L;

    @Override
    public Criteria or() {
        return (Criteria)super.or();
    }

    @Override
    public Criteria createCriteria() {
        return (Criteria)super.createCriteria();
    }

    @Override
    protected Criteria createCriteriaInternal() {
        return new Criteria();
    }

    public class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }

            public Criteria andCaIdIsNull() {
            addCriterion("ca_id is null");
            return (Criteria) this;
        }

        public Criteria andCaIdIsNotNull() {
            addCriterion("ca_id is not null");
            return (Criteria) this;
        }

        public Criteria andCaIdEqualTo(Integer value) {
            addCriterion("ca_id =", value, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdNotEqualTo(Integer value) {
            addCriterion("ca_id <>", value, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdGreaterThan(Integer value) {
            addCriterion("ca_id >", value, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ca_id >=", value, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdLessThan(Integer value) {
            addCriterion("ca_id <", value, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdLessThanOrEqualTo(Integer value) {
            addCriterion("ca_id <=", value, "caId");
            return (Criteria) this;
        }
            public Criteria andCaIdIn(List<Integer> values) {
            addCriterion("ca_id in", values, "caId");
            return (Criteria) this;
        }

        public Criteria andcaIdNotIn(List<Integer> values) {
            addCriterion("ca_id not in", values, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdBetween(Integer value1, Integer value2) {
            addCriterion("ca_id between", value1, value2, "caId");
            return (Criteria) this;
        }

        public Criteria andCaIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ca_id not between", value1, value2, "caId");
            return (Criteria) this;
        }
            public Criteria andCaCuIdIsNull() {
            addCriterion("ca_cu_id is null");
            return (Criteria) this;
        }

        public Criteria andCaCuIdIsNotNull() {
            addCriterion("ca_cu_id is not null");
            return (Criteria) this;
        }

        public Criteria andCaCuIdEqualTo(Integer value) {
            addCriterion("ca_cu_id =", value, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdNotEqualTo(Integer value) {
            addCriterion("ca_cu_id <>", value, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdGreaterThan(Integer value) {
            addCriterion("ca_cu_id >", value, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ca_cu_id >=", value, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdLessThan(Integer value) {
            addCriterion("ca_cu_id <", value, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdLessThanOrEqualTo(Integer value) {
            addCriterion("ca_cu_id <=", value, "caCuId");
            return (Criteria) this;
        }
            public Criteria andCaCuIdIn(List<Integer> values) {
            addCriterion("ca_cu_id in", values, "caCuId");
            return (Criteria) this;
        }

        public Criteria andcaCuIdNotIn(List<Integer> values) {
            addCriterion("ca_cu_id not in", values, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdBetween(Integer value1, Integer value2) {
            addCriterion("ca_cu_id between", value1, value2, "caCuId");
            return (Criteria) this;
        }

        public Criteria andCaCuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ca_cu_id not between", value1, value2, "caCuId");
            return (Criteria) this;
        }
            public Criteria andCaAddressIsNull() {
            addCriterion("ca_address is null");
            return (Criteria) this;
        }

        public Criteria andCaAddressIsNotNull() {
            addCriterion("ca_address is not null");
            return (Criteria) this;
        }

        public Criteria andCaAddressEqualTo(String value) {
            addCriterion("ca_address =", value, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressNotEqualTo(String value) {
            addCriterion("ca_address <>", value, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressGreaterThan(String value) {
            addCriterion("ca_address >", value, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressGreaterThanOrEqualTo(String value) {
            addCriterion("ca_address >=", value, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressLessThan(String value) {
            addCriterion("ca_address <", value, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressLessThanOrEqualTo(String value) {
            addCriterion("ca_address <=", value, "caAddress");
            return (Criteria) this;
        }
            public Criteria andCaAddressLike(String value) {
            addCriterion("ca_address like", value, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressNotLike(String value) {
            addCriterion("ca_address not like", value, "caAddress");
            return (Criteria) this;
        }
            public Criteria andCaAddressIn(List<String> values) {
            addCriterion("ca_address in", values, "caAddress");
            return (Criteria) this;
        }

        public Criteria andcaAddressNotIn(List<String> values) {
            addCriterion("ca_address not in", values, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressBetween(String value1, String value2) {
            addCriterion("ca_address between", value1, value2, "caAddress");
            return (Criteria) this;
        }

        public Criteria andCaAddressNotBetween(String value1, String value2) {
            addCriterion("ca_address not between", value1, value2, "caAddress");
            return (Criteria) this;
        }
            public Criteria andCaAddTimeIsNull() {
            addCriterion("ca_add_time is null");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeIsNotNull() {
            addCriterion("ca_add_time is not null");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeEqualTo(Date value) {
            addCriterion("ca_add_time =", value, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeNotEqualTo(Date value) {
            addCriterion("ca_add_time <>", value, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeGreaterThan(Date value) {
            addCriterion("ca_add_time >", value, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("ca_add_time >=", value, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeLessThan(Date value) {
            addCriterion("ca_add_time <", value, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeLessThanOrEqualTo(Date value) {
            addCriterion("ca_add_time <=", value, "caAddTime");
            return (Criteria) this;
        }
            public Criteria andCaAddTimeIn(List<Date> values) {
            addCriterion("ca_add_time in", values, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andcaAddTimeNotIn(List<Date> values) {
            addCriterion("ca_add_time not in", values, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeBetween(Date value1, Date value2) {
            addCriterion("ca_add_time between", value1, value2, "caAddTime");
            return (Criteria) this;
        }

        public Criteria andCaAddTimeNotBetween(Date value1, Date value2) {
            addCriterion("ca_add_time not between", value1, value2, "caAddTime");
            return (Criteria) this;
        }
            public Criteria andCaMapIsNull() {
            addCriterion("ca_map is null");
            return (Criteria) this;
        }

        public Criteria andCaMapIsNotNull() {
            addCriterion("ca_map is not null");
            return (Criteria) this;
        }

        public Criteria andCaMapEqualTo(String value) {
            addCriterion("ca_map =", value, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapNotEqualTo(String value) {
            addCriterion("ca_map <>", value, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapGreaterThan(String value) {
            addCriterion("ca_map >", value, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapGreaterThanOrEqualTo(String value) {
            addCriterion("ca_map >=", value, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapLessThan(String value) {
            addCriterion("ca_map <", value, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapLessThanOrEqualTo(String value) {
            addCriterion("ca_map <=", value, "caMap");
            return (Criteria) this;
        }
            public Criteria andCaMapLike(String value) {
            addCriterion("ca_map like", value, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapNotLike(String value) {
            addCriterion("ca_map not like", value, "caMap");
            return (Criteria) this;
        }
            public Criteria andCaMapIn(List<String> values) {
            addCriterion("ca_map in", values, "caMap");
            return (Criteria) this;
        }

        public Criteria andcaMapNotIn(List<String> values) {
            addCriterion("ca_map not in", values, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapBetween(String value1, String value2) {
            addCriterion("ca_map between", value1, value2, "caMap");
            return (Criteria) this;
        }

        public Criteria andCaMapNotBetween(String value1, String value2) {
            addCriterion("ca_map not between", value1, value2, "caMap");
            return (Criteria) this;
        }
            public Criteria andCaMapDescriptionIsNull() {
            addCriterion("ca_map_description is null");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionIsNotNull() {
            addCriterion("ca_map_description is not null");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionEqualTo(String value) {
            addCriterion("ca_map_description =", value, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionNotEqualTo(String value) {
            addCriterion("ca_map_description <>", value, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionGreaterThan(String value) {
            addCriterion("ca_map_description >", value, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("ca_map_description >=", value, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionLessThan(String value) {
            addCriterion("ca_map_description <", value, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionLessThanOrEqualTo(String value) {
            addCriterion("ca_map_description <=", value, "caMapDescription");
            return (Criteria) this;
        }
            public Criteria andCaMapDescriptionLike(String value) {
            addCriterion("ca_map_description like", value, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionNotLike(String value) {
            addCriterion("ca_map_description not like", value, "caMapDescription");
            return (Criteria) this;
        }
            public Criteria andCaMapDescriptionIn(List<String> values) {
            addCriterion("ca_map_description in", values, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andcaMapDescriptionNotIn(List<String> values) {
            addCriterion("ca_map_description not in", values, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionBetween(String value1, String value2) {
            addCriterion("ca_map_description between", value1, value2, "caMapDescription");
            return (Criteria) this;
        }

        public Criteria andCaMapDescriptionNotBetween(String value1, String value2) {
            addCriterion("ca_map_description not between", value1, value2, "caMapDescription");
            return (Criteria) this;
        }
    }
}
