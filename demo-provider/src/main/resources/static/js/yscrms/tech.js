$(function () {
    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = new Date();
    $("#jqGrid").Grid({
        url: '../stats/tech/list',
        postData: {'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime},
        colModel: [
            {label: '编号', name: 'staffId', index: 'staffId', width: 80, key: true},
            {label: '姓名', name: 'staffName', index: 'staffName', width: 80},
            {
                label:'出勤次数',
                name: 'turnOutTimes',
                index: 'turnOutTimes',
                width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'turnOutTimes',vm.q.beginTime,vm.q.endTime)
                }

            },
            {
                label: '已完成', name: 'finished', index: 'finished', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'finished',vm.q.beginTime,vm.q.endTime)
                }
            },
            {
                label: '未完成', name: 'unfinished', index: 'unfinished', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'unfinished',vm.q.beginTime,vm.q.endTime)
                }
            },
            {
                label: '独立完成', name: 'independent', index: 'independent', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'independent',vm.q.beginTime,vm.q.endTime)
                }
            },
            {
                label: '负责完成', name: 'responsible', index: 'responsible', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'responsible',vm.q.beginTime,vm.q.endTime)
                }
            },
            {
                label: '合作完成', name: 'collaborate', index: 'collaborate', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'collaborate',vm.q.beginTime,vm.q.endTime)
                }
            },
            {
                label: '已转单', name: 'haveSingle', index: 'haveSingle', width: 80,
                formatter: function (cellvalue, options) {
                    return detailHref(cellvalue, options.rowId, 'haveSingle',vm.q.beginTime,vm.q.endTime)
                }
            }
        ]
    });

    //详情链接
    function detailHref(value, rowId, ncCaseState,beginTime,endTime) {
        var starUrl = "tech_details.html?staffId=" + rowId;
        var url = starUrl + '&ncCaseState=' + ncCaseState + '&beginTime=' + beginTime + '&endTime=' + endTime;
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
        ruleValidate: {
            staffId: [
                {required: true, message: '编号不能为空', trigger: 'blur'}
            ]
        },
        q: {
             beginTime: null, endTime: null
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
                    'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
                },
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },

        exportDisp: function () {
            exportFile('#rrapp', '../stats/tech/export', {
                'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
            });
        },
        reloadSearch: function () {
            vm.q = {
                 beginTime: null, endTime: null
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