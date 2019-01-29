$(function () {

    // 获取请求参数
    // 判断是否展示 数据操作按钮
    var opt = getQueryString('opt');
    var vip = getQueryString('vip');
    var type = getQueryString('type');

    if (opt != null && opt == 'query') {
        vm.onlyQuery = false;
        vm.updateBtnFlag = false;
        vm.deleteBtnFlag = false;
    } else if (opt != null && opt == 'manage') {
        vm.cancelBtnFlag = true;
        vm.saveBtnFlag = false;
        vm.q.ncCaseState = '0';
        vm.ncCaseState = '0';
        vm.showCaseState = false;
    } else if (opt != null && opt == 'cancel') {
        vm.cancelFlag = false;
        vm.updateBtnFlag = false;
        vm.deleteBtnFlag = false;
        vm.saveBtnFlag = false;
        vm.reportBtnFlag = true;
        vm.q.ncCaseState = '6';
        vm.ncCaseState = '6';
        vm.showCaseState = false;
    } else {
        vm.add();
    }

    if (vip != null && vip.trim() != '') {
        vm.q.vip = vip;
    }
    if (type != null && type.trim() != '') {
        vm.q.type = type;
    }


    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = getOneMonthAfterTime();

    if (opt != null && opt != '' && opt != undefined) {
        $("#jqGrid").Grid({
            url: '../newcase/list?',
            postData:{'cuIsVip':vm.q.vip,'ncType':vm.q.type,'ncCaseState':vm.q.ncCaseState,
                'beginTime':vm.q.beginTime,'endTime':vm.q.endTime},
            colModel: [
                {label: 'ncId', name: 'ncId', index: 'nc_id', key: true, hidden: true},
                {label: '案件编号', name: 'ncNumber', index: 'nc_number', width: 90},
                {label: '客户id', name: 'ncCuId', index: 'nc_cu_id', width: 80, hidden: true},
                {label: '客户编号', name: 'ncCuNumber', index: 'nc_cu_number', width: 70, hidden: true},
                {label: '客户名称', name: 'ncCuName', index: 'nc_cu_name', width: 120},
                {label: '报案类型', name: 'ncType', index: 'nc_type', width: 50,formatter: function(value) {
                        return transCaseType(value);
                    }},
                {label: '案件类型', name: 'ncCaseType', index: 'nc_case_type', width: 60},
                {label: '联系人', name: 'ncContactPerson', index: 'nc_contact_person', width: 55},
                {label: '联系电话', name: 'ncContactPhone', index: 'nc_contact_phone', width: 80},
                {label: '案件状态', name: 'ncCaseState', index: 'nc_case_state', width: 50,formatter: function(value) {
                        return transCaseStat(value);
                    }},
                {label: '默认状态', name: 'ncDefaultState', index: 'nc_default_state', width: 80,hidden: true},
                {label: '设备配置', name: 'ncMachineConfig', index: 'nc_machine_config', width: 80, hidden: true},
                {label: '是否评价', name: 'ncIsReview', index: 'nc_is_review', width: 80,hidden: true},
                {label: '是否多人任务', name: 'ncIsManyTask', index: 'nc_is_many_task', width: 80,hidden: true},
                {label: '客户地址', name: 'ncAddress', index: 'nc_address', width: 90},
                {label: '报修人empId', name: 'ncAddEmpId', index: 'nc_add_emp_id', width: 80,hidden: true},
                {label: '报修人', name: 'ncAddEmpName', index: 'nc_add_emp_name', width: 45},
                {label: '报修时间', name: 'ncAddTime', index: 'nc_add_time', width: 80,formatter: function (value) {
                        return transDate(value);
                    }},
                {label: '更新人名称', name: 'ncUpEmpName', index: 'nc_up_emp_name', width: 80,hidden: true},
                {label: '更新时间', name: 'ncUpTime', index: 'nc_up_time', width: 90,hidden: true,formatter: function (value) {
                        return transDate(value);
                    }},
                {label: '上门时间', name: 'ncTaskTime', index: 'nc_task_time', width: 90,formatter: function (value) {
                        return transDate(value);
                    }},
                {label: '更新备注', name: 'ncRemark', index: 'nc_remark', width: 80,hidden: true},
                {label: '', name: 'ncOpenNumber', index: 'nc_open_number', width: 80,hidden: true},
                {label: '', name: 'ncOpenName', index: 'nc_open_name', width: 80,hidden: true},
                {label: '', name: 'ncOpenTime', index: 'nc_open_time', width: 80,hidden: true}]
        });
    }

    vm.getCustomers();
    //vm.getCaseTypeList("报案类型");

    vm.getCaseTypeList("IT报案类型");
    let caseTypeListTemp = vm.caseTypeList;
    vm.getCaseTypeList("工程报案类型");
    caseTypeListTemp = caseTypeListTemp.concat(vm.caseTypeList);
    vm.caseTypeList = unique_typeName(caseTypeListTemp);
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		newCase: {
            ncCuId:'',
            ncContactPhone:'',
            ncContactPerson:''
        },
		ruleValidate: {
//            ncCuId: [
//                {required: true, type: 'number',message: '报修客户不能为空', trigger: 'change'}
//            ],
            ncAddress: [
                {required: true, message: '报修地址不能为空', trigger: 'blur'}
            ],
            ncContactPerson: [
                {required: true, message: '联系人不能为空', trigger: 'blur'}
            ],
            ncContactPhone: [
                {required: true, message: '联系电话不能为空', trigger: 'blur'}
            ],
            /*ncTaskTime: [
                {required: true,type: 'date', message: '上门时间不能为空', trigger: 'change'}
            ],*/
            ncCaseType:[
                {required: true, message: '案件类型不能为空', trigger: 'change'}
            ],
            ncCaseTypeList:[
                /*{required: true, type: 'array', min: 1, message: '案件类型不能为空', trigger: 'change'}*/
                { required: true, type: 'array', min: 1, message: '案件类型最少选一个', trigger: 'change' },
                { type: 'array', max: 3, message: '案件类型最多选三个', trigger: 'change' }
            ],
            ncRemark:[
                {required: true, message: '案件描述不能为空', trigger: 'blur'}
            ],
		},
		q: {
		    name: '',
            vip : '' ,
            type : '',
            ncCaseState:'',
            beginTime:new Date(),
            endTime:new Date(),
            daterange:[]
		},
        customers : [],
        address : [{
            caId: '',
            caCuId:'',
            caAddress:'224234',
            flag:1
        },{
            caId: '',
            caCuId:'',
            caAddress:'',
            flag:1
        }],
        contact:[{
            ccId: '',
            ccCuId:'',
            ccContact:'',
            ccPhone:'',
            flag:1  //0原数据1追加数据
        }],
        contactUnion:'',
        onlyQuery: true,
        saveBtnFlag:true,
        cancelFlag:true,
        updateBtnFlag:true,
        deleteBtnFlag:true,
        reportBtnFlag:false,
        cancelBtnFlag:false,
        show_detail:false,
        caseTypeList:[],
        loadingFilterCuName:false,
//        customerOptions:[],
        filterCuNameList:[],
        showCaseState:true,
        ncCaseState:'',
        datePickRange: {
            disabledDate (date) {
                return date && date.valueOf() < Date.now() - 86400000;
            }
        }
    },
	methods: {
		query: function () {
			vm.reload();
		},
		add: function () {
			vm.showList = false;
			vm.title = "新增";
			vm.newCase = {};
			vm.newCase.ncTaskTime =getWorkTime();
			//new Date(f.getTime() + 2 * 3600 * 1000);
		},
		update: function (event) {
            let ncId = getSelectedRow("#jqGrid");
			if (ncId == null) {
				return;
			}
			vm.showList = false;
            vm.title = "修改";

            vm.getInfo(ncId);
            vm.newCase.ncTaskTime  =new Date(vm.newCase.ncTaskTime);
		},
        queryDetail: function(event) {
            // 查看案件明细
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }
            vm.showList = false;
            vm.show_detail = true;
            vm.title = "查看";
            vm.getInfo(ncId);
            console.log(" 案件状态 " +vm.newCase.ncCaseState);
            vm.newCase.ncTaskTime  =new Date(vm.newCase.ncTaskTime);
            vm.newCase.ncCaseStateStr = transCaseStat(vm.newCase.ncCaseState);

        },
		saveOrUpdate: function (event) {
            let url = vm.newCase.ncId == null ? "../newcase/save" : "../newcase/update";
            vm.newCase.ncType = vm.q.type;
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.newCase),
                type: "POST",
			    contentType: "application/json",
                successCallback: function (r) {
                    alert('操作成功', function (index) {
                        if(vm.newCase.ncId == null ) {
                            vm.newCase = {};
                        } else {
                            vm.reload();
                        }
                    });
                }
			});
		},
		del: function (event) {
            let ncIds = getSelectedRows("#jqGrid");
			if (ncIds == null){
				return;
			}

			confirm('确定要删除选中的记录？', function () {
                Ajax.request({
				    url: "../newcase/delete",
                    params: JSON.stringify(ncIds),
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
        report: function(event) {
            let ncIds = getSelectedRows("#jqGrid");
            if (ncIds == null){
                return;
            }
            confirm('确定要再次上报选中的记录？', function () {
                Ajax.request({
                    url: "../newcase/report",
                    params: JSON.stringify(ncIds),
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
        /*注销*/
        cancel: function(event) {
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }
            //只有未调度的案件，才允许调度退回
            var rowData = $("#jqGrid").jqGrid('getRowData',ncId);
            if (rowData && rowData.ncCaseState != '未调度') {
                iview.Message.error("案件状态不允许注销，请确认！" );
                return;
            }
            confirm('确定要注销选中的记录？', function () {
                Ajax.request({
                    url: "../newcase/cancel",
                    params: JSON.stringify(ncId),
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
		getInfo: function(ncId){
            Ajax.request({
                url: "../newcase/info/"+ncId,
                async: false,
                successCallback: function (r) {
                    vm.newCase = r.newCase;
                   
                    vm.contactUnion=r.newCase.ncContactPerson + "_" + r.newCase.ncContactPhone;
                    
                    vm.find_cus_info(r.newCase.ncCuId);
                    
                }
            });
		},
		/**
		 * 根据选择的客户，填充地址 /联系人 /电话
         */
        find_cus_info: function (value) {

            if (value == null || value === undefined || value === '') {
                return;
            }
            Ajax.request({
                url: "../customer/info/" + value,
                async: false,
                successCallback: function (r) {
                    vm.address = r.customer.address;
                    vm.contact = r.customer.contact;

                }
            });
        },
        setccContact: function (value) {

            if (value == null || value === undefined || value === '') {
                return;
            }
            var arr = value.split("_");

            vm.newCase.ncContactPerson = arr[0];
            vm.newCase.ncContactPhone = arr[1]
        },
		reload: function (event) {
			vm.showList = true;
			vm.show_detail = false;
			if (vm.q.daterange == undefined) {
                vm.q.daterange = [];
            }
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            page = 1;

            var qncCuName =vm.q.ncCuName;
            if (!(qncCuName == null || qncCuName === undefined || qncCuName === '')) {
            	qncCuName = qncCuName.split("_")[0];
            }
			$("#jqGrid").jqGrid('setGridParam', {
                postData: {'ncCuName': qncCuName,'ncNumber':vm.q.ncNumber,
					'ncCaseType':vm.q.ncCaseType,'beginTime':vm.q.beginTime,'endTime':vm.q.endTime,
                    'cuIsVip':vm.q.vip,'ncType':vm.q.type,'ncCaseState':vm.q.ncCaseState},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('newCase');
		},
        reloadSearch: function() {
            vm.q = {
                ncCuName: '',
                ncNumber:'',
                beginTime:getOneMonthBeforeTime(),
                endTime:getOneMonthAfterTime(),
                ncCaseType:'',
                ncCaseState:''
            };
            vm.reload();
        },
        handleSubmit: function (name) {
            resetFields(this,'newCase','ncCaseTypeList');
            handleSubmitValidate(this, name, function () {
                if (vm.newCase.ncCaseTypeList != null && vm.newCase.ncCaseTypeList !== undefined) {
                    if ( vm.newCase.ncCaseTypeList.length > 3 ) {
                        iview.Message.error('案件类型最多选三个!');
                        return;
                    }
                }
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
                    //cuIsVip: vm.q.vip,
                },
                async: true,
                successCallback: function (r) {

                    vm.customers = r.list;
                }
            });
        },
/*        *//**
		 * 根据选择的客户，填充地址 /联系人 /电话
         *//*
        find_cus_info: function (value) {

            if (value == null || value === undefined || value === '') {
                return;
            }
            if ( vm.title == '修改') {
                return ;
            }
            Ajax.request({
                url: "../customer/info/" + value,
                async: false,
                successCallback: function (r) {
                    vm.newCase.ncAddress = r.customer.cuAddress;
                    vm.newCase.ncContactPerson = r.customer.cuContact;
                    vm.newCase.ncContactPhone = r.customer.cuContactPhone;
                }
            });
        },*/
        // 获取字典
        getCaseTypeList: function(value) {

            Ajax.request({
                url: "../sys/macro/queryListByName",
                params: {
                    name: value,
                },
                async: false,
                successCallback: function (r) {
                    vm.caseTypeList = r.list;
                }
            });
        },
//        filterCuName: function (query) {
//            if (query !== '') {
//                vm.loadingFilterCuName = true;
//                setTimeout(() => {
//                    vm.initCuNameList();
//                    vm.loadingFilterCuName = false;
//                    vm.customerOptions = vm.filterCuNameList.filter(item => item.value.toLowerCase().indexOf(query.toLowerCase()) > -1);
//                    console.log("命中记录数" + vm.customerOptions.length );
//
//                }, 200);
//            } else {
//                vm.customerOptions = [];
//                vm.q.ncCuName = '';
//                console.log("命中记录数 : 0");
//            }
//        },
        initCuNameList : function () {
            if (vm.filterCuNameList.length !== undefined && vm.filterCuNameList.length > 0 ) {
                return ;
            }
            const list = vm.customers.map(item => {
                return {
                    value: item.cuName.concat(item.cuPyName).concat(item.cuSimplePyName),
                    label: item.cuName
                };
            });
            vm.filterCuNameList = list;

        }
	}
});