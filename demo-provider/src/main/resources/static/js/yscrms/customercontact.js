$(function () {
    $("#jqGrid").Grid({
        url: '../customercontact/list',
        colModel: [
			{label: 'ccId', name: 'ccId', index: 'cc_id', key: true, hidden: true},
			{label: '', name: 'ccCuId', index: 'cc_cu_id', width: 80},
			{label: '', name: 'ccContact', index: 'cc_contact', width: 80},
			{label: '', name: 'ccPhone', index: 'cc_phone', width: 80},
			{label: '', name: 'ccAddTime', index: 'cc_add_time', width: 80}]
    });
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		customerContact: {},
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
			vm.customerContact = {};
		},
		update: function (event) {
            let ccId = getSelectedRow("#jqGrid");
			if (ccId == null) {
				return;
			}
			vm.showList = false;
            vm.title = "修改";

            vm.getInfo(ccId)
		},
		saveOrUpdate: function (event) {
            let url = vm.customerContact.ccId == null ? "../customercontact/save" : "../customercontact/update";
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.customerContact),
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
            let ccIds = getSelectedRows("#jqGrid");
			if (ccIds == null){
				return;
			}

			confirm('确定要删除选中的记录？', function () {
                Ajax.request({
				    url: "../customercontact/delete",
                    params: JSON.stringify(ccIds),
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
		getInfo: function(ccId){
            Ajax.request({
                url: "../customercontact/info/"+ccId,
                async: true,
                successCallback: function (r) {
                    vm.customerContact = r.customerContact;
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