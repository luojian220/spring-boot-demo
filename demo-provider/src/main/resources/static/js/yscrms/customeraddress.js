$(function () {
    $("#jqGrid").Grid({
        url: '../customeraddress/list',
        colModel: [
			{label: 'caId', name: 'caId', index: 'ca_id', key: true, hidden: true},
			{label: '', name: 'caCuId', index: 'ca_cu_id', width: 80},
			{label: '', name: 'caAddress', index: 'ca_address', width: 80},
			{label: '', name: 'caAddTime', index: 'ca_add_time', width: 80},
			{label: '', name: 'caMap', index: 'ca_map', width: 80},
			{label: '', name: 'caMapDescription', index: 'ca_map_description', width: 80}]
    });
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		customerAddress: {},
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
			vm.customerAddress = {};
		},
		update: function (event) {
            let caId = getSelectedRow("#jqGrid");
			if (caId == null) {
				return;
			}
			vm.showList = false;
            vm.title = "修改";

            vm.getInfo(caId)
		},
		saveOrUpdate: function (event) {
            let url = vm.customerAddress.caId == null ? "../customeraddress/save" : "../customeraddress/update";
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.customerAddress),
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
            let caIds = getSelectedRows("#jqGrid");
			if (caIds == null){
				return;
			}

			confirm('确定要删除选中的记录？', function () {
                Ajax.request({
				    url: "../customeraddress/delete",
                    params: JSON.stringify(caIds),
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
		getInfo: function(caId){
            Ajax.request({
                url: "../customeraddress/info/"+caId,
                async: true,
                successCallback: function (r) {
                    vm.customerAddress = r.customerAddress;
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