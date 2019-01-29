$(function () {
    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = new Date();
    //加载时初始化客户列表
    Ajax.request({
        url: '../customer/queryAll',
        async: true,
        successCallback: function (r) {
            vm.cstmList = r.list;
        }
    });

    //服务人员列表
    Ajax.request({
        url: '../stats/refer/queryStaffList',
        async: true,
        successCallback: function (r) {
            vm.staffList = r.list;
        }
    });

    $("#jqGrid").Grid({
        url: '../stats/refer/list',
        postData: {'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime},
        colModel: [
            {label: '编号', name: 'staffId', index: 'staffId', key: true, width: 80},
            {label: '姓名', name: 'name', index: 'name', width: 80},
            {
                label: '咨询次数', name: 'referTimes', index: 'referTimes', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, '')
                }
            },
            {
                label: '电话咨询', name: 'telephoneRefer', index: 'telephoneRefer', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, '1')
                }
            },
            {
                label: '远程服务', name: 'remoteService', index: 'remoteService', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, '2')
                }
            },
            {
                label: '驻点服务', name: 'stagnationPointService', index: 'stagnationPointService', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, '3')
                }
            }
        ]
    });

    //详情链接
    function detailHref(value, rowId, tsTechnicianType) {
        var starUrl = "refer_details.html?staffId=" + rowId;
        var url = starUrl + '&tsTechnicianType=' + tsTechnicianType + '&beginTime=' + vm.q.beginTime + '&endTime=' + vm.q.endTime;
        if (value > 0) {
            return '<a href="' + url + '" target="_blank">' + value + '</a>';
        } else {
            return '-';
        }

    };
    $("#jqCuGrid").Grid({
        url: '../stats/refer/cuList',
        postData: {'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime},
        colModel: [
            {label: '客户ID', name: 'cuId', index: 'cuId', key: true, hidden: true},
            {label: '编号', name: 'cuNumber', index: 'cuNumber', width: 60},
            {label: '客户名称', name: 'name', index: 'name', width: 200},
            {
                label: '咨询次数', name: 'referTimes', index: 'referTimes', width: 50,
                formatter: function (cellvalue, options) {
                    return detail(cellvalue, options.rowId, null)
                }
            },
            {
                label: '电话咨询', name: 'telephoneRefer', index: 'telephoneRefer', width: 50,
                formatter: function (cellvalue, options) {
                    return detail(cellvalue, options.rowId, '1')
                }
            },
            {
                label: '远程服务', name: 'remoteService', index: 'remoteService', width: 50,
                formatter: function (cellvalue, options) {
                    return detail(cellvalue, options.rowId, '2')
                }
            },
            {
                label: '驻点服务', name: 'stagnationPointService', index: 'stagnationPointService', width: 50,
                formatter: function (cellvalue, options) {
                    return detail(cellvalue, options.rowId, '3')
                }
            }
        ]
    });

    //客户详情链接
    function detail(value, rowId, tsTechnicianType) {
        var starUrl = "refer_details.html?cuId=" + rowId;
        var url = starUrl + '&tsTechnicianType=' + tsTechnicianType + '&beginTime=' + vm.q.beginTime + '&endTime=' + vm.q.endTime;
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
        cstmList: {},
        staffList: {},
        ruleValidate: {
            staffId: [
                {required: true, message: '编号不能为空', trigger: 'blur'}
            ]
        },
        q: {
            staffId: '', cuId: '', beginTime: null, endTime: null
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

            let cupage = $("#jqCuGrid").jqGrid('getGridParam', 'page');
            $("#jqCuGrid").jqGrid('setGridParam', {
                postData: {
                     'cuId': vm.q.cuId, 'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
                },
                page: cupage
            }).trigger("reloadGrid");

        },

        exportRefer: function () {
            exportFile('#jqGrid', '../stats/refer/export', {
                'staffId': vm.q.staffId, 'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
            });

            exportFile('#jqCuGrid', '../stats/refer/cuExport', {
                'cuId': vm.q.cuId, 'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
            });
        }
    }
});