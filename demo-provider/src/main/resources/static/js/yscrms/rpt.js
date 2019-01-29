$(function () {
    var names = [];
    var model = [];
    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = new Date();
    Ajax.request({
        url: '../stats/rpt/queryCols',
        successCallback: function (r) {
            vm.jqdata = r.list;
        }
    });

    if (vm.jqdata.length > 0)
    //此处因为数据源数组中的结构相同且不为空，直接遍历索引为0的数据即可
        $.each(vm.jqdata[0], function (key, value) {
            names.push(key);
            if (value == "ncCuNumber") {
                model.push({
                    name: value,
                    index: value,
                    width: 110,
                    key: true,
                    frozen: true
                });
            } else if (value == "ncCuName") {
                model.push({
                    name: value,
                    index: value,
                    width: 220,
                    frozen: true
                });
            } else if (value == "repairNum") {
                model.push({
                    name: value,
                    index: value,
                    formatter: function (cellvalue, options) {
                        return detailHref(cellvalue, options.rowId, '', vm.q.beginTime, vm.q.endTime);
                    }
                });
            } else {
                model.push({
                    name: value,
                    index: value,
                    formatter: function (cellvalue, options) {
                        return detailHref(cellvalue, options.rowId, options.colModel.name, vm.q.beginTime, vm.q.endTime);
                    }
                });
            }
        });

    //创建jqGrid组件
    $("#jqGrid").Grid({
        url: '../stats/rpt/list',
        postData: {'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime},
        colNames: names,//jqGrid的列显示名字
        colModel: model,
        shrinkToFit: false,
        width: 700
    });

    //详情链接
    function detailHref(value, rowId, ncCaseType, beginTime, endTime) {
        var starUrl = "rpt_details.html?ncCuNumber=" + rowId;
        var url = starUrl + '&ncCaseType=' + ncCaseType + '&beginTime=' + beginTime + '&endTime=' + endTime;
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
        jqdata: [],
        ruleValidate: {
            ncCuNumber: [
                {required: true, message: '客户编号不能为空', trigger: 'blur'}
            ]
        },
        q: {
            ncCuNumber: '', ncCuName: '', beginTime: '', endTime: ''
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
                    'ncCuNumber': vm.q.ncCuNumber, 'ncCuName': vm.q.ncCuName,
                    'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
                },
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },
        exportRpt: function () {
            exportFile('#rrapp', '../stats/rpt/export', {
                'ncCuNumber': vm.q.ncCuNumber, 'ncCuName': vm.q.ncCuName,
                'beginTime': vm.q.beginTime, 'endTime': vm.q.endTime
            });
        },
        reloadSearch: function () {
            vm.q = {
                ncCuNumber: '', ncCuName: '', beginTime: '', endTime: ''
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