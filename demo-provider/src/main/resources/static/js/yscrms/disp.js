$(function () {
    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = new Date();
    //获取调度员工列表
    Ajax.request({
        url: '../sys/staff/rptStaffList',
        async: true,
        successCallback: function (r) {
            vm.rptStaffList = r.list;
        }
    });

    $("#jqGrid").Grid({
        url: '../stats/disp/list',
        postData: {'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime},
        colModel: [
            {label: '编号', name: 'staffId', index: 'staffId', width: 80, key: true},
            {label: '姓名', name: 'staffName', index: 'staffName', width: 80},
            {
                label: '调度案件',
                name: 'scheduleCase',
                index: 'scheduleCase',
                width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, '')
                }

            },
            {
                label: '已完成', name: 'finished', index: 'finished', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'finished')
                }
            },
            {
                label: '未完成', name: 'unfinished', index: 'unfinished', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'unfinished')
                }
            },
            {
                label: '已转单', name: 'haveSingle', index: 'haveSingle', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'haveSingle')
                }
            },
            {
                label: '客户撤案', name: 'customerCancel', index: 'customerCancel', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'customerCancel')
                }
            }
        ]
    });

    //详情链接
    function detailHref(value, rowId, ncCaseState) {
        var starUrl = "disp_details.html?staffId=" + rowId;
        var url = starUrl + '&ncCaseState=' + ncCaseState + '&beginTime=' + vm.q.beginTime + '&endTime=' + vm.q.endTime;
        if (value > 0) {
            return '<a href="' + url + '" target="_blank">' + value + '</a>';
        } else {
            return '-';
        }

    };
});


var vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        rptStaffList: {},
        ruleValidate: {
            staffId: [
                {required: true, message: '编号不能为空', trigger: 'blur'}
            ]
        },
        q: {
            staffId: '', beginTime: null, endTime: null
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        reload: function (event) {
            vm.showList = true;

            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {
                    'staffId': vm.q.staffId, 'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
                },
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },

        exportDisp: function () {
            exportFile('#rrapp', '../stats/disp/export', {
                'staffId': vm.q.staffId, 'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
            });
        },
        reloadSearch: function () {
            vm.q = {
                staffId: '', beginTime: null, endTime: null
            }
            vm.reload();
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