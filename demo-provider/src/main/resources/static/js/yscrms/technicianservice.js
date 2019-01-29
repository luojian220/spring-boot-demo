$(function () {


    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = getOneMonthAfterTime();
    $("#jqGrid").Grid({
        url: '../technicianservice/list',
        postData:{'beginTime':vm.q.beginTime, 'endTime':vm.q.endTime},
        colModel: [
			{label: 'id', name: 'id', index: 'id', key: true, hidden: true},
			{label: '客户名称', name: 'cuName', index: 'ts_cu_id', width: 120},
			{label: '技术员姓名', name: 'empName', index: 'ts_emp_id', width: 60},
			{label: '类型', name: 'tsTechnicianType', index: 'ts_technician_type', width: 50},
			{label: '咨询内容', name: 'tsContent', index: 'ts_content', width: 140},
			{label: '解决方案', name: 'tsSolution', index: 'ts_solution', width: 80},
			{label: '咨询时间', name: 'tsTime', index: 'ts_time', width: 80,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '创建时间', name: 'tsAddTime', index: 'ts_add_time', width: 80,hidden:true}]
    });

    vm.getCustomers();

    vm.getCaseTypeList("服务咨询");
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		technicianService: {},
		q: {
		    name: ''
		},
        customers : [],
        ruleValidate: {
            tsCuId: [
                {type: 'number',required: true, message: '客户名称不能为空', trigger: 'change'}
            ],
            /*tsTime: [
                {required: true,type: 'date', message: '咨询时间不能为空', trigger: 'blur' }
            ],*/
            tsTechnicianType: [
                {required: true, message: '咨询类型不能空', trigger: 'blur'}
            ],
            tsContent: [
                {required: true, message: '咨询问题不能为空', trigger: 'blur'}
            ],
            tsSolution: [
                {required: true, message: '解决方案不能为空', trigger: 'blur'}
            ]
        },
        loadingFilterCuName:false,
        customerOptions:[],
        tsTechnicianTypeList:[],
        cuNameShow: false
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function () {
			vm.showList = false;
			vm.title = "新增";
			vm.technicianService = {};
			vm.technicianService.tsTime = new Date().getTime();
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
		},
		saveOrUpdate: function (event) {
            let url = vm.technicianService.id == null ? "../technicianservice/save" : "../technicianservice/update";
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.technicianService),
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
				    url: "../technicianservice/delete",
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
                url: "../technicianservice/info/"+id,
                async: true,
                successCallback: function (r) {
                    vm.technicianService = r.technicianService;
                }
            });
		},
		reload: function (event) {
			vm.showList = true;
            vm.cuNameShow = false;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
			$("#jqGrid").jqGrid('setGridParam', {
                postData: {'name': vm.q.name,'beginTime':vm.q.beginTime,'endTime':vm.q.endTime},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
		},
        reloadSearch: function() {
            vm.q = {
                name: '',
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
                            label: item.cuName,
                            id : item.cuId
                        };
                    });
                    vm.customerOptions = list.filter(item => item.value.toLowerCase().indexOf(query.toLowerCase()) > -1);
                    console.log("命中记录第一条记录：" + vm.customerOptions[0].value);
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
                    vm.tsTechnicianTypeList = r.list;
                }
            });
        },
	}
});