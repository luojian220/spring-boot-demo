$(function () {
    let tag = getQueryString("tag") != null ? getQueryString("tag") : false;
    if (!tag) {
        $("#jqGrid").Grid({
            url: '../sys/staff/list',
            postData: {'status': vm.q.status},
            colModel: [
                {label: '编号', name: 'staffId', index: 'staff_id', key: true, width: 80},
                {label: '姓名', name: 'name', index: 'name', width: 80},
                {label: '性别', name: 'sex', index: 'sex', width: 40},
                {label: '部门', name: 'dpmName', index: 'dpm_name', width: 80},
                {label: '职称', name: 'postingName', index: 'posting_name', width: 80},
                {
                    label: '状态', name: 'status', width: 80, formatter: function (value) {
                        return value == '0' ?
                            '离职' :
                            '在职';
                    }
                },
                {label: '办公电话', name: 'workPhone', index: 'work_phone', width: 80},
                {label: '移动电话', name: 'mobilePhone', index: 'mobile_phone', width: 80},
                {label: '学历', name: 'edu', index: 'edu', width: 80},
                {
                    label: '入职日期', name: 'onBoardTime', index: 'on_board_time', width: 80, formatter: function (value) {
                        return transDate(value, "yyyy-MM-dd");
                    }
                },
                {label: '邮箱', name: 'email', index: 'email', width: 80},
                {label: '员工职级', name: 'jobLevel', index: 'job_level', width: 80},
                {label: '行政级别', name: 'admLevel', index: 'adm_level', width: 80}]
        });
    } else {
        $("#jqGrid").Grid({
            url: '../sys/staff/list',
            postData: {'tag': tag},
            colModel: [
                {label: '编号', name: 'staffId', index: 'staff_id', key: true, width: 80},
                {label: '姓名', name: 'name', index: 'name', width: 80},
                {label: '性别', name: 'sex', index: 'sex', width: 40},
                {label: '部门', name: 'dpmName', index: 'dpm_name', width: 80},
                {label: '职称', name: 'postingName', index: 'posting_name', width: 80},
                {label: '办公电话', name: 'workPhone', index: 'work_phone', width: 80},
                {label: '移动电话', name: 'mobilePhone', index: 'mobile_phone', width: 80},
                {label: '邮箱', name: 'email', index: 'email', width: 80},
                {label: '员工职级', name: 'jobLevel', index: 'job_level', width: 80},
                {label: '行政级别', name: 'admLevel', index: 'adm_level', width: 80}]
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
var ztree;
//我通讯录标签
let tag = getQueryString("tag") != null ? getQueryString("tag") : false;

var vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        tag: tag,
        title: null,
        jobList: {},
        admList: {},
        eduList: {},
        postingList: {},
        staff: {sex: '男', dpmName: '', picture: '', jobLevel: '', admLevel: '', edu: '', postingName: ''},
        ruleValidate: {
            name: [
                {required: true, message: '名称不能为空', trigger: 'blur'}
            ],
            address: [
                {required: true, message: '住址不能为空', trigger: 'blur'}
            ],
            dpmName: [
                {required: true, message: '部门不能为空', trigger: 'change'}
            ],
            postingName: [
                {required: true, message: '职称不能为空', trigger: 'change'}
            ],
            mobilePhone: [
                {required: true, message: '移动电话不能为空', trigger: 'blur'}
            ]
        },
        q: {
            name: '', status: '1'
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            vm.showList = false;
            vm.title = "新增";
            vm.staff = {sex: '男', dpmName: '', picture: '', jobLevel: '', admLevel: '', edu: '', postingName: ''};
            //获取部门列表
            vm.getDept();
            //获取员工职级列表
            vm.getJobList();
            //获取行政级别列表
            vm.getAdmList();
            //获取学历
            vm.getEduList();
            //获取职称
            vm.getPostingList();
            vm.getStaffId();
        },
        getStaffId: function () {
            Ajax.request({
                url: '../sys/staff/getStaffId',
                async: true,
                successCallback: function (r) {
                    vm.staff.staffId = r.staffId;
                }
            });
        },
        getDept: function () {
            //加载部门树
            Ajax.request({
                url: '../sys/dept/list',
                async: true,
                successCallback: function (r) {
                    ztree = $.fn.zTree.init($("#deptTree"), setting, r.list);
                    var node = ztree.getNodeByParam("deptId", vm.staff.deptId);
                    if (node != null) {
                        ztree.selectNode(node);
                        vm.staff.dpmName = node.name;
                    }
                }
            });
        },
        update: function (event) {
            var staffId = getSelectedRow("#jqGrid");
            if (staffId == null) {
                return;
            }
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(staffId)
            //获取部门列表
            vm.getDept();
            //获取员工职级列表
            vm.getJobList();
            //获取行政级别列表
            vm.getAdmList();
            //获取学历
            vm.getEduList();
            //获取职称
            vm.getPostingList();
        },
        saveOrUpdate: function (event) {
            var url = "../sys/staff/saveOrUpdate";
            Ajax.request({
                url: url,
                params: JSON.stringify(vm.staff),
                type: "POST",
                contentType: "application/json",
                successCallback: function (r) {
                    alert('操作成功', function (index) {
                        vm.reload();
                    });
                }
            });
        },

        quit: function (event) {
            var staffIds = getSelectedRows("#jqGrid");
            if (staffIds == null) {
                return;
            }

            confirm('确定要离职选中的员工？', function () {
                Ajax.request({
                    url: "../sys/staff/quit",
                    params: JSON.stringify(staffIds),
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

        del: function (event) {
            var staffIds = getSelectedRows("#jqGrid");
            if (staffIds == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                Ajax.request({
                    url: "../sys/staff/delete",
                    params: JSON.stringify(staffIds),
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
        getInfo: function (staffId) {
            Ajax.request({
                url: "../sys/staff/info/" + staffId,
                async: true,
                successCallback: function (r) {
                    vm.staff = r.staff;
                }
            });
        },
        getJobList: function () {
            Ajax.request({
                url: '../sys/macro/queryListByName',
                params: {value: vm.jobLevel, name: '员工职级'},
                async: true,
                successCallback: function (r) {
                    vm.jobList = r.list;
                }
            });
        },
        getAdmList: function () {
            Ajax.request({
                url: '../sys/macro/queryListByName',
                params: {value: vm.admLevel, name: '行政级别'},
                async: true,
                successCallback: function (r) {
                    vm.admList = r.list;
                }
            });
        },
        getEduList: function () {
            Ajax.request({
                url: '../sys/macro/queryListByName',
                params: {value: vm.edu, name: '学历'},
                async: true,
                successCallback: function (r) {
                    vm.eduList = r.list;
                }
            });
        },
        getPostingList: function () {
            Ajax.request({
                url: '../sys/macro/queryListByName',
                params: {value: vm.postingName, name: '职称'},
                async: true,
                successCallback: function (r) {
                    vm.postingList = r.list;
                }
            });
        },
        reload: function (event) {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'name': vm.q.name, 'status': vm.q.status,'tag':vm.tag},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
        },

        handleSuccessPicUrl: function (res, file) {
            vm.staff.picture = file.response.url;
            vm.staff.picUrl = file.response.link;
        },
        handleFormatError: function (file) {
            this.$Notice.warning({
                title: '文件格式不正确',
                desc: '文件 ' + file.name + ' 格式不正确，请上传 jpg 或 png 格式的图片。'
            });
        },
        handleMaxSize: function (file) {
            this.$Notice.warning({
                title: '超出文件大小限制',
                desc: '文件 ' + file.name + ' 太大，不能超过 2M。'
            });
        },
        eyeImagePicUrl: function () {
            var url = vm.staff.picUrl;
            eyeImage(url);
        },
        reloadSearch: function () {
            vm.q = {
                name: '', status: ''
            }
            vm.reload();
        },
        deptTree: function () {
            openWindow({
                title: "选择部门",
                area: ['300px', '450px'],
                content: jQuery("#deptLayer"),
                btn: ['确定', '取消'],
                btn1: function (index) {
                    var node = ztree.getSelectedNodes();
                    //选择上级部门
                    //vm.staff.deptId = node[0].deptId;
                    vm.staff.dpmName = node[0].name;

                    layer.close(index);
                }
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