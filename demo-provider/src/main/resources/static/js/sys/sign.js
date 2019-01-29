$(function () {
    $("#jqGrid").Grid({
        url: '../sys/sign/list',
        colModel: [
            {label: 'id', name: 'id', index: 'id', key: true, hidden: true},
            {label: '姓名', name: 'name', index: 'name', width: 80},
            {label: '员工编号', name: 'staffId', index: 'staff_id', width: 80},
            {label: '类型', name: 'type', index: 'type', width: 80,formatter: function (value) {
                    if ('sign in' === value) {
                        return '签到';
                    } else if ('sign out' === value) {
                        return '签退';
                    }
                }},
            {
                label: '考勤时间', name: 'signTime', index: 'sign_time', width: 100, formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '考勤地点', name: 'address', index: 'address', width: 80},
            /*{label: '考勤半径', name: 'radius', index: 'radius', width: 80},*/
            {label: '考勤经度', name: 'longitude', index: 'longitude', width: 80},
            {label: '考勤纬度', name: 'latitude', index: 'latitude', width: 80}
            /*{label: '关联案件编号', name: 'ncNumber', index: 'nc_number', width: 80},*/
           /* {label: '案件考勤时间', name: 'caseTime', index: 'case_time', width: 80}]*/
        ]
    });
});

var vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        title: null,
        sign: {},
        ruleValidate: {
            name: [
                {required: true, message: '名称不能为空', trigger: 'blur'}
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
        add: function () {
            vm.showList = false;
            vm.title = "新增";
            vm.sign = {};
        },
        update: function (event) {
            let id = getSelectedRow("#jqGrid");
            if (id == null) {
                return;
            }
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(id)
        },
        saveOrUpdate: function (event) {
            let url = vm.sign.id == null ? "../sys/sign/save" : "../sys/sign/update";
            Ajax.request({
                url: url,
                params: JSON.stringify(vm.sign),
                type: "POST",
                contentType: "application/json",
                successCallback: function (r) {
                    alert('操作成功', function (index) {
                        vm.reload();
                    });
                }
            });
        },
        del: function (event) {
            let ids = getSelectedRows("#jqGrid");
            if (ids == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                Ajax.request({
                    url: "../sys/sign/delete",
                    params: JSON.stringify(ids),
                    type: "POST",
                    contentType: "application/json",
                    successCallback: function () {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    }
                });
            });
        },
        getInfo: function (id) {
            Ajax.request({
                url: "../sys/sign/info/" + id,
                async: true,
                successCallback: function (r) {
                    vm.sign = r.sign;
                }
            });
        },
        reload: function (event) {
            console.log(vm.q.beginTime);
            vm.showList = true;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'beginTime':vm.q.beginTime, 'endTime': vm.q.endTime},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },
        reloadSearch: function () {
            vm.q = {
                name: ''
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