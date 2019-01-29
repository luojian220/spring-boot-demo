$(function () {

    $("#jqGrid").Grid({
        url: '../stats/refer/detailList',
        mtype: "post",
        postData: {
            'staffId': staffId,
            'cuId': cuId,
            'tsTechnicianType': tsTechnicianType,
            'beginTime': beginTime,
            'endTime': endTime
        },
        colModel: [
            {label: '咨询客户', name: 'name', sortable: false, width: 200},
            {label: '咨询类型', name: 'tsTechnicianType', index: 'ts_technician_type'},
            {
                label: '添加时间', name: 'tsAddTime', index: 'ts_add_time',
                formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '咨询问题', name: 'tsContent', index: 'ts_content', width: 225},
            {label: '解决方案', name: 'tsSolution', sortable: false, width: 225}

        ],
        shrinkToFit: false,
        width: 1200
        //caption: '员工服务咨询统计列表'
    });
});

var staffId = getQueryStr("staffId");
var cuId = getQueryStr("cuId");
var tsTechnicianType = getQueryStr("tsTechnicianType");
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