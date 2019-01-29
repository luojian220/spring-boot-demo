$(function () {
    $("#jqGrid").Grid({
        url: '../casedispatch/list',
        colModel: [
			{label: 'cdId', name: 'cdId', index: 'cd_id', key: true, hidden: true},
			{label: '案件id', name: 'cdNcId', index: 'cd_nc_id', width: 80},
			{label: '案件编号', name: 'cdNcNumber', index: 'cd_nc_number', width: 80},
			{label: '调度时间', name: 'cdTime', index: 'cd_time', width: 80},
			{label: '调度人', name: 'cdDispatchEmpId', index: 'cd_dispatch_emp_id', width: 80},
			{label: '调度人编号', name: 'cdEmpNumber', index: 'cd_emp_number', width: 80},
			{label: '调度人', name: 'cdEmpName', index: 'cd_emp_name', width: 80},
			{label: '负责人', name: 'cdTechnicalEmpId', index: 'cd_technical_emp_id', width: 80},
			{label: '负责人姓名', name: 'cdTechnical', index: 'cd_technical', width: 80},
			{label: '协助人', name: 'cdAidance', index: 'cd_aidance', width: 80},
			{label: '任务时间', name: 'cdTaskTime', index: 'cd_task_time', width: 80},
			{label: '建议', name: 'cdSuggestion', index: 'cd_suggestion', width: 80},
			{label: '调度状态', name: 'cdDispatchState', index: 'cd_dispatch_state', width: 80}]
    });
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		caseDispatch: {},
		ruleValidate: {
			name: [
				{required: true, message: '名称不能为空', trigger: 'blur'}
			]
		},
		q: {
		    name: ''
		}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function () {
			vm.showList = false;
			vm.title = "新增";
			vm.caseDispatch = {};
		},
		update: function (event) {
            let cdId = getSelectedRow("#jqGrid");
			if (cdId == null) {
				return;
			}
			vm.showList = false;
            vm.title = "修改";

            vm.getInfo(cdId)
		},
		saveOrUpdate: function (event) {
            let url = vm.caseDispatch.cdId == null ? "../casedispatch/save" : "../casedispatch/update";
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.caseDispatch),
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
            let cdIds = getSelectedRows("#jqGrid");
			if (cdIds == null){
				return;
			}

			confirm('确定要删除选中的记录？', function () {
                Ajax.request({
				    url: "../casedispatch/delete",
                    params: JSON.stringify(cdIds),
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
		getInfo: function(cdId){
            Ajax.request({
                url: "../casedispatch/info/"+cdId,
                async: true,
                successCallback: function (r) {
                    vm.caseDispatch = r.caseDispatch;
                }
            });
		},
		reload: function (event) {
			vm.showList = true;
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
			$("#jqGrid").jqGrid('setGridParam', {
                postData: {'name': vm.q.name},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('formValidate');
		},
        reloadSearch: function() {
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