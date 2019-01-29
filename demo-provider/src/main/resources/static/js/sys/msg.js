$(function () {
    // 获取请求参数
    // 判断是否展示 数据操作按钮
    var opt = getQueryString('opt');
    //我的消息显示内容
    if (opt != null && opt != '' && opt != undefined && opt == "read") {
        $("#jqGrid").Grid({
            url: '../sys/msg/list',
            postData: {'smIsRead': getQueryString("smIsRead") != null ? getQueryString("smIsRead") : null},
            colModel: [
                {label: 'smId', name: 'smId', index: 'sm_id', key: true, hidden: true},
                {label: '标题', name: 'smTitle', index: 'sm_title', width: 60},
                {label: '内容', name: 'smContent', index: 'sm_content', width: 300},
                {
                    label: '发布时间',
                    name: 'smPublishTime',
                    index: 'sm_publish_time',
                    width: 80,
                    formatter: function (value) {
                        return transDate(value);
                    }
                },
                /*{label: '发布人', name: 'staffName', index: 'staffName', width: 80},
                {
                    label: '状态', name: 'smState', index: 'sm_state', width: 80, formatter: function (value) {
                        return transSmstate(value);
                    }
                },*/
                {
                    label: '消息类型', name: 'smType', index: 'sm_type', width: 40, formatter: function (value) {
                        return transSmstype(value);
                    }
                },

                {
                    label: '读取时间',
                    id: 'smReadTime',
                    name: 'smReadTime',
                    index: 'sm_read_time',
                    width: 80,
                    formatter: function (value) {
                        return transDate(value);
                    }
                }
            ]
        });
    } else {
        $("#jqGrid").Grid({
            url: '../sys/msg/list',
            postData: {'smIsRead': getQueryString("smIsRead") != null ? getQueryString("smIsRead") : null},
            colModel: [
                {label: 'smId', name: 'smId', index: 'sm_id', key: true, hidden: true},
                {label: '标题', name: 'smTitle', index: 'sm_title', width: 100},
                /*{label: '内容', name: 'smContent', index: 'sm_content', width: 80},*/
                {
                    label: '发布时间',
                    name: 'smPublishTime',
                    index: 'sm_publish_time',
                    width: 80,
                    formatter: function (value) {
                        return transDate(value);
                    }
                },
                /*{label: '发布人', name: 'staffName', index: 'staffName', width: 80},
                {
                    label: '状态', name: 'smState', index: 'sm_state', width: 80, formatter: function (value) {
                        return transSmstate(value);
                    }
                },*/
                {
                    label: '消息类型', name: 'smType', index: 'sm_type', width: 80, formatter: function (value) {
                        return transSmstype(value);
                    }
                }

                /*{
                    label: '读取时间',
                    id: 'smReadTime',
                    name: 'smReadTime',
                    index: 'sm_read_time',
                    width: 80,
                    formatter: function (value) {
                        return transDate(value);
                    }
                }*/
            ]
        });
    }
});

var setting = {
    data: {
        simpleData: {
            enable: true,
            idKey: "deptId",
            pIdKey: "parentId",
            rootPId: -1
        },
        key: {
            url: "nourl"
        }
    }
};

let smIsRead = getQueryString("smIsRead") != null ? getQueryString("smIsRead") : null;
var vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        showDel: false,
        title: null,
        smIsRead: smIsRead,
        msg: {smType: ''},
        ruleValidate: {},
        q: {
            smTitle: ''
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        detail: function (event) {
            let smId = getSelectedRow("#jqGrid");
            if (smId == null) {
                return;
            }
            vm.showList = false;
            vm.title = "详细信息";
            Ajax.request({
                url: "../sys/msg/info/" + smId,
                async: true,
                successCallback: function (r) {
                    vm.msg = r.msgInfo;
                    vm.msg.smPublishTime = transDate(r.msgInfo.smPublishTime);
                    vm.msg.smType = transSmstype(r.msgInfo.smType);
                }
            });
            $("form input").prop("readonly", true);
        },
        saveOrUpdate: function (event) {
            let url = vm.msg.smId == null ? "../sys/msg/save" : "../sys/msg/update";
            Ajax.request({
                url: url,
                params: JSON.stringify(vm.msg),
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
            let smIds = getSelectedRows("#jqGrid");
            if (smIds == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                Ajax.request({
                    url: "../sys/msg/delete",
                    params: JSON.stringify(smIds),
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
        reload: function (event) {
            vm.showList = true;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'smTitle': vm.q.smTitle, 'smIsRead': vm.smIsRead},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },
        reloadSearch: function () {
            vm.q = {
                smTitle: ''
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