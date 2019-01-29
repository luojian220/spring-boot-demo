package com.luno.softone.model.entity.example;

import com.luno.softone.entity.example.AbstractExample;
import com.luno.softone.entity.example.GeneratedCriteria;

import java.util.Date;
import java.util.List;

/**
 * 实体
 * 表名 customer
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-09-28 21:09:04
 */
public class CustomerExample extends AbstractExample {
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

            public Criteria andCuIdIsNull() {
            addCriterion("cu_id is null");
            return (Criteria) this;
        }

        public Criteria andCuIdIsNotNull() {
            addCriterion("cu_id is not null");
            return (Criteria) this;
        }

        public Criteria andCuIdEqualTo(Integer value) {
            addCriterion("cu_id =", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdNotEqualTo(Integer value) {
            addCriterion("cu_id <>", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdGreaterThan(Integer value) {
            addCriterion("cu_id >", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cu_id >=", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdLessThan(Integer value) {
            addCriterion("cu_id <", value, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdLessThanOrEqualTo(Integer value) {
            addCriterion("cu_id <=", value, "cuId");
            return (Criteria) this;
        }
            public Criteria andCuIdIn(List<Integer> values) {
            addCriterion("cu_id in", values, "cuId");
            return (Criteria) this;
        }

        public Criteria andcuIdNotIn(List<Integer> values) {
            addCriterion("cu_id not in", values, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdBetween(Integer value1, Integer value2) {
            addCriterion("cu_id between", value1, value2, "cuId");
            return (Criteria) this;
        }

        public Criteria andCuIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cu_id not between", value1, value2, "cuId");
            return (Criteria) this;
        }
            public Criteria andCuNumberIsNull() {
            addCriterion("cu_number is null");
            return (Criteria) this;
        }

        public Criteria andCuNumberIsNotNull() {
            addCriterion("cu_number is not null");
            return (Criteria) this;
        }

        public Criteria andCuNumberEqualTo(String value) {
            addCriterion("cu_number =", value, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberNotEqualTo(String value) {
            addCriterion("cu_number <>", value, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberGreaterThan(String value) {
            addCriterion("cu_number >", value, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberGreaterThanOrEqualTo(String value) {
            addCriterion("cu_number >=", value, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberLessThan(String value) {
            addCriterion("cu_number <", value, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberLessThanOrEqualTo(String value) {
            addCriterion("cu_number <=", value, "cuNumber");
            return (Criteria) this;
        }
            public Criteria andCuNumberLike(String value) {
            addCriterion("cu_number like", value, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberNotLike(String value) {
            addCriterion("cu_number not like", value, "cuNumber");
            return (Criteria) this;
        }
            public Criteria andCuNumberIn(List<String> values) {
            addCriterion("cu_number in", values, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andcuNumberNotIn(List<String> values) {
            addCriterion("cu_number not in", values, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberBetween(String value1, String value2) {
            addCriterion("cu_number between", value1, value2, "cuNumber");
            return (Criteria) this;
        }

        public Criteria andCuNumberNotBetween(String value1, String value2) {
            addCriterion("cu_number not between", value1, value2, "cuNumber");
            return (Criteria) this;
        }
            public Criteria andCuNameIsNull() {
            addCriterion("cu_name is null");
            return (Criteria) this;
        }

        public Criteria andCuNameIsNotNull() {
            addCriterion("cu_name is not null");
            return (Criteria) this;
        }

        public Criteria andCuNameEqualTo(String value) {
            addCriterion("cu_name =", value, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameNotEqualTo(String value) {
            addCriterion("cu_name <>", value, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameGreaterThan(String value) {
            addCriterion("cu_name >", value, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameGreaterThanOrEqualTo(String value) {
            addCriterion("cu_name >=", value, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameLessThan(String value) {
            addCriterion("cu_name <", value, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameLessThanOrEqualTo(String value) {
            addCriterion("cu_name <=", value, "cuName");
            return (Criteria) this;
        }
            public Criteria andCuNameLike(String value) {
            addCriterion("cu_name like", value, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameNotLike(String value) {
            addCriterion("cu_name not like", value, "cuName");
            return (Criteria) this;
        }
            public Criteria andCuNameIn(List<String> values) {
            addCriterion("cu_name in", values, "cuName");
            return (Criteria) this;
        }

        public Criteria andcuNameNotIn(List<String> values) {
            addCriterion("cu_name not in", values, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameBetween(String value1, String value2) {
            addCriterion("cu_name between", value1, value2, "cuName");
            return (Criteria) this;
        }

        public Criteria andCuNameNotBetween(String value1, String value2) {
            addCriterion("cu_name not between", value1, value2, "cuName");
            return (Criteria) this;
        }
            public Criteria andCuSimpleNameIsNull() {
            addCriterion("cu_simple_name is null");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameIsNotNull() {
            addCriterion("cu_simple_name is not null");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameEqualTo(String value) {
            addCriterion("cu_simple_name =", value, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameNotEqualTo(String value) {
            addCriterion("cu_simple_name <>", value, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameGreaterThan(String value) {
            addCriterion("cu_simple_name >", value, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameGreaterThanOrEqualTo(String value) {
            addCriterion("cu_simple_name >=", value, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameLessThan(String value) {
            addCriterion("cu_simple_name <", value, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameLessThanOrEqualTo(String value) {
            addCriterion("cu_simple_name <=", value, "cuSimpleName");
            return (Criteria) this;
        }
            public Criteria andCuSimpleNameLike(String value) {
            addCriterion("cu_simple_name like", value, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameNotLike(String value) {
            addCriterion("cu_simple_name not like", value, "cuSimpleName");
            return (Criteria) this;
        }
            public Criteria andCuSimpleNameIn(List<String> values) {
            addCriterion("cu_simple_name in", values, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andcuSimpleNameNotIn(List<String> values) {
            addCriterion("cu_simple_name not in", values, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameBetween(String value1, String value2) {
            addCriterion("cu_simple_name between", value1, value2, "cuSimpleName");
            return (Criteria) this;
        }

        public Criteria andCuSimpleNameNotBetween(String value1, String value2) {
            addCriterion("cu_simple_name not between", value1, value2, "cuSimpleName");
            return (Criteria) this;
        }
            public Criteria andCuPyNameIsNull() {
            addCriterion("cu_py_name is null");
            return (Criteria) this;
        }

        public Criteria andCuPyNameIsNotNull() {
            addCriterion("cu_py_name is not null");
            return (Criteria) this;
        }

        public Criteria andCuPyNameEqualTo(String value) {
            addCriterion("cu_py_name =", value, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameNotEqualTo(String value) {
            addCriterion("cu_py_name <>", value, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameGreaterThan(String value) {
            addCriterion("cu_py_name >", value, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameGreaterThanOrEqualTo(String value) {
            addCriterion("cu_py_name >=", value, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameLessThan(String value) {
            addCriterion("cu_py_name <", value, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameLessThanOrEqualTo(String value) {
            addCriterion("cu_py_name <=", value, "cuPyName");
            return (Criteria) this;
        }
            public Criteria andCuPyNameLike(String value) {
            addCriterion("cu_py_name like", value, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameNotLike(String value) {
            addCriterion("cu_py_name not like", value, "cuPyName");
            return (Criteria) this;
        }
            public Criteria andCuPyNameIn(List<String> values) {
            addCriterion("cu_py_name in", values, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andcuPyNameNotIn(List<String> values) {
            addCriterion("cu_py_name not in", values, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameBetween(String value1, String value2) {
            addCriterion("cu_py_name between", value1, value2, "cuPyName");
            return (Criteria) this;
        }

        public Criteria andCuPyNameNotBetween(String value1, String value2) {
            addCriterion("cu_py_name not between", value1, value2, "cuPyName");
            return (Criteria) this;
        }
            public Criteria andCuSimplePyNameIsNull() {
            addCriterion("cu_simple_py_name is null");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameIsNotNull() {
            addCriterion("cu_simple_py_name is not null");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameEqualTo(String value) {
            addCriterion("cu_simple_py_name =", value, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameNotEqualTo(String value) {
            addCriterion("cu_simple_py_name <>", value, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameGreaterThan(String value) {
            addCriterion("cu_simple_py_name >", value, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameGreaterThanOrEqualTo(String value) {
            addCriterion("cu_simple_py_name >=", value, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameLessThan(String value) {
            addCriterion("cu_simple_py_name <", value, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameLessThanOrEqualTo(String value) {
            addCriterion("cu_simple_py_name <=", value, "cuSimplePyName");
            return (Criteria) this;
        }
            public Criteria andCuSimplePyNameLike(String value) {
            addCriterion("cu_simple_py_name like", value, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameNotLike(String value) {
            addCriterion("cu_simple_py_name not like", value, "cuSimplePyName");
            return (Criteria) this;
        }
            public Criteria andCuSimplePyNameIn(List<String> values) {
            addCriterion("cu_simple_py_name in", values, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andcuSimplePyNameNotIn(List<String> values) {
            addCriterion("cu_simple_py_name not in", values, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameBetween(String value1, String value2) {
            addCriterion("cu_simple_py_name between", value1, value2, "cuSimplePyName");
            return (Criteria) this;
        }

        public Criteria andCuSimplePyNameNotBetween(String value1, String value2) {
            addCriterion("cu_simple_py_name not between", value1, value2, "cuSimplePyName");
            return (Criteria) this;
        }
            public Criteria andCuPhoneIsNull() {
            addCriterion("cu_phone is null");
            return (Criteria) this;
        }

        public Criteria andCuPhoneIsNotNull() {
            addCriterion("cu_phone is not null");
            return (Criteria) this;
        }

        public Criteria andCuPhoneEqualTo(String value) {
            addCriterion("cu_phone =", value, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneNotEqualTo(String value) {
            addCriterion("cu_phone <>", value, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneGreaterThan(String value) {
            addCriterion("cu_phone >", value, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("cu_phone >=", value, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneLessThan(String value) {
            addCriterion("cu_phone <", value, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneLessThanOrEqualTo(String value) {
            addCriterion("cu_phone <=", value, "cuPhone");
            return (Criteria) this;
        }
            public Criteria andCuPhoneLike(String value) {
            addCriterion("cu_phone like", value, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneNotLike(String value) {
            addCriterion("cu_phone not like", value, "cuPhone");
            return (Criteria) this;
        }
            public Criteria andCuPhoneIn(List<String> values) {
            addCriterion("cu_phone in", values, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andcuPhoneNotIn(List<String> values) {
            addCriterion("cu_phone not in", values, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneBetween(String value1, String value2) {
            addCriterion("cu_phone between", value1, value2, "cuPhone");
            return (Criteria) this;
        }

        public Criteria andCuPhoneNotBetween(String value1, String value2) {
            addCriterion("cu_phone not between", value1, value2, "cuPhone");
            return (Criteria) this;
        }
            public Criteria andCuAddressIsNull() {
            addCriterion("cu_address is null");
            return (Criteria) this;
        }

        public Criteria andCuAddressIsNotNull() {
            addCriterion("cu_address is not null");
            return (Criteria) this;
        }

        public Criteria andCuAddressEqualTo(String value) {
            addCriterion("cu_address =", value, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressNotEqualTo(String value) {
            addCriterion("cu_address <>", value, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressGreaterThan(String value) {
            addCriterion("cu_address >", value, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressGreaterThanOrEqualTo(String value) {
            addCriterion("cu_address >=", value, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressLessThan(String value) {
            addCriterion("cu_address <", value, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressLessThanOrEqualTo(String value) {
            addCriterion("cu_address <=", value, "cuAddress");
            return (Criteria) this;
        }
            public Criteria andCuAddressLike(String value) {
            addCriterion("cu_address like", value, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressNotLike(String value) {
            addCriterion("cu_address not like", value, "cuAddress");
            return (Criteria) this;
        }
            public Criteria andCuAddressIn(List<String> values) {
            addCriterion("cu_address in", values, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andcuAddressNotIn(List<String> values) {
            addCriterion("cu_address not in", values, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressBetween(String value1, String value2) {
            addCriterion("cu_address between", value1, value2, "cuAddress");
            return (Criteria) this;
        }

        public Criteria andCuAddressNotBetween(String value1, String value2) {
            addCriterion("cu_address not between", value1, value2, "cuAddress");
            return (Criteria) this;
        }
            public Criteria andCuContactIsNull() {
            addCriterion("cu_contact is null");
            return (Criteria) this;
        }

        public Criteria andCuContactIsNotNull() {
            addCriterion("cu_contact is not null");
            return (Criteria) this;
        }

        public Criteria andCuContactEqualTo(String value) {
            addCriterion("cu_contact =", value, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactNotEqualTo(String value) {
            addCriterion("cu_contact <>", value, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactGreaterThan(String value) {
            addCriterion("cu_contact >", value, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactGreaterThanOrEqualTo(String value) {
            addCriterion("cu_contact >=", value, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactLessThan(String value) {
            addCriterion("cu_contact <", value, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactLessThanOrEqualTo(String value) {
            addCriterion("cu_contact <=", value, "cuContact");
            return (Criteria) this;
        }
            public Criteria andCuContactLike(String value) {
            addCriterion("cu_contact like", value, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactNotLike(String value) {
            addCriterion("cu_contact not like", value, "cuContact");
            return (Criteria) this;
        }
            public Criteria andCuContactIn(List<String> values) {
            addCriterion("cu_contact in", values, "cuContact");
            return (Criteria) this;
        }

        public Criteria andcuContactNotIn(List<String> values) {
            addCriterion("cu_contact not in", values, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactBetween(String value1, String value2) {
            addCriterion("cu_contact between", value1, value2, "cuContact");
            return (Criteria) this;
        }

        public Criteria andCuContactNotBetween(String value1, String value2) {
            addCriterion("cu_contact not between", value1, value2, "cuContact");
            return (Criteria) this;
        }
            public Criteria andCuContactPhoneIsNull() {
            addCriterion("cu_contact_phone is null");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneIsNotNull() {
            addCriterion("cu_contact_phone is not null");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneEqualTo(String value) {
            addCriterion("cu_contact_phone =", value, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneNotEqualTo(String value) {
            addCriterion("cu_contact_phone <>", value, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneGreaterThan(String value) {
            addCriterion("cu_contact_phone >", value, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("cu_contact_phone >=", value, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneLessThan(String value) {
            addCriterion("cu_contact_phone <", value, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneLessThanOrEqualTo(String value) {
            addCriterion("cu_contact_phone <=", value, "cuContactPhone");
            return (Criteria) this;
        }
            public Criteria andCuContactPhoneLike(String value) {
            addCriterion("cu_contact_phone like", value, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneNotLike(String value) {
            addCriterion("cu_contact_phone not like", value, "cuContactPhone");
            return (Criteria) this;
        }
            public Criteria andCuContactPhoneIn(List<String> values) {
            addCriterion("cu_contact_phone in", values, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andcuContactPhoneNotIn(List<String> values) {
            addCriterion("cu_contact_phone not in", values, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneBetween(String value1, String value2) {
            addCriterion("cu_contact_phone between", value1, value2, "cuContactPhone");
            return (Criteria) this;
        }

        public Criteria andCuContactPhoneNotBetween(String value1, String value2) {
            addCriterion("cu_contact_phone not between", value1, value2, "cuContactPhone");
            return (Criteria) this;
        }
            public Criteria andCuFaxIsNull() {
            addCriterion("cu_fax is null");
            return (Criteria) this;
        }

        public Criteria andCuFaxIsNotNull() {
            addCriterion("cu_fax is not null");
            return (Criteria) this;
        }

        public Criteria andCuFaxEqualTo(String value) {
            addCriterion("cu_fax =", value, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxNotEqualTo(String value) {
            addCriterion("cu_fax <>", value, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxGreaterThan(String value) {
            addCriterion("cu_fax >", value, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxGreaterThanOrEqualTo(String value) {
            addCriterion("cu_fax >=", value, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxLessThan(String value) {
            addCriterion("cu_fax <", value, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxLessThanOrEqualTo(String value) {
            addCriterion("cu_fax <=", value, "cuFax");
            return (Criteria) this;
        }
            public Criteria andCuFaxLike(String value) {
            addCriterion("cu_fax like", value, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxNotLike(String value) {
            addCriterion("cu_fax not like", value, "cuFax");
            return (Criteria) this;
        }
            public Criteria andCuFaxIn(List<String> values) {
            addCriterion("cu_fax in", values, "cuFax");
            return (Criteria) this;
        }

        public Criteria andcuFaxNotIn(List<String> values) {
            addCriterion("cu_fax not in", values, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxBetween(String value1, String value2) {
            addCriterion("cu_fax between", value1, value2, "cuFax");
            return (Criteria) this;
        }

        public Criteria andCuFaxNotBetween(String value1, String value2) {
            addCriterion("cu_fax not between", value1, value2, "cuFax");
            return (Criteria) this;
        }
            public Criteria andCuZipCodeIsNull() {
            addCriterion("cu_zip_code is null");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeIsNotNull() {
            addCriterion("cu_zip_code is not null");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeEqualTo(String value) {
            addCriterion("cu_zip_code =", value, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeNotEqualTo(String value) {
            addCriterion("cu_zip_code <>", value, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeGreaterThan(String value) {
            addCriterion("cu_zip_code >", value, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeGreaterThanOrEqualTo(String value) {
            addCriterion("cu_zip_code >=", value, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeLessThan(String value) {
            addCriterion("cu_zip_code <", value, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeLessThanOrEqualTo(String value) {
            addCriterion("cu_zip_code <=", value, "cuZipCode");
            return (Criteria) this;
        }
            public Criteria andCuZipCodeLike(String value) {
            addCriterion("cu_zip_code like", value, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeNotLike(String value) {
            addCriterion("cu_zip_code not like", value, "cuZipCode");
            return (Criteria) this;
        }
            public Criteria andCuZipCodeIn(List<String> values) {
            addCriterion("cu_zip_code in", values, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andcuZipCodeNotIn(List<String> values) {
            addCriterion("cu_zip_code not in", values, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeBetween(String value1, String value2) {
            addCriterion("cu_zip_code between", value1, value2, "cuZipCode");
            return (Criteria) this;
        }

        public Criteria andCuZipCodeNotBetween(String value1, String value2) {
            addCriterion("cu_zip_code not between", value1, value2, "cuZipCode");
            return (Criteria) this;
        }
            public Criteria andCuUrlIsNull() {
            addCriterion("cu_url is null");
            return (Criteria) this;
        }

        public Criteria andCuUrlIsNotNull() {
            addCriterion("cu_url is not null");
            return (Criteria) this;
        }

        public Criteria andCuUrlEqualTo(String value) {
            addCriterion("cu_url =", value, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlNotEqualTo(String value) {
            addCriterion("cu_url <>", value, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlGreaterThan(String value) {
            addCriterion("cu_url >", value, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlGreaterThanOrEqualTo(String value) {
            addCriterion("cu_url >=", value, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlLessThan(String value) {
            addCriterion("cu_url <", value, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlLessThanOrEqualTo(String value) {
            addCriterion("cu_url <=", value, "cuUrl");
            return (Criteria) this;
        }
            public Criteria andCuUrlLike(String value) {
            addCriterion("cu_url like", value, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlNotLike(String value) {
            addCriterion("cu_url not like", value, "cuUrl");
            return (Criteria) this;
        }
            public Criteria andCuUrlIn(List<String> values) {
            addCriterion("cu_url in", values, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andcuUrlNotIn(List<String> values) {
            addCriterion("cu_url not in", values, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlBetween(String value1, String value2) {
            addCriterion("cu_url between", value1, value2, "cuUrl");
            return (Criteria) this;
        }

        public Criteria andCuUrlNotBetween(String value1, String value2) {
            addCriterion("cu_url not between", value1, value2, "cuUrl");
            return (Criteria) this;
        }
            public Criteria andCuEmailIsNull() {
            addCriterion("cu_email is null");
            return (Criteria) this;
        }

        public Criteria andCuEmailIsNotNull() {
            addCriterion("cu_email is not null");
            return (Criteria) this;
        }

        public Criteria andCuEmailEqualTo(String value) {
            addCriterion("cu_email =", value, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailNotEqualTo(String value) {
            addCriterion("cu_email <>", value, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailGreaterThan(String value) {
            addCriterion("cu_email >", value, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailGreaterThanOrEqualTo(String value) {
            addCriterion("cu_email >=", value, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailLessThan(String value) {
            addCriterion("cu_email <", value, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailLessThanOrEqualTo(String value) {
            addCriterion("cu_email <=", value, "cuEmail");
            return (Criteria) this;
        }
            public Criteria andCuEmailLike(String value) {
            addCriterion("cu_email like", value, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailNotLike(String value) {
            addCriterion("cu_email not like", value, "cuEmail");
            return (Criteria) this;
        }
            public Criteria andCuEmailIn(List<String> values) {
            addCriterion("cu_email in", values, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andcuEmailNotIn(List<String> values) {
            addCriterion("cu_email not in", values, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailBetween(String value1, String value2) {
            addCriterion("cu_email between", value1, value2, "cuEmail");
            return (Criteria) this;
        }

        public Criteria andCuEmailNotBetween(String value1, String value2) {
            addCriterion("cu_email not between", value1, value2, "cuEmail");
            return (Criteria) this;
        }
            public Criteria andCuPrincipalIsNull() {
            addCriterion("cu_principal is null");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalIsNotNull() {
            addCriterion("cu_principal is not null");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalEqualTo(String value) {
            addCriterion("cu_principal =", value, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalNotEqualTo(String value) {
            addCriterion("cu_principal <>", value, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalGreaterThan(String value) {
            addCriterion("cu_principal >", value, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalGreaterThanOrEqualTo(String value) {
            addCriterion("cu_principal >=", value, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalLessThan(String value) {
            addCriterion("cu_principal <", value, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalLessThanOrEqualTo(String value) {
            addCriterion("cu_principal <=", value, "cuPrincipal");
            return (Criteria) this;
        }
            public Criteria andCuPrincipalLike(String value) {
            addCriterion("cu_principal like", value, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalNotLike(String value) {
            addCriterion("cu_principal not like", value, "cuPrincipal");
            return (Criteria) this;
        }
            public Criteria andCuPrincipalIn(List<String> values) {
            addCriterion("cu_principal in", values, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andcuPrincipalNotIn(List<String> values) {
            addCriterion("cu_principal not in", values, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalBetween(String value1, String value2) {
            addCriterion("cu_principal between", value1, value2, "cuPrincipal");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalNotBetween(String value1, String value2) {
            addCriterion("cu_principal not between", value1, value2, "cuPrincipal");
            return (Criteria) this;
        }
            public Criteria andCuPrincipalPhoneIsNull() {
            addCriterion("cu_principal_phone is null");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneIsNotNull() {
            addCriterion("cu_principal_phone is not null");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneEqualTo(String value) {
            addCriterion("cu_principal_phone =", value, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneNotEqualTo(String value) {
            addCriterion("cu_principal_phone <>", value, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneGreaterThan(String value) {
            addCriterion("cu_principal_phone >", value, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("cu_principal_phone >=", value, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneLessThan(String value) {
            addCriterion("cu_principal_phone <", value, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneLessThanOrEqualTo(String value) {
            addCriterion("cu_principal_phone <=", value, "cuPrincipalPhone");
            return (Criteria) this;
        }
            public Criteria andCuPrincipalPhoneLike(String value) {
            addCriterion("cu_principal_phone like", value, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneNotLike(String value) {
            addCriterion("cu_principal_phone not like", value, "cuPrincipalPhone");
            return (Criteria) this;
        }
            public Criteria andCuPrincipalPhoneIn(List<String> values) {
            addCriterion("cu_principal_phone in", values, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andcuPrincipalPhoneNotIn(List<String> values) {
            addCriterion("cu_principal_phone not in", values, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneBetween(String value1, String value2) {
            addCriterion("cu_principal_phone between", value1, value2, "cuPrincipalPhone");
            return (Criteria) this;
        }

        public Criteria andCuPrincipalPhoneNotBetween(String value1, String value2) {
            addCriterion("cu_principal_phone not between", value1, value2, "cuPrincipalPhone");
            return (Criteria) this;
        }
            public Criteria andCuSourceIsNull() {
            addCriterion("cu_source is null");
            return (Criteria) this;
        }

        public Criteria andCuSourceIsNotNull() {
            addCriterion("cu_source is not null");
            return (Criteria) this;
        }

        public Criteria andCuSourceEqualTo(String value) {
            addCriterion("cu_source =", value, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceNotEqualTo(String value) {
            addCriterion("cu_source <>", value, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceGreaterThan(String value) {
            addCriterion("cu_source >", value, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceGreaterThanOrEqualTo(String value) {
            addCriterion("cu_source >=", value, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceLessThan(String value) {
            addCriterion("cu_source <", value, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceLessThanOrEqualTo(String value) {
            addCriterion("cu_source <=", value, "cuSource");
            return (Criteria) this;
        }
            public Criteria andCuSourceLike(String value) {
            addCriterion("cu_source like", value, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceNotLike(String value) {
            addCriterion("cu_source not like", value, "cuSource");
            return (Criteria) this;
        }
            public Criteria andCuSourceIn(List<String> values) {
            addCriterion("cu_source in", values, "cuSource");
            return (Criteria) this;
        }

        public Criteria andcuSourceNotIn(List<String> values) {
            addCriterion("cu_source not in", values, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceBetween(String value1, String value2) {
            addCriterion("cu_source between", value1, value2, "cuSource");
            return (Criteria) this;
        }

        public Criteria andCuSourceNotBetween(String value1, String value2) {
            addCriterion("cu_source not between", value1, value2, "cuSource");
            return (Criteria) this;
        }
            public Criteria andCuStateIsNull() {
            addCriterion("cu_state is null");
            return (Criteria) this;
        }

        public Criteria andCuStateIsNotNull() {
            addCriterion("cu_state is not null");
            return (Criteria) this;
        }

        public Criteria andCuStateEqualTo(String value) {
            addCriterion("cu_state =", value, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateNotEqualTo(String value) {
            addCriterion("cu_state <>", value, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateGreaterThan(String value) {
            addCriterion("cu_state >", value, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateGreaterThanOrEqualTo(String value) {
            addCriterion("cu_state >=", value, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateLessThan(String value) {
            addCriterion("cu_state <", value, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateLessThanOrEqualTo(String value) {
            addCriterion("cu_state <=", value, "cuState");
            return (Criteria) this;
        }
            public Criteria andCuStateLike(String value) {
            addCriterion("cu_state like", value, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateNotLike(String value) {
            addCriterion("cu_state not like", value, "cuState");
            return (Criteria) this;
        }
            public Criteria andCuStateIn(List<String> values) {
            addCriterion("cu_state in", values, "cuState");
            return (Criteria) this;
        }

        public Criteria andcuStateNotIn(List<String> values) {
            addCriterion("cu_state not in", values, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateBetween(String value1, String value2) {
            addCriterion("cu_state between", value1, value2, "cuState");
            return (Criteria) this;
        }

        public Criteria andCuStateNotBetween(String value1, String value2) {
            addCriterion("cu_state not between", value1, value2, "cuState");
            return (Criteria) this;
        }
            public Criteria andCuIsVipIsNull() {
            addCriterion("cu_is_vip is null");
            return (Criteria) this;
        }

        public Criteria andCuIsVipIsNotNull() {
            addCriterion("cu_is_vip is not null");
            return (Criteria) this;
        }

        public Criteria andCuIsVipEqualTo(Integer value) {
            addCriterion("cu_is_vip =", value, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipNotEqualTo(Integer value) {
            addCriterion("cu_is_vip <>", value, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipGreaterThan(Integer value) {
            addCriterion("cu_is_vip >", value, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipGreaterThanOrEqualTo(Integer value) {
            addCriterion("cu_is_vip >=", value, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipLessThan(Integer value) {
            addCriterion("cu_is_vip <", value, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipLessThanOrEqualTo(Integer value) {
            addCriterion("cu_is_vip <=", value, "cuIsVip");
            return (Criteria) this;
        }
            public Criteria andCuIsVipIn(List<Integer> values) {
            addCriterion("cu_is_vip in", values, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andcuIsVipNotIn(List<Integer> values) {
            addCriterion("cu_is_vip not in", values, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipBetween(Integer value1, Integer value2) {
            addCriterion("cu_is_vip between", value1, value2, "cuIsVip");
            return (Criteria) this;
        }

        public Criteria andCuIsVipNotBetween(Integer value1, Integer value2) {
            addCriterion("cu_is_vip not between", value1, value2, "cuIsVip");
            return (Criteria) this;
        }
            public Criteria andCuContractBeginTimeIsNull() {
            addCriterion("cu_contract_begin_time is null");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeIsNotNull() {
            addCriterion("cu_contract_begin_time is not null");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeEqualTo(Date value) {
            addCriterion("cu_contract_begin_time =", value, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeNotEqualTo(Date value) {
            addCriterion("cu_contract_begin_time <>", value, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeGreaterThan(Date value) {
            addCriterion("cu_contract_begin_time >", value, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cu_contract_begin_time >=", value, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeLessThan(Date value) {
            addCriterion("cu_contract_begin_time <", value, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeLessThanOrEqualTo(Date value) {
            addCriterion("cu_contract_begin_time <=", value, "cuContractBeginTime");
            return (Criteria) this;
        }
            public Criteria andCuContractBeginTimeIn(List<Date> values) {
            addCriterion("cu_contract_begin_time in", values, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andcuContractBeginTimeNotIn(List<Date> values) {
            addCriterion("cu_contract_begin_time not in", values, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeBetween(Date value1, Date value2) {
            addCriterion("cu_contract_begin_time between", value1, value2, "cuContractBeginTime");
            return (Criteria) this;
        }

        public Criteria andCuContractBeginTimeNotBetween(Date value1, Date value2) {
            addCriterion("cu_contract_begin_time not between", value1, value2, "cuContractBeginTime");
            return (Criteria) this;
        }
            public Criteria andCuContractEndTimeIsNull() {
            addCriterion("cu_contract_end_time is null");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeIsNotNull() {
            addCriterion("cu_contract_end_time is not null");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeEqualTo(Date value) {
            addCriterion("cu_contract_end_time =", value, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeNotEqualTo(Date value) {
            addCriterion("cu_contract_end_time <>", value, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeGreaterThan(Date value) {
            addCriterion("cu_contract_end_time >", value, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cu_contract_end_time >=", value, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeLessThan(Date value) {
            addCriterion("cu_contract_end_time <", value, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeLessThanOrEqualTo(Date value) {
            addCriterion("cu_contract_end_time <=", value, "cuContractEndTime");
            return (Criteria) this;
        }
            public Criteria andCuContractEndTimeIn(List<Date> values) {
            addCriterion("cu_contract_end_time in", values, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andcuContractEndTimeNotIn(List<Date> values) {
            addCriterion("cu_contract_end_time not in", values, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeBetween(Date value1, Date value2) {
            addCriterion("cu_contract_end_time between", value1, value2, "cuContractEndTime");
            return (Criteria) this;
        }

        public Criteria andCuContractEndTimeNotBetween(Date value1, Date value2) {
            addCriterion("cu_contract_end_time not between", value1, value2, "cuContractEndTime");
            return (Criteria) this;
        }
            public Criteria andCuAddEmpIdIsNull() {
            addCriterion("cu_add_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdIsNotNull() {
            addCriterion("cu_add_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdEqualTo(Integer value) {
            addCriterion("cu_add_emp_id =", value, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdNotEqualTo(Integer value) {
            addCriterion("cu_add_emp_id <>", value, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdGreaterThan(Integer value) {
            addCriterion("cu_add_emp_id >", value, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cu_add_emp_id >=", value, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdLessThan(Integer value) {
            addCriterion("cu_add_emp_id <", value, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdLessThanOrEqualTo(Integer value) {
            addCriterion("cu_add_emp_id <=", value, "cuAddEmpId");
            return (Criteria) this;
        }
            public Criteria andCuAddEmpIdIn(List<Integer> values) {
            addCriterion("cu_add_emp_id in", values, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andcuAddEmpIdNotIn(List<Integer> values) {
            addCriterion("cu_add_emp_id not in", values, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdBetween(Integer value1, Integer value2) {
            addCriterion("cu_add_emp_id between", value1, value2, "cuAddEmpId");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cu_add_emp_id not between", value1, value2, "cuAddEmpId");
            return (Criteria) this;
        }
            public Criteria andCuAddEmpNumberIsNull() {
            addCriterion("cu_add_emp_number is null");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberIsNotNull() {
            addCriterion("cu_add_emp_number is not null");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberEqualTo(String value) {
            addCriterion("cu_add_emp_number =", value, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberNotEqualTo(String value) {
            addCriterion("cu_add_emp_number <>", value, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberGreaterThan(String value) {
            addCriterion("cu_add_emp_number >", value, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberGreaterThanOrEqualTo(String value) {
            addCriterion("cu_add_emp_number >=", value, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberLessThan(String value) {
            addCriterion("cu_add_emp_number <", value, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberLessThanOrEqualTo(String value) {
            addCriterion("cu_add_emp_number <=", value, "cuAddEmpNumber");
            return (Criteria) this;
        }
            public Criteria andCuAddEmpNumberLike(String value) {
            addCriterion("cu_add_emp_number like", value, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberNotLike(String value) {
            addCriterion("cu_add_emp_number not like", value, "cuAddEmpNumber");
            return (Criteria) this;
        }
            public Criteria andCuAddEmpNumberIn(List<String> values) {
            addCriterion("cu_add_emp_number in", values, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andcuAddEmpNumberNotIn(List<String> values) {
            addCriterion("cu_add_emp_number not in", values, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberBetween(String value1, String value2) {
            addCriterion("cu_add_emp_number between", value1, value2, "cuAddEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuAddEmpNumberNotBetween(String value1, String value2) {
            addCriterion("cu_add_emp_number not between", value1, value2, "cuAddEmpNumber");
            return (Criteria) this;
        }
            public Criteria andCuAddTimeIsNull() {
            addCriterion("cu_add_time is null");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeIsNotNull() {
            addCriterion("cu_add_time is not null");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeEqualTo(Date value) {
            addCriterion("cu_add_time =", value, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeNotEqualTo(Date value) {
            addCriterion("cu_add_time <>", value, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeGreaterThan(Date value) {
            addCriterion("cu_add_time >", value, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cu_add_time >=", value, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeLessThan(Date value) {
            addCriterion("cu_add_time <", value, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeLessThanOrEqualTo(Date value) {
            addCriterion("cu_add_time <=", value, "cuAddTime");
            return (Criteria) this;
        }
            public Criteria andCuAddTimeIn(List<Date> values) {
            addCriterion("cu_add_time in", values, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andcuAddTimeNotIn(List<Date> values) {
            addCriterion("cu_add_time not in", values, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeBetween(Date value1, Date value2) {
            addCriterion("cu_add_time between", value1, value2, "cuAddTime");
            return (Criteria) this;
        }

        public Criteria andCuAddTimeNotBetween(Date value1, Date value2) {
            addCriterion("cu_add_time not between", value1, value2, "cuAddTime");
            return (Criteria) this;
        }
            public Criteria andCuUpEmpNumberIsNull() {
            addCriterion("cu_up_emp_number is null");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberIsNotNull() {
            addCriterion("cu_up_emp_number is not null");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberEqualTo(String value) {
            addCriterion("cu_up_emp_number =", value, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberNotEqualTo(String value) {
            addCriterion("cu_up_emp_number <>", value, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberGreaterThan(String value) {
            addCriterion("cu_up_emp_number >", value, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberGreaterThanOrEqualTo(String value) {
            addCriterion("cu_up_emp_number >=", value, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberLessThan(String value) {
            addCriterion("cu_up_emp_number <", value, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberLessThanOrEqualTo(String value) {
            addCriterion("cu_up_emp_number <=", value, "cuUpEmpNumber");
            return (Criteria) this;
        }
            public Criteria andCuUpEmpNumberLike(String value) {
            addCriterion("cu_up_emp_number like", value, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberNotLike(String value) {
            addCriterion("cu_up_emp_number not like", value, "cuUpEmpNumber");
            return (Criteria) this;
        }
            public Criteria andCuUpEmpNumberIn(List<String> values) {
            addCriterion("cu_up_emp_number in", values, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andcuUpEmpNumberNotIn(List<String> values) {
            addCriterion("cu_up_emp_number not in", values, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberBetween(String value1, String value2) {
            addCriterion("cu_up_emp_number between", value1, value2, "cuUpEmpNumber");
            return (Criteria) this;
        }

        public Criteria andCuUpEmpNumberNotBetween(String value1, String value2) {
            addCriterion("cu_up_emp_number not between", value1, value2, "cuUpEmpNumber");
            return (Criteria) this;
        }
            public Criteria andCuUpTimeIsNull() {
            addCriterion("cu_up_time is null");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeIsNotNull() {
            addCriterion("cu_up_time is not null");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeEqualTo(Date value) {
            addCriterion("cu_up_time =", value, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeNotEqualTo(Date value) {
            addCriterion("cu_up_time <>", value, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeGreaterThan(Date value) {
            addCriterion("cu_up_time >", value, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cu_up_time >=", value, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeLessThan(Date value) {
            addCriterion("cu_up_time <", value, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeLessThanOrEqualTo(Date value) {
            addCriterion("cu_up_time <=", value, "cuUpTime");
            return (Criteria) this;
        }
            public Criteria andCuUpTimeIn(List<Date> values) {
            addCriterion("cu_up_time in", values, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andcuUpTimeNotIn(List<Date> values) {
            addCriterion("cu_up_time not in", values, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeBetween(Date value1, Date value2) {
            addCriterion("cu_up_time between", value1, value2, "cuUpTime");
            return (Criteria) this;
        }

        public Criteria andCuUpTimeNotBetween(Date value1, Date value2) {
            addCriterion("cu_up_time not between", value1, value2, "cuUpTime");
            return (Criteria) this;
        }
            public Criteria andCuRemarkIsNull() {
            addCriterion("cu_remark is null");
            return (Criteria) this;
        }

        public Criteria andCuRemarkIsNotNull() {
            addCriterion("cu_remark is not null");
            return (Criteria) this;
        }

        public Criteria andCuRemarkEqualTo(String value) {
            addCriterion("cu_remark =", value, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkNotEqualTo(String value) {
            addCriterion("cu_remark <>", value, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkGreaterThan(String value) {
            addCriterion("cu_remark >", value, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("cu_remark >=", value, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkLessThan(String value) {
            addCriterion("cu_remark <", value, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkLessThanOrEqualTo(String value) {
            addCriterion("cu_remark <=", value, "cuRemark");
            return (Criteria) this;
        }
            public Criteria andCuRemarkLike(String value) {
            addCriterion("cu_remark like", value, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkNotLike(String value) {
            addCriterion("cu_remark not like", value, "cuRemark");
            return (Criteria) this;
        }
            public Criteria andCuRemarkIn(List<String> values) {
            addCriterion("cu_remark in", values, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andcuRemarkNotIn(List<String> values) {
            addCriterion("cu_remark not in", values, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkBetween(String value1, String value2) {
            addCriterion("cu_remark between", value1, value2, "cuRemark");
            return (Criteria) this;
        }

        public Criteria andCuRemarkNotBetween(String value1, String value2) {
            addCriterion("cu_remark not between", value1, value2, "cuRemark");
            return (Criteria) this;
        }
    }
}
