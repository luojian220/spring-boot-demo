$(function () {


    $("#jqGrid").Grid({
        url: '../sys/sign/forCaseList',
        postData:{'beginTime':vm.q.beginTime, 'endTime':vm.q.endTime},
        colModel: [
            {label: 'id', name: 'id', index: 'id', key: true, hidden: true},
            {label: '姓名', name: 'name', index: 'name', width: 40},
            {label: '客户名称', name: 'ncCuName', index: 'ncCuName', width: 80},
//            {label: '员工编号', name: 'staffId', index: 'staff_id', width: 80, hidden: true},
            {label: '类型', name: 'type', index: 'type', width: 40,formatter: function (value) {
                    if ('sign in' === value) {
                        return '签到';
                    } else if ('sign out' === value) {
                        return '签退';
                    }
                }},
            {
                label: '签到时间', name: 'signTime', index: 'sign_time', width: 80, formatter: function (value) {
                    return transDate(value);
                }
            },
            {label: '签到地点', name: 'address', index: 'address', width: 100},
            /*{label: '考勤半径', name: 'radius', index: 'radius', width: 80},*/
            {label: '上门时间', name: 'cdTaskTime', index: 'cdTaskTime', width: 80,formatter: function (value) {
                return transDate(value);
            }},
            {label: '客户地址', name: 'ncAddress', index: 'ncAddress', width: 100},
            
//            {label: '签到经度', name: 'longitude', index: 'longitude', width: 80},
//            {label: '签到纬度', name: 'latitude', index: 'latitude', width: 80},
            {label: '案件编号', name: 'ncNumber', index: 'nc_number', width: 80}
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
            name: '',
            ncNumber: '',
            beginTime: getOneMonthBeforeTime(),
            endTime: getOneMonthAfterTime()
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
            console.log(vm.q.name);
            vm.showList = true;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'name':vm.q.name,'ncNumber':vm.q.ncNumber,'beginTime':vm.q.beginTime, 'endTime': vm.q.endTime},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },
        reloadSearch: function () {
            vm.q = {
                name: '',
                ncNumber: '',
                beginTime:getOneMonthBeforeTime(),
                endTime:getOneMonthAfterTime()
            };
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