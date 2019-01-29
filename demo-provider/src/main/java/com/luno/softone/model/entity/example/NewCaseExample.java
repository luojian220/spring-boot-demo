package com.luno.softone.model.entity.example;

import com.luno.softone.entity.example.AbstractExample;
import com.luno.softone.entity.example.GeneratedCriteria;

import java.util.Date;
import java.util.List;

/**
 * 实体
 * 表名 new_case
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-09-30 21:58:14
 */
public class NewCaseExample extends AbstractExample {
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

            public Criteria andNcIdIsNull() {
            addCriterion("nc_id is null");
            return (Criteria) this;
        }

        public Criteria andNcIdIsNotNull() {
            addCriterion("nc_id is not null");
            return (Criteria) this;
        }

        public Criteria andNcIdEqualTo(Integer value) {
            addCriterion("nc_id =", value, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdNotEqualTo(Integer value) {
            addCriterion("nc_id <>", value, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdGreaterThan(Integer value) {
            addCriterion("nc_id >", value, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("nc_id >=", value, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdLessThan(Integer value) {
            addCriterion("nc_id <", value, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdLessThanOrEqualTo(Integer value) {
            addCriterion("nc_id <=", value, "ncId");
            return (Criteria) this;
        }
            public Criteria andNcIdIn(List<Integer> values) {
            addCriterion("nc_id in", values, "ncId");
            return (Criteria) this;
        }

        public Criteria andncIdNotIn(List<Integer> values) {
            addCriterion("nc_id not in", values, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdBetween(Integer value1, Integer value2) {
            addCriterion("nc_id between", value1, value2, "ncId");
            return (Criteria) this;
        }

        public Criteria andNcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("nc_id not between", value1, value2, "ncId");
            return (Criteria) this;
        }
            public Criteria andNcNumberIsNull() {
            addCriterion("nc_number is null");
            return (Criteria) this;
        }

        public Criteria andNcNumberIsNotNull() {
            addCriterion("nc_number is not null");
            return (Criteria) this;
        }

        public Criteria andNcNumberEqualTo(String value) {
            addCriterion("nc_number =", value, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberNotEqualTo(String value) {
            addCriterion("nc_number <>", value, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberGreaterThan(String value) {
            addCriterion("nc_number >", value, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberGreaterThanOrEqualTo(String value) {
            addCriterion("nc_number >=", value, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberLessThan(String value) {
            addCriterion("nc_number <", value, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberLessThanOrEqualTo(String value) {
            addCriterion("nc_number <=", value, "ncNumber");
            return (Criteria) this;
        }
            public Criteria andNcNumberLike(String value) {
            addCriterion("nc_number like", value, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberNotLike(String value) {
            addCriterion("nc_number not like", value, "ncNumber");
            return (Criteria) this;
        }
            public Criteria andNcNumberIn(List<String> values) {
            addCriterion("nc_number in", values, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andncNumberNotIn(List<String> values) {
            addCriterion("nc_number not in", values, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberBetween(String value1, String value2) {
            addCriterion("nc_number between", value1, value2, "ncNumber");
            return (Criteria) this;
        }

        public Criteria andNcNumberNotBetween(String value1, String value2) {
            addCriterion("nc_number not between", value1, value2, "ncNumber");
            return (Criteria) this;
        }
            public Criteria andNcCuIdIsNull() {
            addCriterion("nc_cu_id is null");
            return (Criteria) this;
        }

        public Criteria andNcCuIdIsNotNull() {
            addCriterion("nc_cu_id is not null");
            return (Criteria) this;
        }

        public Criteria andNcCuIdEqualTo(Integer value) {
            addCriterion("nc_cu_id =", value, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdNotEqualTo(Integer value) {
            addCriterion("nc_cu_id <>", value, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdGreaterThan(Integer value) {
            addCriterion("nc_cu_id >", value, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("nc_cu_id >=", value, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdLessThan(Integer value) {
            addCriterion("nc_cu_id <", value, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdLessThanOrEqualTo(Integer value) {
            addCriterion("nc_cu_id <=", value, "ncCuId");
            return (Criteria) this;
        }
            public Criteria andNcCuIdIn(List<Integer> values) {
            addCriterion("nc_cu_id in", values, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andncCuIdNotIn(List<Integer> values) {
            addCriterion("nc_cu_id not in", values, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdBetween(Integer value1, Integer value2) {
            addCriterion("nc_cu_id between", value1, value2, "ncCuId");
            return (Criteria) this;
        }

        public Criteria andNcCuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("nc_cu_id not between", value1, value2, "ncCuId");
            return (Criteria) this;
        }
            public Criteria andNcCuNumberIsNull() {
            addCriterion("nc_cu_number is null");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberIsNotNull() {
            addCriterion("nc_cu_number is not null");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberEqualTo(String value) {
            addCriterion("nc_cu_number =", value, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberNotEqualTo(String value) {
            addCriterion("nc_cu_number <>", value, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberGreaterThan(String value) {
            addCriterion("nc_cu_number >", value, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberGreaterThanOrEqualTo(String value) {
            addCriterion("nc_cu_number >=", value, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberLessThan(String value) {
            addCriterion("nc_cu_number <", value, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberLessThanOrEqualTo(String value) {
            addCriterion("nc_cu_number <=", value, "ncCuNumber");
            return (Criteria) this;
        }
            public Criteria andNcCuNumberLike(String value) {
            addCriterion("nc_cu_number like", value, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberNotLike(String value) {
            addCriterion("nc_cu_number not like", value, "ncCuNumber");
            return (Criteria) this;
        }
            public Criteria andNcCuNumberIn(List<String> values) {
            addCriterion("nc_cu_number in", values, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andncCuNumberNotIn(List<String> values) {
            addCriterion("nc_cu_number not in", values, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberBetween(String value1, String value2) {
            addCriterion("nc_cu_number between", value1, value2, "ncCuNumber");
            return (Criteria) this;
        }

        public Criteria andNcCuNumberNotBetween(String value1, String value2) {
            addCriterion("nc_cu_number not between", value1, value2, "ncCuNumber");
            return (Criteria) this;
        }
            public Criteria andNcCuNameIsNull() {
            addCriterion("nc_cu_name is null");
            return (Criteria) this;
        }

        public Criteria andNcCuNameIsNotNull() {
            addCriterion("nc_cu_name is not null");
            return (Criteria) this;
        }

        public Criteria andNcCuNameEqualTo(String value) {
            addCriterion("nc_cu_name =", value, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameNotEqualTo(String value) {
            addCriterion("nc_cu_name <>", value, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameGreaterThan(String value) {
            addCriterion("nc_cu_name >", value, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameGreaterThanOrEqualTo(String value) {
            addCriterion("nc_cu_name >=", value, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameLessThan(String value) {
            addCriterion("nc_cu_name <", value, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameLessThanOrEqualTo(String value) {
            addCriterion("nc_cu_name <=", value, "ncCuName");
            return (Criteria) this;
        }
            public Criteria andNcCuNameLike(String value) {
            addCriterion("nc_cu_name like", value, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameNotLike(String value) {
            addCriterion("nc_cu_name not like", value, "ncCuName");
            return (Criteria) this;
        }
            public Criteria andNcCuNameIn(List<String> values) {
            addCriterion("nc_cu_name in", values, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andncCuNameNotIn(List<String> values) {
            addCriterion("nc_cu_name not in", values, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameBetween(String value1, String value2) {
            addCriterion("nc_cu_name between", value1, value2, "ncCuName");
            return (Criteria) this;
        }

        public Criteria andNcCuNameNotBetween(String value1, String value2) {
            addCriterion("nc_cu_name not between", value1, value2, "ncCuName");
            return (Criteria) this;
        }
            public Criteria andNcAddressIsNull() {
            addCriterion("nc_address is null");
            return (Criteria) this;
        }

        public Criteria andNcAddressIsNotNull() {
            addCriterion("nc_address is not null");
            return (Criteria) this;
        }

        public Criteria andNcAddressEqualTo(String value) {
            addCriterion("nc_address =", value, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressNotEqualTo(String value) {
            addCriterion("nc_address <>", value, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressGreaterThan(String value) {
            addCriterion("nc_address >", value, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressGreaterThanOrEqualTo(String value) {
            addCriterion("nc_address >=", value, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressLessThan(String value) {
            addCriterion("nc_address <", value, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressLessThanOrEqualTo(String value) {
            addCriterion("nc_address <=", value, "ncAddress");
            return (Criteria) this;
        }
            public Criteria andNcAddressLike(String value) {
            addCriterion("nc_address like", value, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressNotLike(String value) {
            addCriterion("nc_address not like", value, "ncAddress");
            return (Criteria) this;
        }
            public Criteria andNcAddressIn(List<String> values) {
            addCriterion("nc_address in", values, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andncAddressNotIn(List<String> values) {
            addCriterion("nc_address not in", values, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressBetween(String value1, String value2) {
            addCriterion("nc_address between", value1, value2, "ncAddress");
            return (Criteria) this;
        }

        public Criteria andNcAddressNotBetween(String value1, String value2) {
            addCriterion("nc_address not between", value1, value2, "ncAddress");
            return (Criteria) this;
        }
            public Criteria andNcContactPersonIsNull() {
            addCriterion("nc_contact_person is null");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonIsNotNull() {
            addCriterion("nc_contact_person is not null");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonEqualTo(String value) {
            addCriterion("nc_contact_person =", value, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonNotEqualTo(String value) {
            addCriterion("nc_contact_person <>", value, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonGreaterThan(String value) {
            addCriterion("nc_contact_person >", value, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonGreaterThanOrEqualTo(String value) {
            addCriterion("nc_contact_person >=", value, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonLessThan(String value) {
            addCriterion("nc_contact_person <", value, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonLessThanOrEqualTo(String value) {
            addCriterion("nc_contact_person <=", value, "ncContactPerson");
            return (Criteria) this;
        }
            public Criteria andNcContactPersonLike(String value) {
            addCriterion("nc_contact_person like", value, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonNotLike(String value) {
            addCriterion("nc_contact_person not like", value, "ncContactPerson");
            return (Criteria) this;
        }
            public Criteria andNcContactPersonIn(List<String> values) {
            addCriterion("nc_contact_person in", values, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andncContactPersonNotIn(List<String> values) {
            addCriterion("nc_contact_person not in", values, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonBetween(String value1, String value2) {
            addCriterion("nc_contact_person between", value1, value2, "ncContactPerson");
            return (Criteria) this;
        }

        public Criteria andNcContactPersonNotBetween(String value1, String value2) {
            addCriterion("nc_contact_person not between", value1, value2, "ncContactPerson");
            return (Criteria) this;
        }
            public Criteria andNcContactPhoneIsNull() {
            addCriterion("nc_contact_phone is null");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneIsNotNull() {
            addCriterion("nc_contact_phone is not null");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneEqualTo(String value) {
            addCriterion("nc_contact_phone =", value, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneNotEqualTo(String value) {
            addCriterion("nc_contact_phone <>", value, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneGreaterThan(String value) {
            addCriterion("nc_contact_phone >", value, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("nc_contact_phone >=", value, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneLessThan(String value) {
            addCriterion("nc_contact_phone <", value, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneLessThanOrEqualTo(String value) {
            addCriterion("nc_contact_phone <=", value, "ncContactPhone");
            return (Criteria) this;
        }
            public Criteria andNcContactPhoneLike(String value) {
            addCriterion("nc_contact_phone like", value, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneNotLike(String value) {
            addCriterion("nc_contact_phone not like", value, "ncContactPhone");
            return (Criteria) this;
        }
            public Criteria andNcContactPhoneIn(List<String> values) {
            addCriterion("nc_contact_phone in", values, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andncContactPhoneNotIn(List<String> values) {
            addCriterion("nc_contact_phone not in", values, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneBetween(String value1, String value2) {
            addCriterion("nc_contact_phone between", value1, value2, "ncContactPhone");
            return (Criteria) this;
        }

        public Criteria andNcContactPhoneNotBetween(String value1, String value2) {
            addCriterion("nc_contact_phone not between", value1, value2, "ncContactPhone");
            return (Criteria) this;
        }
            public Criteria andNcTaskTimeIsNull() {
            addCriterion("nc_task_time is null");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeIsNotNull() {
            addCriterion("nc_task_time is not null");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeEqualTo(Date value) {
            addCriterion("nc_task_time =", value, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeNotEqualTo(Date value) {
            addCriterion("nc_task_time <>", value, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeGreaterThan(Date value) {
            addCriterion("nc_task_time >", value, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("nc_task_time >=", value, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeLessThan(Date value) {
            addCriterion("nc_task_time <", value, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeLessThanOrEqualTo(Date value) {
            addCriterion("nc_task_time <=", value, "ncTaskTime");
            return (Criteria) this;
        }
            public Criteria andNcTaskTimeIn(List<Date> values) {
            addCriterion("nc_task_time in", values, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andncTaskTimeNotIn(List<Date> values) {
            addCriterion("nc_task_time not in", values, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeBetween(Date value1, Date value2) {
            addCriterion("nc_task_time between", value1, value2, "ncTaskTime");
            return (Criteria) this;
        }

        public Criteria andNcTaskTimeNotBetween(Date value1, Date value2) {
            addCriterion("nc_task_time not between", value1, value2, "ncTaskTime");
            return (Criteria) this;
        }
            public Criteria andNcCaseTypeIsNull() {
            addCriterion("nc_case_type is null");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeIsNotNull() {
            addCriterion("nc_case_type is not null");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeEqualTo(String value) {
            addCriterion("nc_case_type =", value, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeNotEqualTo(String value) {
            addCriterion("nc_case_type <>", value, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeGreaterThan(String value) {
            addCriterion("nc_case_type >", value, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeGreaterThanOrEqualTo(String value) {
            addCriterion("nc_case_type >=", value, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeLessThan(String value) {
            addCriterion("nc_case_type <", value, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeLessThanOrEqualTo(String value) {
            addCriterion("nc_case_type <=", value, "ncCaseType");
            return (Criteria) this;
        }
            public Criteria andNcCaseTypeLike(String value) {
            addCriterion("nc_case_type like", value, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeNotLike(String value) {
            addCriterion("nc_case_type not like", value, "ncCaseType");
            return (Criteria) this;
        }
            public Criteria andNcCaseTypeIn(List<String> values) {
            addCriterion("nc_case_type in", values, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andncCaseTypeNotIn(List<String> values) {
            addCriterion("nc_case_type not in", values, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeBetween(String value1, String value2) {
            addCriterion("nc_case_type between", value1, value2, "ncCaseType");
            return (Criteria) this;
        }

        public Criteria andNcCaseTypeNotBetween(String value1, String value2) {
            addCriterion("nc_case_type not between", value1, value2, "ncCaseType");
            return (Criteria) this;
        }
            public Criteria andNcCaseStateIsNull() {
            addCriterion("nc_case_state is null");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateIsNotNull() {
            addCriterion("nc_case_state is not null");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateEqualTo(String value) {
            addCriterion("nc_case_state =", value, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateNotEqualTo(String value) {
            addCriterion("nc_case_state <>", value, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateGreaterThan(String value) {
            addCriterion("nc_case_state >", value, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateGreaterThanOrEqualTo(String value) {
            addCriterion("nc_case_state >=", value, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateLessThan(String value) {
            addCriterion("nc_case_state <", value, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateLessThanOrEqualTo(String value) {
            addCriterion("nc_case_state <=", value, "ncCaseState");
            return (Criteria) this;
        }
            public Criteria andNcCaseStateLike(String value) {
            addCriterion("nc_case_state like", value, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateNotLike(String value) {
            addCriterion("nc_case_state not like", value, "ncCaseState");
            return (Criteria) this;
        }
            public Criteria andNcCaseStateIn(List<String> values) {
            addCriterion("nc_case_state in", values, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andncCaseStateNotIn(List<String> values) {
            addCriterion("nc_case_state not in", values, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateBetween(String value1, String value2) {
            addCriterion("nc_case_state between", value1, value2, "ncCaseState");
            return (Criteria) this;
        }

        public Criteria andNcCaseStateNotBetween(String value1, String value2) {
            addCriterion("nc_case_state not between", value1, value2, "ncCaseState");
            return (Criteria) this;
        }
            public Criteria andNcDefaultStateIsNull() {
            addCriterion("nc_default_state is null");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateIsNotNull() {
            addCriterion("nc_default_state is not null");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateEqualTo(String value) {
            addCriterion("nc_default_state =", value, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateNotEqualTo(String value) {
            addCriterion("nc_default_state <>", value, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateGreaterThan(String value) {
            addCriterion("nc_default_state >", value, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateGreaterThanOrEqualTo(String value) {
            addCriterion("nc_default_state >=", value, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateLessThan(String value) {
            addCriterion("nc_default_state <", value, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateLessThanOrEqualTo(String value) {
            addCriterion("nc_default_state <=", value, "ncDefaultState");
            return (Criteria) this;
        }
            public Criteria andNcDefaultStateLike(String value) {
            addCriterion("nc_default_state like", value, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateNotLike(String value) {
            addCriterion("nc_default_state not like", value, "ncDefaultState");
            return (Criteria) this;
        }
            public Criteria andNcDefaultStateIn(List<String> values) {
            addCriterion("nc_default_state in", values, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andncDefaultStateNotIn(List<String> values) {
            addCriterion("nc_default_state not in", values, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateBetween(String value1, String value2) {
            addCriterion("nc_default_state between", value1, value2, "ncDefaultState");
            return (Criteria) this;
        }

        public Criteria andNcDefaultStateNotBetween(String value1, String value2) {
            addCriterion("nc_default_state not between", value1, value2, "ncDefaultState");
            return (Criteria) this;
        }
            public Criteria andNcMachineConfigIsNull() {
            addCriterion("nc_machine_config is null");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigIsNotNull() {
            addCriterion("nc_machine_config is not null");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigEqualTo(String value) {
            addCriterion("nc_machine_config =", value, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigNotEqualTo(String value) {
            addCriterion("nc_machine_config <>", value, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigGreaterThan(String value) {
            addCriterion("nc_machine_config >", value, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigGreaterThanOrEqualTo(String value) {
            addCriterion("nc_machine_config >=", value, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigLessThan(String value) {
            addCriterion("nc_machine_config <", value, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigLessThanOrEqualTo(String value) {
            addCriterion("nc_machine_config <=", value, "ncMachineConfig");
            return (Criteria) this;
        }
            public Criteria andNcMachineConfigLike(String value) {
            addCriterion("nc_machine_config like", value, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigNotLike(String value) {
            addCriterion("nc_machine_config not like", value, "ncMachineConfig");
            return (Criteria) this;
        }
            public Criteria andNcMachineConfigIn(List<String> values) {
            addCriterion("nc_machine_config in", values, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andncMachineConfigNotIn(List<String> values) {
            addCriterion("nc_machine_config not in", values, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigBetween(String value1, String value2) {
            addCriterion("nc_machine_config between", value1, value2, "ncMachineConfig");
            return (Criteria) this;
        }

        public Criteria andNcMachineConfigNotBetween(String value1, String value2) {
            addCriterion("nc_machine_config not between", value1, value2, "ncMachineConfig");
            return (Criteria) this;
        }
            public Criteria andNcIsReviewIsNull() {
            addCriterion("nc_is_review is null");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewIsNotNull() {
            addCriterion("nc_is_review is not null");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewEqualTo(Integer value) {
            addCriterion("nc_is_review =", value, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewNotEqualTo(Integer value) {
            addCriterion("nc_is_review <>", value, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewGreaterThan(Integer value) {
            addCriterion("nc_is_review >", value, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewGreaterThanOrEqualTo(Integer value) {
            addCriterion("nc_is_review >=", value, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewLessThan(Integer value) {
            addCriterion("nc_is_review <", value, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewLessThanOrEqualTo(Integer value) {
            addCriterion("nc_is_review <=", value, "ncIsReview");
            return (Criteria) this;
        }
            public Criteria andNcIsReviewIn(List<Integer> values) {
            addCriterion("nc_is_review in", values, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andncIsReviewNotIn(List<Integer> values) {
            addCriterion("nc_is_review not in", values, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewBetween(Integer value1, Integer value2) {
            addCriterion("nc_is_review between", value1, value2, "ncIsReview");
            return (Criteria) this;
        }

        public Criteria andNcIsReviewNotBetween(Integer value1, Integer value2) {
            addCriterion("nc_is_review not between", value1, value2, "ncIsReview");
            return (Criteria) this;
        }
            public Criteria andNcIsManyTaskIsNull() {
            addCriterion("nc_is_many_task is null");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskIsNotNull() {
            addCriterion("nc_is_many_task is not null");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskEqualTo(Integer value) {
            addCriterion("nc_is_many_task =", value, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskNotEqualTo(Integer value) {
            addCriterion("nc_is_many_task <>", value, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskGreaterThan(Integer value) {
            addCriterion("nc_is_many_task >", value, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskGreaterThanOrEqualTo(Integer value) {
            addCriterion("nc_is_many_task >=", value, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskLessThan(Integer value) {
            addCriterion("nc_is_many_task <", value, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskLessThanOrEqualTo(Integer value) {
            addCriterion("nc_is_many_task <=", value, "ncIsManyTask");
            return (Criteria) this;
        }
            public Criteria andNcIsManyTaskIn(List<Integer> values) {
            addCriterion("nc_is_many_task in", values, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andncIsManyTaskNotIn(List<Integer> values) {
            addCriterion("nc_is_many_task not in", values, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskBetween(Integer value1, Integer value2) {
            addCriterion("nc_is_many_task between", value1, value2, "ncIsManyTask");
            return (Criteria) this;
        }

        public Criteria andNcIsManyTaskNotBetween(Integer value1, Integer value2) {
            addCriterion("nc_is_many_task not between", value1, value2, "ncIsManyTask");
            return (Criteria) this;
        }
            public Criteria andNcAddEmpIdIsNull() {
            addCriterion("nc_add_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdIsNotNull() {
            addCriterion("nc_add_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdEqualTo(Integer value) {
            addCriterion("nc_add_emp_id =", value, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdNotEqualTo(Integer value) {
            addCriterion("nc_add_emp_id <>", value, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdGreaterThan(Integer value) {
            addCriterion("nc_add_emp_id >", value, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("nc_add_emp_id >=", value, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdLessThan(Integer value) {
            addCriterion("nc_add_emp_id <", value, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdLessThanOrEqualTo(Integer value) {
            addCriterion("nc_add_emp_id <=", value, "ncAddEmpId");
            return (Criteria) this;
        }
            public Criteria andNcAddEmpIdIn(List<Integer> values) {
            addCriterion("nc_add_emp_id in", values, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andncAddEmpIdNotIn(List<Integer> values) {
            addCriterion("nc_add_emp_id not in", values, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdBetween(Integer value1, Integer value2) {
            addCriterion("nc_add_emp_id between", value1, value2, "ncAddEmpId");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("nc_add_emp_id not between", value1, value2, "ncAddEmpId");
            return (Criteria) this;
        }
            public Criteria andNcAddEmpNameIsNull() {
            addCriterion("nc_add_emp_name is null");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameIsNotNull() {
            addCriterion("nc_add_emp_name is not null");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameEqualTo(String value) {
            addCriterion("nc_add_emp_name =", value, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameNotEqualTo(String value) {
            addCriterion("nc_add_emp_name <>", value, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameGreaterThan(String value) {
            addCriterion("nc_add_emp_name >", value, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameGreaterThanOrEqualTo(String value) {
            addCriterion("nc_add_emp_name >=", value, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameLessThan(String value) {
            addCriterion("nc_add_emp_name <", value, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameLessThanOrEqualTo(String value) {
            addCriterion("nc_add_emp_name <=", value, "ncAddEmpName");
            return (Criteria) this;
        }
            public Criteria andNcAddEmpNameLike(String value) {
            addCriterion("nc_add_emp_name like", value, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameNotLike(String value) {
            addCriterion("nc_add_emp_name not like", value, "ncAddEmpName");
            return (Criteria) this;
        }
            public Criteria andNcAddEmpNameIn(List<String> values) {
            addCriterion("nc_add_emp_name in", values, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andncAddEmpNameNotIn(List<String> values) {
            addCriterion("nc_add_emp_name not in", values, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameBetween(String value1, String value2) {
            addCriterion("nc_add_emp_name between", value1, value2, "ncAddEmpName");
            return (Criteria) this;
        }

        public Criteria andNcAddEmpNameNotBetween(String value1, String value2) {
            addCriterion("nc_add_emp_name not between", value1, value2, "ncAddEmpName");
            return (Criteria) this;
        }
            public Criteria andNcAddTimeIsNull() {
            addCriterion("nc_add_time is null");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeIsNotNull() {
            addCriterion("nc_add_time is not null");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeEqualTo(Date value) {
            addCriterion("nc_add_time =", value, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeNotEqualTo(Date value) {
            addCriterion("nc_add_time <>", value, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeGreaterThan(Date value) {
            addCriterion("nc_add_time >", value, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("nc_add_time >=", value, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeLessThan(Date value) {
            addCriterion("nc_add_time <", value, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeLessThanOrEqualTo(Date value) {
            addCriterion("nc_add_time <=", value, "ncAddTime");
            return (Criteria) this;
        }
            public Criteria andNcAddTimeIn(List<Date> values) {
            addCriterion("nc_add_time in", values, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andncAddTimeNotIn(List<Date> values) {
            addCriterion("nc_add_time not in", values, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeBetween(Date value1, Date value2) {
            addCriterion("nc_add_time between", value1, value2, "ncAddTime");
            return (Criteria) this;
        }

        public Criteria andNcAddTimeNotBetween(Date value1, Date value2) {
            addCriterion("nc_add_time not between", value1, value2, "ncAddTime");
            return (Criteria) this;
        }
            public Criteria andNcUpEmpNameIsNull() {
            addCriterion("nc_up_emp_name is null");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameIsNotNull() {
            addCriterion("nc_up_emp_name is not null");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameEqualTo(String value) {
            addCriterion("nc_up_emp_name =", value, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameNotEqualTo(String value) {
            addCriterion("nc_up_emp_name <>", value, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameGreaterThan(String value) {
            addCriterion("nc_up_emp_name >", value, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameGreaterThanOrEqualTo(String value) {
            addCriterion("nc_up_emp_name >=", value, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameLessThan(String value) {
            addCriterion("nc_up_emp_name <", value, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameLessThanOrEqualTo(String value) {
            addCriterion("nc_up_emp_name <=", value, "ncUpEmpName");
            return (Criteria) this;
        }
            public Criteria andNcUpEmpNameLike(String value) {
            addCriterion("nc_up_emp_name like", value, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameNotLike(String value) {
            addCriterion("nc_up_emp_name not like", value, "ncUpEmpName");
            return (Criteria) this;
        }
            public Criteria andNcUpEmpNameIn(List<String> values) {
            addCriterion("nc_up_emp_name in", values, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andncUpEmpNameNotIn(List<String> values) {
            addCriterion("nc_up_emp_name not in", values, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameBetween(String value1, String value2) {
            addCriterion("nc_up_emp_name between", value1, value2, "ncUpEmpName");
            return (Criteria) this;
        }

        public Criteria andNcUpEmpNameNotBetween(String value1, String value2) {
            addCriterion("nc_up_emp_name not between", value1, value2, "ncUpEmpName");
            return (Criteria) this;
        }
            public Criteria andNcUpTimeIsNull() {
            addCriterion("nc_up_time is null");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeIsNotNull() {
            addCriterion("nc_up_time is not null");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeEqualTo(Date value) {
            addCriterion("nc_up_time =", value, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeNotEqualTo(Date value) {
            addCriterion("nc_up_time <>", value, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeGreaterThan(Date value) {
            addCriterion("nc_up_time >", value, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("nc_up_time >=", value, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeLessThan(Date value) {
            addCriterion("nc_up_time <", value, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeLessThanOrEqualTo(Date value) {
            addCriterion("nc_up_time <=", value, "ncUpTime");
            return (Criteria) this;
        }
            public Criteria andNcUpTimeIn(List<Date> values) {
            addCriterion("nc_up_time in", values, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andncUpTimeNotIn(List<Date> values) {
            addCriterion("nc_up_time not in", values, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeBetween(Date value1, Date value2) {
            addCriterion("nc_up_time between", value1, value2, "ncUpTime");
            return (Criteria) this;
        }

        public Criteria andNcUpTimeNotBetween(Date value1, Date value2) {
            addCriterion("nc_up_time not between", value1, value2, "ncUpTime");
            return (Criteria) this;
        }
            public Criteria andNcRemarkIsNull() {
            addCriterion("nc_remark is null");
            return (Criteria) this;
        }

        public Criteria andNcRemarkIsNotNull() {
            addCriterion("nc_remark is not null");
            return (Criteria) this;
        }

        public Criteria andNcRemarkEqualTo(String value) {
            addCriterion("nc_remark =", value, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkNotEqualTo(String value) {
            addCriterion("nc_remark <>", value, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkGreaterThan(String value) {
            addCriterion("nc_remark >", value, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("nc_remark >=", value, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkLessThan(String value) {
            addCriterion("nc_remark <", value, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkLessThanOrEqualTo(String value) {
            addCriterion("nc_remark <=", value, "ncRemark");
            return (Criteria) this;
        }
            public Criteria andNcRemarkLike(String value) {
            addCriterion("nc_remark like", value, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkNotLike(String value) {
            addCriterion("nc_remark not like", value, "ncRemark");
            return (Criteria) this;
        }
            public Criteria andNcRemarkIn(List<String> values) {
            addCriterion("nc_remark in", values, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andncRemarkNotIn(List<String> values) {
            addCriterion("nc_remark not in", values, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkBetween(String value1, String value2) {
            addCriterion("nc_remark between", value1, value2, "ncRemark");
            return (Criteria) this;
        }

        public Criteria andNcRemarkNotBetween(String value1, String value2) {
            addCriterion("nc_remark not between", value1, value2, "ncRemark");
            return (Criteria) this;
        }
            public Criteria andNcOpenNumberIsNull() {
            addCriterion("nc_open_number is null");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberIsNotNull() {
            addCriterion("nc_open_number is not null");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberEqualTo(String value) {
            addCriterion("nc_open_number =", value, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberNotEqualTo(String value) {
            addCriterion("nc_open_number <>", value, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberGreaterThan(String value) {
            addCriterion("nc_open_number >", value, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberGreaterThanOrEqualTo(String value) {
            addCriterion("nc_open_number >=", value, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberLessThan(String value) {
            addCriterion("nc_open_number <", value, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberLessThanOrEqualTo(String value) {
            addCriterion("nc_open_number <=", value, "ncOpenNumber");
            return (Criteria) this;
        }
            public Criteria andNcOpenNumberLike(String value) {
            addCriterion("nc_open_number like", value, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberNotLike(String value) {
            addCriterion("nc_open_number not like", value, "ncOpenNumber");
            return (Criteria) this;
        }
            public Criteria andNcOpenNumberIn(List<String> values) {
            addCriterion("nc_open_number in", values, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andncOpenNumberNotIn(List<String> values) {
            addCriterion("nc_open_number not in", values, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberBetween(String value1, String value2) {
            addCriterion("nc_open_number between", value1, value2, "ncOpenNumber");
            return (Criteria) this;
        }

        public Criteria andNcOpenNumberNotBetween(String value1, String value2) {
            addCriterion("nc_open_number not between", value1, value2, "ncOpenNumber");
            return (Criteria) this;
        }
            public Criteria andNcOpenNameIsNull() {
            addCriterion("nc_open_name is null");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameIsNotNull() {
            addCriterion("nc_open_name is not null");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameEqualTo(String value) {
            addCriterion("nc_open_name =", value, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameNotEqualTo(String value) {
            addCriterion("nc_open_name <>", value, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameGreaterThan(String value) {
            addCriterion("nc_open_name >", value, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameGreaterThanOrEqualTo(String value) {
            addCriterion("nc_open_name >=", value, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameLessThan(String value) {
            addCriterion("nc_open_name <", value, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameLessThanOrEqualTo(String value) {
            addCriterion("nc_open_name <=", value, "ncOpenName");
            return (Criteria) this;
        }
            public Criteria andNcOpenNameLike(String value) {
            addCriterion("nc_open_name like", value, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameNotLike(String value) {
            addCriterion("nc_open_name not like", value, "ncOpenName");
            return (Criteria) this;
        }
            public Criteria andNcOpenNameIn(List<String> values) {
            addCriterion("nc_open_name in", values, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andncOpenNameNotIn(List<String> values) {
            addCriterion("nc_open_name not in", values, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameBetween(String value1, String value2) {
            addCriterion("nc_open_name between", value1, value2, "ncOpenName");
            return (Criteria) this;
        }

        public Criteria andNcOpenNameNotBetween(String value1, String value2) {
            addCriterion("nc_open_name not between", value1, value2, "ncOpenName");
            return (Criteria) this;
        }
            public Criteria andNcOpenTimeIsNull() {
            addCriterion("nc_open_time is null");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeIsNotNull() {
            addCriterion("nc_open_time is not null");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeEqualTo(Date value) {
            addCriterion("nc_open_time =", value, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeNotEqualTo(Date value) {
            addCriterion("nc_open_time <>", value, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeGreaterThan(Date value) {
            addCriterion("nc_open_time >", value, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("nc_open_time >=", value, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeLessThan(Date value) {
            addCriterion("nc_open_time <", value, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeLessThanOrEqualTo(Date value) {
            addCriterion("nc_open_time <=", value, "ncOpenTime");
            return (Criteria) this;
        }
            public Criteria andNcOpenTimeIn(List<Date> values) {
            addCriterion("nc_open_time in", values, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andncOpenTimeNotIn(List<Date> values) {
            addCriterion("nc_open_time not in", values, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeBetween(Date value1, Date value2) {
            addCriterion("nc_open_time between", value1, value2, "ncOpenTime");
            return (Criteria) this;
        }

        public Criteria andNcOpenTimeNotBetween(Date value1, Date value2) {
            addCriterion("nc_open_time not between", value1, value2, "ncOpenTime");
            return (Criteria) this;
        }
    }
}
