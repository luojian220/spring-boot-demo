$(function () {
    $("#jqGrid").Grid({
        url: '../caseaidance/list',
        colModel: [
			{label: 'caNcId', name: 'caNcId', index: 'ca_nc_id', key: true, hidden: true},
			{label: '员工id', name: 'caEmpId', index: 'ca_emp_id', width: 80}]
    });
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		caseAidance: {},
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
			vm.caseAidance = {};
		},
		update: function (event) {
            let caNcId = getSelectedRow("#jqGrid");
			if (caNcId == null) {
				return;
			}
			vm.showList = false;
            vm.title = "修改";

            vm.getInfo(caNcId)
		},
		saveOrUpdate: function (event) {
            let url = vm.caseAidance.caNcId == null ? "../caseaidance/save" : "../caseaidance/update";
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.caseAidance),
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
            let caNcIds = getSelectedRows("#jqGrid");
			if (caNcIds == null){
				return;
			}

			confirm('确定要删除选中的记录？', function () {
                Ajax.request({
				    url: "../caseaidance/delete",
                    params: JSON.stringify(caNcIds),
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
		getInfo: function(caNcId){
            Ajax.request({
                url: "../caseaidance/info/"+caNcId,
                async: true,
                successCallback: function (r) {
                    vm.caseAidance = r.caseAidance;
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