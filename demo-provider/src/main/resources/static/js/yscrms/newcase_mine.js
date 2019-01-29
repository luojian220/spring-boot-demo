$(function () {

    var opt = getQueryString('opt');
    if (opt != null && opt == '1') {
        vm.q.isFinish = 'N';
    } else if (opt != null && opt == '2') {
        vm.q.isFinish = 'Y';
        vm.showIsFinishFlag = true;
    }
    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = getOneMonthAfterTime();

    $("#jqGrid").Grid({
        url: '../newcase/myCase',
        postData:{'isFinish':vm.q.isFinish,'beginTime':vm.q.beginTime, 'endTime':vm.q.endTime},
        colModel: [
			{label: 'ncId', name: 'ncId', index: 'nc_id', key: true, hidden: true},
			{label: '案件编号', name: 'ncNumber', index: 'nc_number', width: 80},
			{label: '客户id', name: 'ncCuId', index: 'nc_cu_id', width: 80, hidden: true},
			{label: '客户编号', name: 'ncCuNumber', index: 'nc_cu_number', width: 70, hidden: true},
			{label: '报修客户', name: 'ncCuName', index: 'nc_cu_name', width: 120},
            {label: '案件类型', name: 'ncCaseType', index: 'nc_case_type', width: 50},
            {label: '调度员', name: 'cdDispatchName', index: 'cd_dispatch_name', width: 40},
            {label: '调度时间', name: 'cdTime', index: 'cd_time', width: 70,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '技术员', name: 'cdTechnicalName', index: 'cd_technical_emp_name', width: 40,hidden: true},
            {label: '任务时间', name: 'cdTaskTime', index: 'cd_task_time', width: 70,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '联系人', name: 'ncContactPerson', index: 'nc_contact_person', width: 55, hidden: true},
			{label: '联系电话', name: 'ncContactPhone', index: 'nc_contact_phone', width: 80, hidden: true},
			{label: '案件状态', name: 'ncCaseState', index: 'nc_case_state', width: 40,formatter: function(value) {
                    return transMyCaseStat(value);
				}},
			{label: '默认状态', name: 'ncDefaultState', index: 'nc_default_state', width: 80,hidden: true},
			{label: '设备配置', name: 'ncMachineConfig', index: 'nc_machine_config', width: 80, hidden: true},
			{label: '是否评价', name: 'ncIsReview', index: 'nc_is_review', width: 80,hidden: true},
			{label: '是否多人任务', name: 'ncIsManyTask', index: 'nc_is_many_task', width: 80,hidden: true},
            {label: '客户地址', name: 'ncAddress', index: 'nc_address', width: 90, hidden: true},
			{label: '报修人empId', name: 'ncAddEmpId', index: 'nc_add_emp_id', width: 80,hidden: true},
			{label: '报修人', name: 'ncAddEmpName', index: 'nc_add_emp_name', width: 50, hidden: true},
			{label: '报修时间', name: 'ncAddTime', index: 'nc_add_time', width: 80,formatter: function (value) {
                    return transDate(value);
                }, hidden: true},
			{label: '更新人名称', name: 'ncUpEmpName', index: 'nc_up_emp_name', width: 80,hidden: true},
			{label: '更新时间', name: 'ncUpTime', index: 'nc_up_time', width: 80,hidden: true,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '客户要求时间', name: 'ncTaskTime', index: 'nc_task_time', width: 80,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '更新备注', name: 'ncRemark', index: 'nc_remark', width: 80,hidden: true},
			{label: '', name: 'ncOpenNumber', index: 'nc_open_number', width: 80,hidden: true},
			{label: '', name: 'ncOpenName', index: 'nc_open_name', width: 80,hidden: true},
			{label: '', name: 'ncOpenTime', index: 'nc_open_time', width: 80,hidden: true}]
    });

    vm.getCustomers();
    vm.getStaffList();
    //vm.getCaseTypeList("报案类型");

    vm.getCaseTypeList("IT报案类型");
    let caseTypeListTemp = vm.caseTypeList;
    vm.getCaseTypeList("工程报案类型");
    caseTypeListTemp = caseTypeListTemp.concat(vm.caseTypeList);
    vm.caseTypeList = caseTypeListTemp;

});

function handleSubmitValidate(vue, name, callback) {
    vue.$refs[name].validate(function (valid) {
        if (valid) {
            callback();
        } else {
            iview.Message.error('请填写完整信息!');
            return false;
        }
    })
};

