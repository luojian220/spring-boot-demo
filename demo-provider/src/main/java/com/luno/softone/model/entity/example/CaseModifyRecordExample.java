package com.luno.softone.model.entity.example;

import com.luno.softone.common.entity.example.AbstractExample;
import com.luno.softone.common.entity.example.GeneratedCriteria;

import java.util.Date;
import java.util.List;

/**
 * 案件变动记录实体
 * 表名 case_modify_record
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-10-26 22:32:23
 */
public class CaseModifyRecordExample extends AbstractExample {
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

            public Criteria andCmrIdIsNull() {
            addCriterion("cmr_id is null");
            return (Criteria) this;
        }

        public Criteria andCmrIdIsNotNull() {
            addCriterion("cmr_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmrIdEqualTo(Integer value) {
            addCriterion("cmr_id =", value, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdNotEqualTo(Integer value) {
            addCriterion("cmr_id <>", value, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdGreaterThan(Integer value) {
            addCriterion("cmr_id >", value, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cmr_id >=", value, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdLessThan(Integer value) {
            addCriterion("cmr_id <", value, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdLessThanOrEqualTo(Integer value) {
            addCriterion("cmr_id <=", value, "cmrId");
            return (Criteria) this;
        }
            public Criteria andCmrIdIn(List<Integer> values) {
            addCriterion("cmr_id in", values, "cmrId");
            return (Criteria) this;
        }

        public Criteria andcmrIdNotIn(List<Integer> values) {
            addCriterion("cmr_id not in", values, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdBetween(Integer value1, Integer value2) {
            addCriterion("cmr_id between", value1, value2, "cmrId");
            return (Criteria) this;
        }

        public Criteria andCmrIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cmr_id not between", value1, value2, "cmrId");
            return (Criteria) this;
        }
            public Criteria andCmrNcIdIsNull() {
            addCriterion("cmr_nc_id is null");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdIsNotNull() {
            addCriterion("cmr_nc_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdEqualTo(Integer value) {
            addCriterion("cmr_nc_id =", value, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdNotEqualTo(Integer value) {
            addCriterion("cmr_nc_id <>", value, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdGreaterThan(Integer value) {
            addCriterion("cmr_nc_id >", value, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cmr_nc_id >=", value, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdLessThan(Integer value) {
            addCriterion("cmr_nc_id <", value, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdLessThanOrEqualTo(Integer value) {
            addCriterion("cmr_nc_id <=", value, "cmrNcId");
            return (Criteria) this;
        }
            public Criteria andCmrNcIdIn(List<Integer> values) {
            addCriterion("cmr_nc_id in", values, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andcmrNcIdNotIn(List<Integer> values) {
            addCriterion("cmr_nc_id not in", values, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdBetween(Integer value1, Integer value2) {
            addCriterion("cmr_nc_id between", value1, value2, "cmrNcId");
            return (Criteria) this;
        }

        public Criteria andCmrNcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cmr_nc_id not between", value1, value2, "cmrNcId");
            return (Criteria) this;
        }
            public Criteria andCmrTypeIsNull() {
            addCriterion("cmr_type is null");
            return (Criteria) this;
        }

        public Criteria andCmrTypeIsNotNull() {
            addCriterion("cmr_type is not null");
            return (Criteria) this;
        }

        public Criteria andCmrTypeEqualTo(Integer value) {
            addCriterion("cmr_type =", value, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeNotEqualTo(Integer value) {
            addCriterion("cmr_type <>", value, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeGreaterThan(Integer value) {
            addCriterion("cmr_type >", value, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("cmr_type >=", value, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeLessThan(Integer value) {
            addCriterion("cmr_type <", value, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeLessThanOrEqualTo(Integer value) {
            addCriterion("cmr_type <=", value, "cmrType");
            return (Criteria) this;
        }
            public Criteria andCmrTypeIn(List<Integer> values) {
            addCriterion("cmr_type in", values, "cmrType");
            return (Criteria) this;
        }

        public Criteria andcmrTypeNotIn(List<Integer> values) {
            addCriterion("cmr_type not in", values, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeBetween(Integer value1, Integer value2) {
            addCriterion("cmr_type between", value1, value2, "cmrType");
            return (Criteria) this;
        }

        public Criteria andCmrTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("cmr_type not between", value1, value2, "cmrType");
            return (Criteria) this;
        }
            public Criteria andCmrCreateEmpIdIsNull() {
            addCriterion("cmr_create_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdIsNotNull() {
            addCriterion("cmr_create_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdEqualTo(String value) {
            addCriterion("cmr_create_emp_id =", value, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdNotEqualTo(String value) {
            addCriterion("cmr_create_emp_id <>", value, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdGreaterThan(String value) {
            addCriterion("cmr_create_emp_id >", value, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_create_emp_id >=", value, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdLessThan(String value) {
            addCriterion("cmr_create_emp_id <", value, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdLessThanOrEqualTo(String value) {
            addCriterion("cmr_create_emp_id <=", value, "cmrCreateEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrCreateEmpIdLike(String value) {
            addCriterion("cmr_create_emp_id like", value, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdNotLike(String value) {
            addCriterion("cmr_create_emp_id not like", value, "cmrCreateEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrCreateEmpIdIn(List<String> values) {
            addCriterion("cmr_create_emp_id in", values, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andcmrCreateEmpIdNotIn(List<String> values) {
            addCriterion("cmr_create_emp_id not in", values, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdBetween(String value1, String value2) {
            addCriterion("cmr_create_emp_id between", value1, value2, "cmrCreateEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrCreateEmpIdNotBetween(String value1, String value2) {
            addCriterion("cmr_create_emp_id not between", value1, value2, "cmrCreateEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrCreateTimeIsNull() {
            addCriterion("cmr_create_time is null");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeIsNotNull() {
            addCriterion("cmr_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeEqualTo(Date value) {
            addCriterion("cmr_create_time =", value, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeNotEqualTo(Date value) {
            addCriterion("cmr_create_time <>", value, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeGreaterThan(Date value) {
            addCriterion("cmr_create_time >", value, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("cmr_create_time >=", value, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeLessThan(Date value) {
            addCriterion("cmr_create_time <", value, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("cmr_create_time <=", value, "cmrCreateTime");
            return (Criteria) this;
        }
            public Criteria andCmrCreateTimeIn(List<Date> values) {
            addCriterion("cmr_create_time in", values, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andcmrCreateTimeNotIn(List<Date> values) {
            addCriterion("cmr_create_time not in", values, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeBetween(Date value1, Date value2) {
            addCriterion("cmr_create_time between", value1, value2, "cmrCreateTime");
            return (Criteria) this;
        }

        public Criteria andCmrCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("cmr_create_time not between", value1, value2, "cmrCreateTime");
            return (Criteria) this;
        }
            public Criteria andCmrTechnicalEmpIdIsNull() {
            addCriterion("cmr_technical_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdIsNotNull() {
            addCriterion("cmr_technical_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdEqualTo(String value) {
            addCriterion("cmr_technical_emp_id =", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdNotEqualTo(String value) {
            addCriterion("cmr_technical_emp_id <>", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdGreaterThan(String value) {
            addCriterion("cmr_technical_emp_id >", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_technical_emp_id >=", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdLessThan(String value) {
            addCriterion("cmr_technical_emp_id <", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdLessThanOrEqualTo(String value) {
            addCriterion("cmr_technical_emp_id <=", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrTechnicalEmpIdLike(String value) {
            addCriterion("cmr_technical_emp_id like", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdNotLike(String value) {
            addCriterion("cmr_technical_emp_id not like", value, "cmrTechnicalEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrTechnicalEmpIdIn(List<String> values) {
            addCriterion("cmr_technical_emp_id in", values, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andcmrTechnicalEmpIdNotIn(List<String> values) {
            addCriterion("cmr_technical_emp_id not in", values, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdBetween(String value1, String value2) {
            addCriterion("cmr_technical_emp_id between", value1, value2, "cmrTechnicalEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrTechnicalEmpIdNotBetween(String value1, String value2) {
            addCriterion("cmr_technical_emp_id not between", value1, value2, "cmrTechnicalEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrReasonIsNull() {
            addCriterion("cmr_reason is null");
            return (Criteria) this;
        }

        public Criteria andCmrReasonIsNotNull() {
            addCriterion("cmr_reason is not null");
            return (Criteria) this;
        }

        public Criteria andCmrReasonEqualTo(String value) {
            addCriterion("cmr_reason =", value, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonNotEqualTo(String value) {
            addCriterion("cmr_reason <>", value, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonGreaterThan(String value) {
            addCriterion("cmr_reason >", value, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_reason >=", value, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonLessThan(String value) {
            addCriterion("cmr_reason <", value, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonLessThanOrEqualTo(String value) {
            addCriterion("cmr_reason <=", value, "cmrReason");
            return (Criteria) this;
        }
            public Criteria andCmrReasonLike(String value) {
            addCriterion("cmr_reason like", value, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonNotLike(String value) {
            addCriterion("cmr_reason not like", value, "cmrReason");
            return (Criteria) this;
        }
            public Criteria andCmrReasonIn(List<String> values) {
            addCriterion("cmr_reason in", values, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andcmrReasonNotIn(List<String> values) {
            addCriterion("cmr_reason not in", values, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonBetween(String value1, String value2) {
            addCriterion("cmr_reason between", value1, value2, "cmrReason");
            return (Criteria) this;
        }

        public Criteria andCmrReasonNotBetween(String value1, String value2) {
            addCriterion("cmr_reason not between", value1, value2, "cmrReason");
            return (Criteria) this;
        }
            public Criteria andCmrDispatchEmpIdIsNull() {
            addCriterion("cmr_dispatch_emp_id is null");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdIsNotNull() {
            addCriterion("cmr_dispatch_emp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdEqualTo(String value) {
            addCriterion("cmr_dispatch_emp_id =", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdNotEqualTo(String value) {
            addCriterion("cmr_dispatch_emp_id <>", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdGreaterThan(String value) {
            addCriterion("cmr_dispatch_emp_id >", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_dispatch_emp_id >=", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdLessThan(String value) {
            addCriterion("cmr_dispatch_emp_id <", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdLessThanOrEqualTo(String value) {
            addCriterion("cmr_dispatch_emp_id <=", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrDispatchEmpIdLike(String value) {
            addCriterion("cmr_dispatch_emp_id like", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdNotLike(String value) {
            addCriterion("cmr_dispatch_emp_id not like", value, "cmrDispatchEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrDispatchEmpIdIn(List<String> values) {
            addCriterion("cmr_dispatch_emp_id in", values, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andcmrDispatchEmpIdNotIn(List<String> values) {
            addCriterion("cmr_dispatch_emp_id not in", values, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdBetween(String value1, String value2) {
            addCriterion("cmr_dispatch_emp_id between", value1, value2, "cmrDispatchEmpId");
            return (Criteria) this;
        }

        public Criteria andCmrDispatchEmpIdNotBetween(String value1, String value2) {
            addCriterion("cmr_dispatch_emp_id not between", value1, value2, "cmrDispatchEmpId");
            return (Criteria) this;
        }
            public Criteria andCmrServiceNumberIsNull() {
            addCriterion("cmr_service_number is null");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberIsNotNull() {
            addCriterion("cmr_service_number is not null");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberEqualTo(String value) {
            addCriterion("cmr_service_number =", value, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberNotEqualTo(String value) {
            addCriterion("cmr_service_number <>", value, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberGreaterThan(String value) {
            addCriterion("cmr_service_number >", value, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_service_number >=", value, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberLessThan(String value) {
            addCriterion("cmr_service_number <", value, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberLessThanOrEqualTo(String value) {
            addCriterion("cmr_service_number <=", value, "cmrServiceNumber");
            return (Criteria) this;
        }
            public Criteria andCmrServiceNumberLike(String value) {
            addCriterion("cmr_service_number like", value, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberNotLike(String value) {
            addCriterion("cmr_service_number not like", value, "cmrServiceNumber");
            return (Criteria) this;
        }
            public Criteria andCmrServiceNumberIn(List<String> values) {
            addCriterion("cmr_service_number in", values, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andcmrServiceNumberNotIn(List<String> values) {
            addCriterion("cmr_service_number not in", values, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberBetween(String value1, String value2) {
            addCriterion("cmr_service_number between", value1, value2, "cmrServiceNumber");
            return (Criteria) this;
        }

        public Criteria andCmrServiceNumberNotBetween(String value1, String value2) {
            addCriterion("cmr_service_number not between", value1, value2, "cmrServiceNumber");
            return (Criteria) this;
        }
            public Criteria andCmrSolutionIsNull() {
            addCriterion("cmr_solution is null");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionIsNotNull() {
            addCriterion("cmr_solution is not null");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionEqualTo(String value) {
            addCriterion("cmr_solution =", value, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionNotEqualTo(String value) {
            addCriterion("cmr_solution <>", value, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionGreaterThan(String value) {
            addCriterion("cmr_solution >", value, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_solution >=", value, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionLessThan(String value) {
            addCriterion("cmr_solution <", value, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionLessThanOrEqualTo(String value) {
            addCriterion("cmr_solution <=", value, "cmrSolution");
            return (Criteria) this;
        }
            public Criteria andCmrSolutionLike(String value) {
            addCriterion("cmr_solution like", value, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionNotLike(String value) {
            addCriterion("cmr_solution not like", value, "cmrSolution");
            return (Criteria) this;
        }
            public Criteria andCmrSolutionIn(List<String> values) {
            addCriterion("cmr_solution in", values, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionNotIn(List<String> values) {
            addCriterion("cmr_solution not in", values, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionBetween(String value1, String value2) {
            addCriterion("cmr_solution between", value1, value2, "cmrSolution");
            return (Criteria) this;
        }

        public Criteria andCmrSolutionNotBetween(String value1, String value2) {
            addCriterion("cmr_solution not between", value1, value2, "cmrSolution");
            return (Criteria) this;
        }
            public Criteria andCmrRemarkIsNull() {
            addCriterion("cmr_remark is null");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkIsNotNull() {
            addCriterion("cmr_remark is not null");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkEqualTo(String value) {
            addCriterion("cmr_remark =", value, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkNotEqualTo(String value) {
            addCriterion("cmr_remark <>", value, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkGreaterThan(String value) {
            addCriterion("cmr_remark >", value, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("cmr_remark >=", value, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkLessThan(String value) {
            addCriterion("cmr_remark <", value, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkLessThanOrEqualTo(String value) {
            addCriterion("cmr_remark <=", value, "cmrRemark");
            return (Criteria) this;
        }
            public Criteria andCmrRemarkLike(String value) {
            addCriterion("cmr_remark like", value, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkNotLike(String value) {
            addCriterion("cmr_remark not like", value, "cmrRemark");
            return (Criteria) this;
        }
            public Criteria andCmrRemarkIn(List<String> values) {
            addCriterion("cmr_remark in", values, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andcmrRemarkNotIn(List<String> values) {
            addCriterion("cmr_remark not in", values, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkBetween(String value1, String value2) {
            addCriterion("cmr_remark between", value1, value2, "cmrRemark");
            return (Criteria) this;
        }

        public Criteria andCmrRemarkNotBetween(String value1, String value2) {
            addCriterion("cmr_remark not between", value1, value2, "cmrRemark");
            return (Criteria) this;
        }
    }
}
