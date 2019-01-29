$(function () {
    $("#jqGrid").Grid({
        url: '../stats/rpt/detailsList',
        postData: {'ncCuNumber': ncCuNumber, 'ncCaseType': ncCaseType, 'beginTime': beginTime, 'endTime': endTime},
        colModel: [
            {label: '案件编号', name: 'nc_number', sortable: false, width: 110},
            {label: '报修公司', name: 'name', sortable: false, width: 200},
            {
                label: '案件状态', name: 'nc_case_state', index: 'nc_case_state',
                formatter: function (value) {
                    return transMyCaseStat(value);
                }
            },
            {label: '案件类型', name: 'nc_case_type', sortable: false},
            {label: '报案人员', name: 'nc_add_emp_name', index: 'nc_add_emp_name'},
            {
                label: '报案时间', name: 'nc_add_time', index: 'nc_add_time',
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '报修地址', name: 'nc_address', sortable: false},
            {
                label: '任务时间', name: 'nc_task_time', index: 'nc_task_time',
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {
                label: '完成时间', name: 'nc_up_time', index: 'nc_up_time',
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '技术员', name: 'cd_aidance', sortable: false},
            {label: '解决方案', name: 'cmr_solution', sortable: false},
            {label: '客户反馈', name: 'ts_content', sortable: false},
            {label: '案件备注', name: 'nc_remark', sortable: false}

        ],
        shrinkToFit: false,
        width: 700,
        caption: '案件报修统计明细'
    });
});
var ncCuNumber = getQueryStr("ncCuNumber");
var ncCaseType = getQueryStr("ncCaseType");
var beginTime = getQueryStr("beginTime");
var endTime = getQueryStr("endTime");
console.log(beginTime);
console.log(endTime);
var vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true

    },
    methods: {
        query: function () {
            vm.reload();
        },
        reload: function (event) {
            vm.showList = true;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },
        exportRpt: function () {
            exportFile('#rrapp', '../stats/rpt/detailExpt', {
                'ncCuNumber': ncCuNumber, 'ncCaseType': ncCaseType
            });
        },
        handleSubmit: function (name) {
            handleSubmitValidate(this, name, function () {
                vm.saveOrUpdate()
            });
        },
        handleReset: function (name) {
            handleResetForm(this, name);
        }
    }
});