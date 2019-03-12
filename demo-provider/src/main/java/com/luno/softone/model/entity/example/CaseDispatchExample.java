package com.luno.softone.model.entity.example;

import com.luno.softone.common.entity.example.AbstractExample;
import com.luno.softone.common.entity.example.GeneratedCriteria;

import java.util.Date;
import java.util.List;

/**
 * 案件调度表实体
 * 表名 case_dispatch
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-10-27 15:48:08
 */
public class CaseDispatchExample extends AbstractExample {
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

            public Criteria andCdIdIsNull() {
            addCriterion("cd_id is null");
            return (Criteria) this;
        }

        public Criteria andCdIdIsNotNull() {
            addCriterion("cd_id is not null");
            return (Criteria) this;
        }

        public Criteria andCdIdEqualTo(Integer value) {
            addCriterion("cd_id =", value, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdNotEqualTo(Integer value) {
            addCriterion("cd_id <>", value, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdGreaterThan(Integer value) {
            addCriterion("cd_id >", value, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cd_id >=", value, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdLessThan(Integer value) {
            addCriterion("cd_id <", value, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdLessThanOrEqualTo(Integer value) {
            addCriterion("cd_id <=", value, "cdId");
            return (Criteria) this;
        }
            public Criteria andCdIdIn(List<Integer> values) {
            addCriterion("cd_id in", values, "cdId");
            return (Criteria) this;
        }

        public Criteria andcdIdNotIn(List<Integer> values) {
            addCriterion("cd_id not in", values, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdBetween(Integer value1, Integer value2) {
            addCriterion("cd_id between", value1, value2, "cdId");
            return (Criteria) this;
        }

        public Criteria andCdIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cd_id not between", value1, value2, "cdId");
            return (Criteria) this;
        }
            public Criteria andCdNcIdIsNull() {
            addCriterion("cd_nc_id is null");
            return (Criteria) this;
        }

        public Criteria andCdNcIdIsNotNull() {
            addCriterion("cd_nc_id is not null");
            return (Criteria) this;
        }

        public Criteria andCdNcIdEqualTo(Integer value) {
            addCriterion("cd_nc_id =", value, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdNotEqualTo(Integer value) {
            addCriterion("cd_nc_id <>", value, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdGreaterThan(Integer value) {
            addCriterion("cd_nc_id >", value, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cd_nc_id >=", value, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdLessThan(Integer value) {
            addCriterion("cd_nc_id <", value, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdLessThanOrEqualTo(Integer value) {
            addCriterion("cd_nc_id <=", value, "cdNcId");
            return (Criteria) this;
        }
            public Criteria andCdNcIdIn(List<Integer> values) {
            addCriterion("cd_nc_id in", values, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andcdNcIdNotIn(List<Integer> values) {
            addCriterion("cd_nc_id not in", values, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdBetween(Integer value1, Integer value2) {
            addCriterion("cd_nc_id between", value1, value2, "cdNcId");
            return (Criteria) this;
        }

        public Criteria andCdNcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cd_nc_id not between", value1, value2, "cdNcId");
            return (Criteria) this;
        }
            public Criteria andCdNcNumberIsNull() {
            addCriterion("cd_nc_number is null");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberIsNotNull() {
            addCriterion("cd_nc_number is not null");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberEqualTo(String value) {
            addCriterion("cd_nc_number =", value, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberNotEqualTo(String value) {
            addCriterion("cd_nc_number <>", value, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberGreaterThan(String value) {
            addCriterion("cd_nc_number >", value, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberGreaterThanOrEqualTo(String value) {
            addCriterion("cd_nc_number >=", value, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberLessThan(String value) {
            addCriterion("cd_nc_number <", value, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberLessThanOrEqualTo(String value) {
            addCriterion("cd_nc_number <=", value, "cdNcNumber");
            return (Criteria) this;
        }
            public Criteria andCdNcNumberLike(String value) {
            addCriterion("cd_nc_number like", value, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberNotLike(String value) {
            addCriterion("cd_nc_number not like", value, "cdNcNumber");
            return (Criteria) this;
        }
            public Criteria andCdNcNumberIn(List<String> values) {
            addCriterion("cd_nc_number in", values, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andcdNcNumberNotIn(List<String> values) {
            addCriterion("cd_nc_number not in", values, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberBetween(String value1, String value2) {
            addCriterion("cd_nc_number between", value1, value2, "cdNcNumber");
            return (Criteria) this;
        }

        public Criteria andCdNcNumberNotBetween(String value1, String value2) {
            addCriterion("cd_nc_number not between", value1, value2, "cdNcNumber");
            return (Criteria) this;
        }
            public Criteria andCdTimeIsNull() {
            addCriterion("cd_time is null");
            return (Criteria) this;
        }

        public Criteria andCdTimeIsNotNull() {
            addCriterion("cd_time is not null");
            return (Criteria) this;
        }

        public Criteria andCdTimeEqualTo(Date value) {
            addCriterion("cd_time =", value, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeNotEqualTo(Date value) {
            addCriterion("cd_time <>", value, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeGreaterThan(Date value) {
            addCriterion("cd_time >", value, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cd_time >=", value, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeLessThan(Date value) {
            addCriterion("cd_time <", value, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeLessThanOrEqualTo(Date value) {
            addCriterion("cd_time <=", value, "cdTime");
            return (Criteria) this;
        }
            public Criteria andCdTimeIn(List<Date> values) {
            addCriterion("cd_time in", values, "cdTime");
            return (Criteria) this;
        }

        public Criteria andcdTimeNotIn(List<Date> values) {
            addCriterion("cd_time not in", values, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeBetween(Date value1, Date value2) {
            addCriterion("cd_time between", value1, value2, "cdTime");
            return (Criteria) this;
        }

        public Criteria andCdTimeNotBetween(Date value1, Date value2) {
            addCriterion("cd_time not between", value1, value2, "cdTime");
            return (Criteria) this;
        }
            public Criteria andCdDispatchEmpIdIsNull() {
            addCriterion("cd_dispatch_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdIsNotNull() {
            addCriterion("cd_dispatch_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdEqualTo(String value) {
            addCriterion("cd_dispatch_emp_id =", value, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdNotEqualTo(String value) {
            addCriterion("cd_dispatch_emp_id <>", value, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdGreaterThan(String value) {
            addCriterion("cd_dispatch_emp_id >", value, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdGreaterThanOrEqualTo(String value) {
            addCriterion("cd_dispatch_emp_id >=", value, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdLessThan(String value) {
            addCriterion("cd_dispatch_emp_id <", value, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdLessThanOrEqualTo(String value) {
            addCriterion("cd_dispatch_emp_id <=", value, "cdDispatchEmpId");
            return (Criteria) this;
        }
            public Criteria andCdDispatchEmpIdLike(String value) {
            addCriterion("cd_dispatch_emp_id like", value, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdNotLike(String value) {
            addCriterion("cd_dispatch_emp_id not like", value, "cdDispatchEmpId");
            return (Criteria) this;
        }
            public Criteria andCdDispatchEmpIdIn(List<String> values) {
            addCriterion("cd_dispatch_emp_id in", values, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andcdDispatchEmpIdNotIn(List<String> values) {
            addCriterion("cd_dispatch_emp_id not in", values, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdBetween(String value1, String value2) {
            addCriterion("cd_dispatch_emp_id between", value1, value2, "cdDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCdDispatchEmpIdNotBetween(String value1, String value2) {
            addCriterion("cd_dispatch_emp_id not between", value1, value2, "cdDispatchEmpId");
            return (Criteria) this;
        }
            public Criteria andCdDispatchNameIsNull() {
            addCriterion("cd_dispatch_name is null");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameIsNotNull() {
            addCriterion("cd_dispatch_name is not null");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameEqualTo(String value) {
            addCriterion("cd_dispatch_name =", value, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameNotEqualTo(String value) {
            addCriterion("cd_dispatch_name <>", value, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameGreaterThan(String value) {
            addCriterion("cd_dispatch_name >", value, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameGreaterThanOrEqualTo(String value) {
            addCriterion("cd_dispatch_name >=", value, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameLessThan(String value) {
            addCriterion("cd_dispatch_name <", value, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameLessThanOrEqualTo(String value) {
            addCriterion("cd_dispatch_name <=", value, "cdDispatchName");
            return (Criteria) this;
        }
            public Criteria andCdDispatchNameLike(String value) {
            addCriterion("cd_dispatch_name like", value, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameNotLike(String value) {
            addCriterion("cd_dispatch_name not like", value, "cdDispatchName");
            return (Criteria) this;
        }
            public Criteria andCdDispatchNameIn(List<String> values) {
            addCriterion("cd_dispatch_name in", values, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andcdDispatchNameNotIn(List<String> values) {
            addCriterion("cd_dispatch_name not in", values, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameBetween(String value1, String value2) {
            addCriterion("cd_dispatch_name between", value1, value2, "cdDispatchName");
            return (Criteria) this;
        }

        public Criteria andCdDispatchNameNotBetween(String value1, String value2) {
            addCriterion("cd_dispatch_name not between", value1, value2, "cdDispatchName");
            return (Criteria) this;
        }
            public Criteria andCdTechnicalEmpIdIsNull() {
            addCriterion("cd_technical_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdIsNotNull() {
            addCriterion("cd_technical_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdEqualTo(String value) {
            addCriterion("cd_technical_emp_id =", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdNotEqualTo(String value) {
            addCriterion("cd_technical_emp_id <>", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdGreaterThan(String value) {
            addCriterion("cd_technical_emp_id >", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdGreaterThanOrEqualTo(String value) {
            addCriterion("cd_technical_emp_id >=", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdLessThan(String value) {
            addCriterion("cd_technical_emp_id <", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdLessThanOrEqualTo(String value) {
            addCriterion("cd_technical_emp_id <=", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }
            public Criteria andCdTechnicalEmpIdLike(String value) {
            addCriterion("cd_technical_emp_id like", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdNotLike(String value) {
            addCriterion("cd_technical_emp_id not like", value, "cdTechnicalEmpId");
            return (Criteria) this;
        }
            public Criteria andCdTechnicalEmpIdIn(List<String> values) {
            addCriterion("cd_technical_emp_id in", values, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andcdTechnicalEmpIdNotIn(List<String> values) {
            addCriterion("cd_technical_emp_id not in", values, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdBetween(String value1, String value2) {
            addCriterion("cd_technical_emp_id between", value1, value2, "cdTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalEmpIdNotBetween(String value1, String value2) {
            addCriterion("cd_technical_emp_id not between", value1, value2, "cdTechnicalEmpId");
            return (Criteria) this;
        }
            public Criteria andCdTechnicalNameIsNull() {
            addCriterion("cd_technical_name is null");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameIsNotNull() {
            addCriterion("cd_technical_name is not null");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameEqualTo(String value) {
            addCriterion("cd_technical_name =", value, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameNotEqualTo(String value) {
            addCriterion("cd_technical_name <>", value, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameGreaterThan(String value) {
            addCriterion("cd_technical_name >", value, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameGreaterThanOrEqualTo(String value) {
            addCriterion("cd_technical_name >=", value, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameLessThan(String value) {
            addCriterion("cd_technical_name <", value, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameLessThanOrEqualTo(String value) {
            addCriterion("cd_technical_name <=", value, "cdTechnicalName");
            return (Criteria) this;
        }
            public Criteria andCdTechnicalNameLike(String value) {
            addCriterion("cd_technical_name like", value, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameNotLike(String value) {
            addCriterion("cd_technical_name not like", value, "cdTechnicalName");
            return (Criteria) this;
        }
            public Criteria andCdTechnicalNameIn(List<String> values) {
            addCriterion("cd_technical_name in", values, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andcdTechnicalNameNotIn(List<String> values) {
            addCriterion("cd_technical_name not in", values, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameBetween(String value1, String value2) {
            addCriterion("cd_technical_name between", value1, value2, "cdTechnicalName");
            return (Criteria) this;
        }

        public Criteria andCdTechnicalNameNotBetween(String value1, String value2) {
            addCriterion("cd_technical_name not between", value1, value2, "cdTechnicalName");
            return (Criteria) this;
        }
            public Criteria andCdTaskTimeIsNull() {
            addCriterion("cd_task_time is null");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeIsNotNull() {
            addCriterion("cd_task_time is not null");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeEqualTo(Date value) {
            addCriterion("cd_task_time =", value, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeNotEqualTo(Date value) {
            addCriterion("cd_task_time <>", value, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeGreaterThan(Date value) {
            addCriterion("cd_task_time >", value, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cd_task_time >=", value, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeLessThan(Date value) {
            addCriterion("cd_task_time <", value, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeLessThanOrEqualTo(Date value) {
            addCriterion("cd_task_time <=", value, "cdTaskTime");
            return (Criteria) this;
        }
            public Criteria andCdTaskTimeIn(List<Date> values) {
            addCriterion("cd_task_time in", values, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andcdTaskTimeNotIn(List<Date> values) {
            addCriterion("cd_task_time not in", values, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeBetween(Date value1, Date value2) {
            addCriterion("cd_task_time between", value1, value2, "cdTaskTime");
            return (Criteria) this;
        }

        public Criteria andCdTaskTimeNotBetween(Date value1, Date value2) {
            addCriterion("cd_task_time not between", value1, value2, "cdTaskTime");
            return (Criteria) this;
        }
            public Criteria andCdSuggestionIsNull() {
            addCriterion("cd_suggestion is null");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionIsNotNull() {
            addCriterion("cd_suggestion is not null");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionEqualTo(String value) {
            addCriterion("cd_suggestion =", value, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionNotEqualTo(String value) {
            addCriterion("cd_suggestion <>", value, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionGreaterThan(String value) {
            addCriterion("cd_suggestion >", value, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionGreaterThanOrEqualTo(String value) {
            addCriterion("cd_suggestion >=", value, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionLessThan(String value) {
            addCriterion("cd_suggestion <", value, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionLessThanOrEqualTo(String value) {
            addCriterion("cd_suggestion <=", value, "cdSuggestion");
            return (Criteria) this;
        }
            public Criteria andCdSuggestionLike(String value) {
            addCriterion("cd_suggestion like", value, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionNotLike(String value) {
            addCriterion("cd_suggestion not like", value, "cdSuggestion");
            return (Criteria) this;
        }
            public Criteria andCdSuggestionIn(List<String> values) {
            addCriterion("cd_suggestion in", values, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andcdSuggestionNotIn(List<String> values) {
            addCriterion("cd_suggestion not in", values, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionBetween(String value1, String value2) {
            addCriterion("cd_suggestion between", value1, value2, "cdSuggestion");
            return (Criteria) this;
        }

        public Criteria andCdSuggestionNotBetween(String value1, String value2) {
            addCriterion("cd_suggestion not between", value1, value2, "cdSuggestion");
            return (Criteria) this;
        }
            public Criteria andCdDispatchStateIsNull() {
            addCriterion("cd_dispatch_state is null");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateIsNotNull() {
            addCriterion("cd_dispatch_state is not null");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateEqualTo(String value) {
            addCriterion("cd_dispatch_state =", value, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateNotEqualTo(String value) {
            addCriterion("cd_dispatch_state <>", value, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateGreaterThan(String value) {
            addCriterion("cd_dispatch_state >", value, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateGreaterThanOrEqualTo(String value) {
            addCriterion("cd_dispatch_state >=", value, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateLessThan(String value) {
            addCriterion("cd_dispatch_state <", value, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateLessThanOrEqualTo(String value) {
            addCriterion("cd_dispatch_state <=", value, "cdDispatchState");
            return (Criteria) this;
        }
            public Criteria andCdDispatchStateLike(String value) {
            addCriterion("cd_dispatch_state like", value, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateNotLike(String value) {
            addCriterion("cd_dispatch_state not like", value, "cdDispatchState");
            return (Criteria) this;
        }
            public Criteria andCdDispatchStateIn(List<String> values) {
            addCriterion("cd_dispatch_state in", values, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andcdDispatchStateNotIn(List<String> values) {
            addCriterion("cd_dispatch_state not in", values, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateBetween(String value1, String value2) {
            addCriterion("cd_dispatch_state between", value1, value2, "cdDispatchState");
            return (Criteria) this;
        }

        public Criteria andCdDispatchStateNotBetween(String value1, String value2) {
            addCriterion("cd_dispatch_state not between", value1, value2, "cdDispatchState");
            return (Criteria) this;
        }
            public Criteria andCdMultiTaskIsNull() {
            addCriterion("cd_multi_task is null");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskIsNotNull() {
            addCriterion("cd_multi_task is not null");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskEqualTo(Integer value) {
            addCriterion("cd_multi_task =", value, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskNotEqualTo(Integer value) {
            addCriterion("cd_multi_task <>", value, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskGreaterThan(Integer value) {
            addCriterion("cd_multi_task >", value, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskGreaterThanOrEqualTo(Integer value) {
            addCriterion("cd_multi_task >=", value, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskLessThan(Integer value) {
            addCriterion("cd_multi_task <", value, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskLessThanOrEqualTo(Integer value) {
            addCriterion("cd_multi_task <=", value, "cdMultiTask");
            return (Criteria) this;
        }
            public Criteria andCdMultiTaskIn(List<Integer> values) {
            addCriterion("cd_multi_task in", values, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andcdMultiTaskNotIn(List<Integer> values) {
            addCriterion("cd_multi_task not in", values, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskBetween(Integer value1, Integer value2) {
            addCriterion("cd_multi_task between", value1, value2, "cdMultiTask");
            return (Criteria) this;
        }

        public Criteria andCdMultiTaskNotBetween(Integer value1, Integer value2) {
            addCriterion("cd_multi_task not between", value1, value2, "cdMultiTask");
            return (Criteria) this;
        }
            public Criteria andCdAidanceIsNull() {
            addCriterion("cd_aidance is null");
            return (Criteria) this;
        }

        public Criteria andCdAidanceIsNotNull() {
            addCriterion("cd_aidance is not null");
            return (Criteria) this;
        }

        public Criteria andCdAidanceEqualTo(String value) {
            addCriterion("cd_aidance =", value, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceNotEqualTo(String value) {
            addCriterion("cd_aidance <>", value, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceGreaterThan(String value) {
            addCriterion("cd_aidance >", value, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceGreaterThanOrEqualTo(String value) {
            addCriterion("cd_aidance >=", value, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceLessThan(String value) {
            addCriterion("cd_aidance <", value, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceLessThanOrEqualTo(String value) {
            addCriterion("cd_aidance <=", value, "cdAidance");
            return (Criteria) this;
        }
            public Criteria andCdAidanceLike(String value) {
            addCriterion("cd_aidance like", value, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceNotLike(String value) {
            addCriterion("cd_aidance not like", value, "cdAidance");
            return (Criteria) this;
        }
            public Criteria andCdAidanceIn(List<String> values) {
            addCriterion("cd_aidance in", values, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andcdAidanceNotIn(List<String> values) {
            addCriterion("cd_aidance not in", values, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceBetween(String value1, String value2) {
            addCriterion("cd_aidance between", value1, value2, "cdAidance");
            return (Criteria) this;
        }

        public Criteria andCdAidanceNotBetween(String value1, String value2) {
            addCriterion("cd_aidance not between", value1, value2, "cdAidance");
            return (Criteria) this;
        }
            public Criteria andCdCancelTimeIsNull() {
            addCriterion("cd_cancel_time is null");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeIsNotNull() {
            addCriterion("cd_cancel_time is not null");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeEqualTo(Date value) {
            addCriterion("cd_cancel_time =", value, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeNotEqualTo(Date value) {
            addCriterion("cd_cancel_time <>", value, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeGreaterThan(Date value) {
            addCriterion("cd_cancel_time >", value, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cd_cancel_time >=", value, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeLessThan(Date value) {
            addCriterion("cd_cancel_time <", value, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeLessThanOrEqualTo(Date value) {
            addCriterion("cd_cancel_time <=", value, "cdCancelTime");
            return (Criteria) this;
        }
            public Criteria andCdCancelTimeIn(List<Date> values) {
            addCriterion("cd_cancel_time in", values, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andcdCancelTimeNotIn(List<Date> values) {
            addCriterion("cd_cancel_time not in", values, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeBetween(Date value1, Date value2) {
            addCriterion("cd_cancel_time between", value1, value2, "cdCancelTime");
            return (Criteria) this;
        }

        public Criteria andCdCancelTimeNotBetween(Date value1, Date value2) {
            addCriterion("cd_cancel_time not between", value1, value2, "cdCancelTime");
            return (Criteria) this;
        }
    }
}
