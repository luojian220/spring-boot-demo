$(function () {

    $("#jqGrid").Grid({
        url: '../stats/disp/detailList',
        postData: {'cdDispatchEmpId': staffId, 'ncCaseState': ncCaseState, 'beginTime': beginTime, 'endTime': endTime},
        colModel: [
            {label: '案件编号', name: 'ncNumber', index: 'nc_number', key: true, width: 120},
            {label: '报修公司', name: 'ncCuName', index: 'nc_cu_name', width: 200},
            {label: '案件类型', name: 'ncCaseType', index: 'nc_case_type'},
            {label: '报案人员', name: 'ncAddEmpName', index: 'nc_add_emp_name'},
            {
                label: '报案时间', name: 'ncAddTime', index: 'nc_add_time',
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '报修地址', name: 'ncAddress', sortable: false, width: 220},
            {
                label: '任务时间', name: 'ncTaskTime', index: 'nc_task_time',
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '调度人员', name: 'cdDispatchName', sortable: false, width: 50},
            {
                label: '任务时间', name: 'cdTaskTime', sortable: false,
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {
                label: '调度时间', name: 'cdTime', sortable: false,
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '处理建议', name: 'cdSuggestion', sortable: false}
        ],
        shrinkToFit: false,
        width: 700,
        caption: '调度统计列表'
    });
});

var staffId = getQueryString("staffId");
var ncCaseState = getQueryString("ncCaseState");
var beginTime = getQueryStr("beginTime");
var endTime = getQueryStr("endTime");

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