const validateServiceNumber = (rule, value, callback) => {
    // 模拟异步验证效果

    console.log("value : " + value)
    if (!isNumber(value)) {
        if ("0000000" == value ) {
            callback();
        } else {
            callback(new Error('请输入7位服务单号'));
        }
    } else {
        if (value != null && value != undefined && value.trim().length == 7) {
        	 if ("1111111" == value || "0000000" == value) {
        		 callback();
        	 }else{
        		 var pattern = /([0-9])\1{4}/;
        		 if (pattern.test(value) ) {
        			 callback(new Error('服务单号输入不正确'));
        		 }else{
        			 callback();
        		 }
        	 }
            
        } else {
            callback(new Error('请输入7位服务单号'));
        }

    }
};

function isNumber(value) {
    var patrn = /^[0-9]*$/;
    if (patrn.exec(value) == null || value == "") {
        return false
    } else {
        return true
    }
}

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		newCase: {},
        customers : [],
        customer:{},
        dispatchInfo : {},
        staffList:[],
		ruleValidate: {
            cmrServiceNumber: [
				{required: true,type: 'string', message: '服务单号不能为空', trigger: 'blur'},
                { validator: validateServiceNumber,trigger: 'blur' }
			],
            cmrSolution: [
                {required: true,type: 'string', message: '解决方案不能为空', trigger: 'blur'}
            ],
            cmrReason: [
                {required: true,type: 'string', message: '原因不能为空', trigger: 'blur'}
            ]
		},
        ruleValidate_updateSolution: {
            cmrSolution: [
                {required: true,type: 'string', message: '解决方案不能为空', trigger: 'blur'}
            ]
        },
		q: {
		    name: '',
            isFinish: ''
		},
        cancelInfoList:[],
        columns1: [
            {
                title: '操作类型',
                key: 'cmrTypeName'
            },
            {
                title: '操作人',
                key: 'operatorName'
            },
            {
                title: '调度人',
                key: 'dispatchName'
            },
            {
                title: '案件负责人',
                key: 'technicalName'
            },
            {
                title: '原因',
                key: 'cmrReason'
            },
            {
                title: '操作时间',
                key: 'createTimeStr'
            }
        ],
        data1: [],
        caseModifyRecord:{
            cmrType:4
        },
        showIsFinishFlag:false,
        caseTypeList:[],
        loadingFilterCuName:false,
        customerOptions:[],
        disabledCmrSolution:false,
        showUpdateSolution:false,
        cmrReasonShowName:'原因',
        switchCmrSolution: false
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function () {
			vm.showList = false;
			vm.title = "新增";
			vm.newCase = {};
		},
		update: function (event) {
            let ncId = getSelectedRow("#jqGrid");
			if (ncId == null) {
				return;
			}
			vm.showList = false;
            vm.title = "案件信息";

            vm.getInfo(ncId)
		},
        query_dispatch: function (event) {
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }

            //只有未调度的案件，才允许调度
            var rowData = $("#jqGrid").jqGrid('getRowData',ncId);
            if (rowData && (rowData.ncCaseState == '已调度' )) {
                vm.showList_dis_info = true;
            }
            vm.showCancelFlag = false;
            vm.showList = false;

            vm.title = "案件信息";
            vm.getInfo(ncId);
            vm.getDispatchInfo(ncId);

            // 取消信息列表
            vm.getCancelInfoList(ncId);

            if (vm.showIsFinishFlag) {
                vm.getCompleteInfo(ncId);
            } else {
                vm.caseModifyRecord = {cmrType:4};
            }
            vm.switchCmrSolution = false;

        },
        dispatch: function (event) {
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }
            //只有未调度的案件，才允许调度
            var rowData = $("#jqGrid").jqGrid('getRowData',ncId);
            if (rowData && rowData.ncCaseState != '未调度') {
                iview.Message.error("案件不允许重复调度，请确认！" );
                return;
            }
            vm.showList = false;
            vm.title = "案件信息";

            vm.getInfo(ncId);
        },
		saveOrUpdate: function (event) {
            let url = "../casedispatch/save";
            vm.dispatchInfo.cdNcId = vm.newCase.ncId;
            vm.dispatchInfo.cdNcNumber = vm.newCase.ncNumber;
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.dispatchInfo),
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
        dispatchBack: function(event){
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }
            //只有未调度的案件，才允许调度退回
            var rowData = $("#jqGrid").jqGrid('getRowData',ncId);
            if (rowData && rowData.ncCaseState != '未调度') {
                iview.Message.error("案件状态不允许调度退回，请确认！" );
                return;
            }
            confirm('确定要退回选中的记录？', function () {
                Ajax.request({
                    url: "../casedispatch/dispatchBack/"+ncId,
                    type: "POST",
                    //contentType: "application/json",
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
                async: true,
                successCallback: function (r) {
                    vm.newCase = r.newCase;
                    vm.find_cus_info(vm.newCase.ncCuId);
                }
            });
		},
		reload: function (event) {
			vm.showList = true;
            vm.data1 = [];
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            page = 1;
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'ncCuName': vm.q.ncCuName,'ncNumber':vm.q.ncNumber,
					'ncCaseType':vm.q.ncCaseType,'beginTime':vm.q.beginTime,
                    'endTime':vm.q.endTime,'isFinish':vm.q.isFinish},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('caseModifyRecord2');
            vm.caseModifyRecord = {};
        },
        reloadSearch: function() {
            vm.q = {
                ncCuName: '',
                ncNumber:'',
                beginTime:getOneMonthBeforeTime(),
                endTime:getOneMonthAfterTime(),
                ncCaseType:''
            };
            vm.reload();
        },
        //任务完成
        task_complete:function (name) {

            handleSubmitValidate(this, name, function () {
                let url = "";
                if (vm.caseModifyRecord.cmrType == '4') {
                    //结案
                    url = "../casedispatch/taskComplete";
                    if (vm.caseModifyRecord.cmrServiceNumber == '' || vm.caseModifyRecord.cmrServiceNumber == null || vm.caseModifyRecord.cmrServiceNumber == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                    if (vm.caseModifyRecord.cmrSolution == '' || vm.caseModifyRecord.cmrSolution == null || vm.caseModifyRecord.cmrSolution == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                } else if (vm.caseModifyRecord.cmrType == '5') {
                    //结案并转单
                    url = "../casedispatch/taskCompleteAndNewCase";
                    if (vm.caseModifyRecord.cmrServiceNumber == '' || vm.caseModifyRecord.cmrServiceNumber == null || vm.caseModifyRecord.cmrServiceNumber == undefined) {
                        iview.Message.error('请填写完整信息!' + vm.caseModifyRecord.cmrServiceNumber);
                        return false;
                    }
                    if (vm.caseModifyRecord.cmrSolution == '' || vm.caseModifyRecord.cmrSolution == null || vm.caseModifyRecord.cmrSolution == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                    if (vm.caseModifyRecord.cmrReason == '' || vm.caseModifyRecord.cmrReason == null || vm.caseModifyRecord.cmrReason == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                } else if (vm.caseModifyRecord.cmrType == '1') {
                    //外勤退回
                    url = "../casedispatch/outsideCancel";
                    if (vm.caseModifyRecord.cmrReason == '' || vm.caseModifyRecord.cmrReason == null || vm.caseModifyRecord.cmrReason == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                } else if (vm.caseModifyRecord.cmrType == '10') {
                    //转咨询
                    url = "../casedispatch/transService";
                    if (vm.caseModifyRecord.cmrReason == '' || vm.caseModifyRecord.cmrReason == null || vm.caseModifyRecord.cmrReason == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                } else if (vm.caseModifyRecord.cmrType == '8') {
                    //客户撤案
                    url = "../casedispatch/cancel";
                    if (vm.caseModifyRecord.cmrReason == '' || vm.caseModifyRecord.cmrReason == null || vm.caseModifyRecord.cmrReason == undefined) {
                        iview.Message.error('请填写完整信息!');
                        return false;
                    }
                    vm.caseModifyRecord.cmrType =6;
                }
                vm.caseModifyRecord.cmrNcId=vm.dispatchInfo.cdNcId;
                vm.caseModifyRecord.cmrDispatchEmpId=vm.dispatchInfo.cdDispatchEmpId;
                vm.caseModifyRecord.cmrTechnicalEmpId=vm.dispatchInfo.cdTechnicalEmpId;
                vm.caseModifyRecord.refId=vm.dispatchInfo.cdId;
                Ajax.request({
                    url: url,
                    params: JSON.stringify(vm.caseModifyRecord),
                    type: "POST",
                    contentType: "application/json",
                    successCallback: function (r) {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    }
                });

            });
        },
        updateSolution: function(name) {

            handleSubmitValidate(this, name, function () {
                vm.caseModifyRecord.cmrExt = 'Y';
                Ajax.request({
                    url: "../casemodifyrecord/update",
                    params: JSON.stringify(vm.caseModifyRecord),
                    type: "POST",
                    contentType: "application/json",
                    successCallback: function (r) {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    }
                });
            });
        },
        updateSolutionTag: function(event, name) {
            console.log("updateSolutionTag ");
            vm.disabledCmrSolution = !vm.disabledCmrSolution;
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
                cache: true,
                successCallback: function (r) {

                    vm.customers = r.list;
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
                async: true,
                successCallback: function (r) {
                    vm.customer = r.customer;
                }
            });
        },
        getStaffList:function () {
            Ajax.request({
                url: "../sys/staff/queryListAll/",
                async: true,
                cache: true,
                successCallback: function (r) {
                    vm.staffList = r.list;
                }
            });
        },
        /*获取调度信息*/
        getDispatchInfo:function (ncId) {
            Ajax.request({
                url: "../casedispatch/infoByNcId/" + ncId,
                async: true,
                successCallback: function (r) {
                    vm.dispatchInfo = r.dispatchInfo;
                }
            });
        },
        getCancelInfoList:function (ncId) {

            Ajax.request({
                url: "../casemodifyrecord/queryAll",
                async: true,
                params: {cmrNcId:ncId,cmrTypeList:'5,6'},
                contentType: "application/json",
                successCallback: function (r) {
                    vm.data1=r.list;
                }
            });
        },
        getCompleteInfo:function (ncId) {

            Ajax.request({
                url: "../casemodifyrecord/queryAll",
                async: true,
                params: {cmrNcId:ncId,cmrTypeList:'4,9'},
                contentType: "application/json",
                successCallback: function (r) {
                    vm.caseModifyRecord=r.list[0];
                    if (vm.caseModifyRecord.cmrExt == 'Y') {
                        vm.disabledCmrSolution = true;
                        vm.showUpdateSolution = false;
                        vm.ruleValidate_updateSolution.cmrSolution = [];
                    } else {
                        vm.disabledCmrSolution = true;
                        vm.showUpdateSolution = true;
                        vm.ruleValidate_updateSolution.cmrSolution =
                            [{required: true,type: 'string', message: '解决方案不能为空', trigger: 'blur'}];
                    }
                }
            });
        },
        change_cmrType:function (value) {

            let cmrReason  = [{required: true,type: 'string', message: '原因不能为空', trigger: 'blur'}];
            let cmrServiceNumber  = [{required: true,type: 'string', message: '服务单号不能为空', trigger: 'blur'},{ validator: validateServiceNumber,trigger: 'blur' }];
            let cmrSolution  = [{required: true,type: 'string', message: '解决方案不能为空', trigger: 'blur'}];

            if (value == '4') {
                //结案
                vm.ruleValidate.cmrServiceNumber = cmrServiceNumber;
                vm.ruleValidate.cmrSolution = cmrSolution;
                vm.ruleValidate.cmrReason = [];
            } else if (value == '5') {
                //结案并转单
                vm.ruleValidate.cmrServiceNumber = cmrServiceNumber;
                vm.ruleValidate.cmrSolution = cmrSolution;
                vm.ruleValidate.cmrReason = [{required: true,type: 'string', message: '案件描述不能为空', trigger: 'blur'}];
                vm.cmrReasonShowName = '案件描述';
            } else if (value == '1') {
                //外勤退回
                vm.ruleValidate.cmrServiceNumber = [];
                vm.ruleValidate.cmrSolution = [];
                vm.ruleValidate.cmrReason = cmrReason;
                vm.cmrReasonShowName = '原因';
            } else if (value == '10') {
                //转咨询
                vm.ruleValidate.cmrServiceNumber = [];
                vm.ruleValidate.cmrSolution = [];
                vm.ruleValidate.cmrReason = cmrReason;
                vm.cmrReasonShowName = '原因';
            } else if (value == '8') {
                //客户撤案
                vm.ruleValidate.cmrServiceNumber = [];
                vm.ruleValidate.cmrSolution = [];
                vm.ruleValidate.cmrReason = cmrReason;
                vm.cmrReasonShowName = '原因';
            }
            resetFields(this,'caseModifyRecord','cmrServiceNumber,cmrSolution,cmrReason');
            //handleResetForm(this, 'caseModifyRecord');
            /*refreshValidateRule(this, name, function () {
            });*/
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
                    vm.caseTypeList = r.list;
                }
            });
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
                    console.log("命中记录数" + vm.customerOptions.length);
                }, 200);
            } else {
                vm.customerOptions = [];
                vm.q.ncCuName = '';
                console.log("命中记录数 : 0");
            }
        }

    }
});