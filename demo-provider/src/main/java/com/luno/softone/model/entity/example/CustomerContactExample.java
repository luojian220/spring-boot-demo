package com.luno.softone.model.entity.example;

import com.luno.softone.common.entity.example.AbstractExample;
import com.luno.softone.common.entity.example.GeneratedCriteria;

import java.util.Date;
import java.util.List;

/**
 * 实体
 * 表名 customer_contact
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-09-27 20:46:53
 */
public class CustomerContactExample extends AbstractExample {
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

            public Criteria andCcIdIsNull() {
            addCriterion("cc_id is null");
            return (Criteria) this;
        }

        public Criteria andCcIdIsNotNull() {
            addCriterion("cc_id is not null");
            return (Criteria) this;
        }

        public Criteria andCcIdEqualTo(Integer value) {
            addCriterion("cc_id =", value, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdNotEqualTo(Integer value) {
            addCriterion("cc_id <>", value, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdGreaterThan(Integer value) {
            addCriterion("cc_id >", value, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cc_id >=", value, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdLessThan(Integer value) {
            addCriterion("cc_id <", value, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdLessThanOrEqualTo(Integer value) {
            addCriterion("cc_id <=", value, "ccId");
            return (Criteria) this;
        }
            public Criteria andCcIdIn(List<Integer> values) {
            addCriterion("cc_id in", values, "ccId");
            return (Criteria) this;
        }

        public Criteria andccIdNotIn(List<Integer> values) {
            addCriterion("cc_id not in", values, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdBetween(Integer value1, Integer value2) {
            addCriterion("cc_id between", value1, value2, "ccId");
            return (Criteria) this;
        }

        public Criteria andCcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cc_id not between", value1, value2, "ccId");
            return (Criteria) this;
        }
            public Criteria andCcCuIdIsNull() {
            addCriterion("cc_cu_id is null");
            return (Criteria) this;
        }

        public Criteria andCcCuIdIsNotNull() {
            addCriterion("cc_cu_id is not null");
            return (Criteria) this;
        }

        public Criteria andCcCuIdEqualTo(Integer value) {
            addCriterion("cc_cu_id =", value, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdNotEqualTo(Integer value) {
            addCriterion("cc_cu_id <>", value, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdGreaterThan(Integer value) {
            addCriterion("cc_cu_id >", value, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cc_cu_id >=", value, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdLessThan(Integer value) {
            addCriterion("cc_cu_id <", value, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdLessThanOrEqualTo(Integer value) {
            addCriterion("cc_cu_id <=", value, "ccCuId");
            return (Criteria) this;
        }
            public Criteria andCcCuIdIn(List<Integer> values) {
            addCriterion("cc_cu_id in", values, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andccCuIdNotIn(List<Integer> values) {
            addCriterion("cc_cu_id not in", values, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdBetween(Integer value1, Integer value2) {
            addCriterion("cc_cu_id between", value1, value2, "ccCuId");
            return (Criteria) this;
        }

        public Criteria andCcCuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cc_cu_id not between", value1, value2, "ccCuId");
            return (Criteria) this;
        }
            public Criteria andCcContactIsNull() {
            addCriterion("cc_contact is null");
            return (Criteria) this;
        }

        public Criteria andCcContactIsNotNull() {
            addCriterion("cc_contact is not null");
            return (Criteria) this;
        }

        public Criteria andCcContactEqualTo(String value) {
            addCriterion("cc_contact =", value, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactNotEqualTo(String value) {
            addCriterion("cc_contact <>", value, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactGreaterThan(String value) {
            addCriterion("cc_contact >", value, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactGreaterThanOrEqualTo(String value) {
            addCriterion("cc_contact >=", value, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactLessThan(String value) {
            addCriterion("cc_contact <", value, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactLessThanOrEqualTo(String value) {
            addCriterion("cc_contact <=", value, "ccContact");
            return (Criteria) this;
        }
            public Criteria andCcContactLike(String value) {
            addCriterion("cc_contact like", value, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactNotLike(String value) {
            addCriterion("cc_contact not like", value, "ccContact");
            return (Criteria) this;
        }
            public Criteria andCcContactIn(List<String> values) {
            addCriterion("cc_contact in", values, "ccContact");
            return (Criteria) this;
        }

        public Criteria andccContactNotIn(List<String> values) {
            addCriterion("cc_contact not in", values, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactBetween(String value1, String value2) {
            addCriterion("cc_contact between", value1, value2, "ccContact");
            return (Criteria) this;
        }

        public Criteria andCcContactNotBetween(String value1, String value2) {
            addCriterion("cc_contact not between", value1, value2, "ccContact");
            return (Criteria) this;
        }
            public Criteria andCcPhoneIsNull() {
            addCriterion("cc_phone is null");
            return (Criteria) this;
        }

        public Criteria andCcPhoneIsNotNull() {
            addCriterion("cc_phone is not null");
            return (Criteria) this;
        }

        public Criteria andCcPhoneEqualTo(String value) {
            addCriterion("cc_phone =", value, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneNotEqualTo(String value) {
            addCriterion("cc_phone <>", value, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneGreaterThan(String value) {
            addCriterion("cc_phone >", value, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("cc_phone >=", value, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneLessThan(String value) {
            addCriterion("cc_phone <", value, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneLessThanOrEqualTo(String value) {
            addCriterion("cc_phone <=", value, "ccPhone");
            return (Criteria) this;
        }
            public Criteria andCcPhoneLike(String value) {
            addCriterion("cc_phone like", value, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneNotLike(String value) {
            addCriterion("cc_phone not like", value, "ccPhone");
            return (Criteria) this;
        }
            public Criteria andCcPhoneIn(List<String> values) {
            addCriterion("cc_phone in", values, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andccPhoneNotIn(List<String> values) {
            addCriterion("cc_phone not in", values, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneBetween(String value1, String value2) {
            addCriterion("cc_phone between", value1, value2, "ccPhone");
            return (Criteria) this;
        }

        public Criteria andCcPhoneNotBetween(String value1, String value2) {
            addCriterion("cc_phone not between", value1, value2, "ccPhone");
            return (Criteria) this;
        }
            public Criteria andCcAddTimeIsNull() {
            addCriterion("cc_add_time is null");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeIsNotNull() {
            addCriterion("cc_add_time is not null");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeEqualTo(Date value) {
            addCriterion("cc_add_time =", value, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeNotEqualTo(Date value) {
            addCriterion("cc_add_time <>", value, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeGreaterThan(Date value) {
            addCriterion("cc_add_time >", value, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cc_add_time >=", value, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeLessThan(Date value) {
            addCriterion("cc_add_time <", value, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeLessThanOrEqualTo(Date value) {
            addCriterion("cc_add_time <=", value, "ccAddTime");
            return (Criteria) this;
        }
            public Criteria andCcAddTimeIn(List<Date> values) {
            addCriterion("cc_add_time in", values, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andccAddTimeNotIn(List<Date> values) {
            addCriterion("cc_add_time not in", values, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeBetween(Date value1, Date value2) {
            addCriterion("cc_add_time between", value1, value2, "ccAddTime");
            return (Criteria) this;
        }

        public Criteria andCcAddTimeNotBetween(Date value1, Date value2) {
            addCriterion("cc_add_time not between", value1, value2, "ccAddTime");
            return (Criteria) this;
        }
    }
}
