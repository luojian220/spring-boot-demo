$(function () {

    var cuId = getQueryString('cuId');
    console.log("param : " + cuId);
    if (cuId != null && cuId !== undefined) {
        vm.cuId = cuId;
    }
    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = getOneMonthAfterTime();
    $("#jqGrid").Grid({
        url: '../customerProgressRecord/list',
        postData:{'beginTime':vm.q.beginTime, 'endTime':vm.q.endTime,'cuId':vm.cuId},
        colModel: [
			{label: 'id', name: 'id', index: 'id', key: true, hidden: true},
			{label: '客户名称', name: 'cuName', index: 'cu_id', width: 80},
			{label: '跟踪日志', name: 'content', index: 'content', width: 140},
            {label: '跟踪类型', name: 'type', index: 'type', width: 80},
			{label: '跟踪日期', name: 'progressDate', index: 'progress_date', width: 60,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '创建日期', name: 'createDate', index: 'create_date', width: 60,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '跟踪人', name: 'createEmpName', index: 'create_emp_id', width: 40}]
    });

    vm.getCustomers();
    vm.getCaseTypeList("客户跟踪类型");

});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		customerProgressRecord: {},
		ruleValidate: {
            cuId: [
				{required: true, type: 'number',message: '客户名称不能为空', trigger: 'change'}
            ],
            content: [
                {required: true, message: '跟踪日志不能为空', trigger: 'blur'}
            ],
            type: [
                {required: true, message: '跟踪类型不能为空', trigger: 'blur'}
            ]/*,
            progressDate: [
                {required: true,type: 'date', message: '跟踪日期不能为空', trigger: 'blur'}
            ]*/
		},
		q: {
		    name: '',
            content: ''
		},
        customers:[],
        loadingFilterCuName:false,
        customerOptions:[],
        cuNameShow: false,
        progressTypeList:[],
        cuId:'',
        cuName:''
	},
	methods: {
		query: function () {
			vm.reload();
		},
        findName: function (cuId) {

            let customerFilter = vm.customers.filter(item => item.cuId == cuId);
            if (customerFilter.length > 0) {
                vm.cuName = customerFilter[0].cuName;
            }
            console.log("客户名称：" + vm.cuName);
            return vm.cuName;
        },
        add: function () {
			vm.showList = false;
			vm.title = "新增";
			vm.customerProgressRecord = {};
			vm.customerProgressRecord.progressDate = new Date().getTime();
			vm.customerProgressRecord.cuId = vm.cuId;
			if (vm.cuName === '' || vm.cuName == undefined) {
                vm.findName(vm.cuId);
            }
			vm.customerProgressRecord.cuName = vm.cuName;

		},
		update: function (event) {
            let id = getSelectedRow("#jqGrid");
			if (id == null) {
				return;
			}
			vm.showList = false;
            vm.title = "修改";
            vm.cuNameShow = true;
            vm.getInfo(id);
            //vm.customerProgressRecord.progressDate =new Date(vm.customerProgressRecord.progressDate);
        },
        return_list: function () {
            window.location.href = '../yscrms/customer_follow.html';
        },
		saveOrUpdate: function (event) {
            let url = vm.customerProgressRecord.id == null ? "../customerProgressRecord/save" : "../customerProgressRecord/update";
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.customerProgressRecord),
                type: "POST",
			    contentType: "application/json",
                successCallback: function (r) {
                    vm.reload();
                    alert('操作成功', function (index) {

                    });
                }
			});
		},
		del: function (event) {
            let ids = getSelectedRows("#jqGrid");
			if (ids == null){
				return;
			}

			confirm('确定要删除选中的记录？', function () {
                Ajax.request({
				    url: "../customerProgressRecord/delete",
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
		getInfo: function(id){
            Ajax.request({
                url: "../customerProgressRecord/info/"+id,
                async: true,
                successCallback: function (r) {
                    vm.customerProgressRecord = r.customerProgressRecord;
                }
            });
		},
		reload: function (event) {
			vm.showList = true;
            vm.cuNameShow = false;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            page = 1;
			$("#jqGrid").jqGrid('setGridParam', {
                postData: {'name': vm.q.name,'beginTime':vm.q.beginTime,'endTime':vm.q.endTime,'cuId':vm.cuId,
                    'content': vm.q.content},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
		},
        reloadSearch: function() {
            vm.q = {
            	content: '',
                beginTime:getOneMonthBeforeTime(),
                endTime:getOneMonthAfterTime()
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
        },
        /**
         * 获取客户列表
         */
        getCustomers: function () {
            Ajax.request({
                url: "../customer/queryAll",
                params: {
                    cuIsVip: vm.q.vip,
                },
                async: true,
                successCallback: function (r) {

                    vm.customers = r.list;
                }
            });
        },
        filterCuName: function (query) {
            if (query !== '') {
                vm.loadingFilterCuName = true;
                setTimeout(() => {
                    vm.loadingFilterCuName = false;
                    const list = vm.customers.map(item => {
                        return {
                            value: item.cuName.concat(item.cuPyName).concat(item.cuSimplePyName),
                            label: item.cuName
                        };
                    });
                    vm.customerOptions = list.filter(item => item.value.toLowerCase().indexOf(query.toLowerCase()) > -1);

                }, 200);
            } else {
                vm.customerOptions = [];
            }
            console.log("命中记录数" + vm.customerOptions.length);
        },
        // 获取字典
        getCaseTypeList: function(value) {

            Ajax.request({
                url: "../sys/macro/queryListByName",
                params: {
                    name: value,
                },
                async: false,
                successCallback: function (r) {
                    vm.progressTypeList = r.list;
                }
            });
        }
	}
});