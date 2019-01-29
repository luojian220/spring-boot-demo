$(function () {
    //个人信息
    let tag = getQueryString("tag");
    if (tag) {
        $("#detail").trigger("click");
    }
    //用户列表
    $("#jqGrid").Grid({
        url: '../sys/user/list',
        colModel: [
            {label: '用户ID', name: 'userId', index: "user_id", key: true, hidden: true},
            {label: '用户名', name: 'username', width: 75},
            {label: '所属部门', name: 'deptName', width: 75},
            {label: '所属员工', name: 'staffName', width: 75},
//            {label: '邮箱', name: 'email', width: 90},
            {label: '微信昵称', name: 'wxNickname', width: 100},
            {
                label: '状态', name: 'status', width: 80, formatter: function (value) {
                    return value === 0 ?
                        '<span class="label label-danger">禁用</span>' :
                        '<span class="label label-success">正常</span>';
                }
            },
            {
                label: '创建时间', name: 'createTime', index: "create_time", width: 80, formatter: function (value) {
                    return transDate(value);
                }
            }]
    });
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

var vm = new Vue({
    el: '#rrapp',
    data: {
        q: {
            username: null
        },
        showList: true,
        showDetail: false,
        isModify: false,
        isShow:false,
        title: null,
        roleList: {},
        staffList: {},
        nickList: {},
        user: {
            status: 1,
            deptName: '',
            roleIdList: [],
            staffName: '',
            staffId: '',
            wxNickname:'',
            openId:'',
        },
        ruleValidate: {
            username: [
                {required: true, message: '姓名不能为空', trigger: 'blur'}
            ],
/*            email: [
                {required: true, message: '邮箱不能为空', trigger: 'blur'},
                {type: 'email', message: '邮箱格式不正确', trigger: 'blur'}
            ],
            mobile: [
                {required: true, message: '手机号不能为空', trigger: 'blur'}
            ],*/
/*            deptName: [
                      {required: true, message: '所属不能为空', trigger: 'change'}
                  ]
        ,*/
            staffId: [
                {required: true, message: '所属员工不能为空', trigger: 'change'}
            ]
//        ,
//            wxNickname: [
//                  {required: true, message: '微信昵称不能为空', trigger: 'blur'}
//              ]
        
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            vm.showList = false;
            vm.isModify = false;
            vm.title = "新增(默认密码：888888)";
            vm.roleList = {};
            vm.staffList = {};
            vm.nickList = {};
            
            vm.user = {status: 1, roleIdList: [], deptId: '', deptName: '', staffId: '', staffName: '',wxNickname:'',openId:''};

            //获取角色信息
            this.getRoleList();
            vm.getDept();
            //获取员工列表
            vm.staffId = null;
            this.getStaffList();
            this.getNickList();
        },
        getDept: function () {
            //加载部门树
/*            Ajax.request({
                url: '../sys/dept/list',
                async: true,
                successCallback: function (r) {
                    ztree = $.fn.zTree.init($("#deptTree"), setting, r.list);
                    var node = ztree.getNodeByParam("deptId", vm.user.deptId);
                    if (node != null) {
                        ztree.selectNode(node);

                        vm.user.deptName = node.name;
                    }
                }
            });*/
        },
        update: function () {
            var userId = getSelectedRow("#jqGrid");
            if (userId == null) {
                return;
            }

            vm.showList = false;
            vm.title = "修改";
            vm.isModify = true;
            Ajax.request({
                url: "../sys/user/info/" + userId,
                async: true,
                successCallback: function (r) {
                    vm.user = r.user;
//                    vm.openId=r.user.openId
                    vm.staffId = r.user.staffId;
                    //获取角色信息
                    vm.getRoleList();
                    vm.getDept();
                    //获取员工列表
                    vm.getStaffList();
                    vm.getNickList();
                    //加这句话的目的就是第一次加载时把昵称给冲了
                    vm.user.wxNickname=r.user.wxNickname;
                }
            });

        },
        del: function () {
            var userIds = getSelectedRows("#jqGrid");
            if (userIds == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                Ajax.request({
                    url: "../sys/user/delete",
                    params: JSON.stringify(userIds),
                    contentType: "application/json",
                    type: 'POST',
                    successCallback: function () {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    }
                });
            });
        },
        saveOrUpdate: function (event) {
            var url = vm.user.userId == null ? "../sys/user/save" : "../sys/user/update";
            Ajax.request({
                url: url,
                params: JSON.stringify(vm.user),
                contentType: "application/json",
                type: 'POST',
                successCallback: function () {
                    alert('操作成功', function (index) {
                        vm.reload();
                    });
                }
            });
        },
        getRoleList: function () {
            Ajax.request({
                url: '../sys/role/select',
                async: true,
                successCallback: function (r) {
                    vm.roleList = r.list;
                }
            });
        },
        getStaffList: function () {
            Ajax.request({
                url: '../sys/staff/queryList',
                params: {staffId: vm.staffId,status:vm.user.status},
                async: true,
                successCallback: function (r) {
                    vm.staffList = r.list;
                }
            });
        },
        getNickList: function () {
            Ajax.request({
                url: '../sys/user/nickList',
//                params: {wxNickname: vm.wxNickname},
                params: {openId: vm.user.openId,wxNickname: vm.user.wxNickname},
//                params: JSON.stringify(vm.user),
                async: true,
                successCallback: function (r) {
                    vm.nickList = r.list;
                }
            });
        },
        change_wxNick: function (value,type){
        	if (value.label !== null & value.label !== undefined & value.label !== '') { 
        		vm.user.wxNickname=value.label;
        	}
        },
        detail: function () {
            vm.showList = false;
            vm.showDetail = true;
            vm.isModify = true;
            vm.isShow=true;
            vm.title = "个人信息";
            Ajax.request({
                url: "../sys/user/detail/",
                async: true,
                successCallback: function (r) {
                    vm.user = r.user;
                    vm.staffId = r.user.staffId;
                    //获取角色信息
                    vm.getRoleList();
                    vm.getDept();
                    //获取员工列表
                    vm.getStaffList();
                }
            });
            $("form input").prop("readonly", true);
        },
        reload: function (event) {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'username': vm.q.username},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formAdd');
            vm.handleReset('formModify');
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
                    vm.user.deptId = node[0].deptId;
                    vm.user.deptName = node[0].name;

                    layer.close(index);
                }
            });
        },
        reset: function () {
            var userIds = getSelectedRows("#jqGrid");
            if (userIds == null) {
                return;
            }

            confirm('确定要重置选中的用户密码？', function () {
                Ajax.request({
                    url: "../sys/user/reset",
                    params: JSON.stringify(userIds),
                    contentType: "application/json",
                    type: 'POST',
                    successCallback: function () {
                        alert('操作成功，初始密码：888888', function (index) {
                            vm.reload();
                        });
                    }
                });
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