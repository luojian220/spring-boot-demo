$(function () {

    var opt = getQueryString('opt');
    var act = getQueryString('act');

    if (opt != null && opt == 'query') {
        vm.queryBtn = true;
        vm.dispatchBtn = false;
        vm.dispatchBackBtn = false;
        vm.cancelBtn=false;
        vm.againBtn=false;
    } else if (opt != null && opt == 'manage') {
        vm.queryBtn = true;
        vm.dispatchBtn = false;
        vm.dispatchBackBtn = false;
        vm.cancelBtn=true;
        vm.againBtn=false;
    } else if (opt != null && opt == 'dispatch') {
        if (act != null && act != undefined && act == 'done') {
            vm.queryBtn = true;
            vm.dispatchBtn = false;
            vm.dispatchBackBtn = false;
            vm.cancelBtn=true;
            vm.showCaseStatusCondition =false;
            vm.q.ncCaseState=3;
            vm.q.ncCaseStateList = '';
            
        } else {
            vm.queryBtn = true;
            vm.dispatchBtn = true;
            vm.dispatchBackBtn = true;
            vm.cancelBtn=false;
        }
    }

    vm.q.beginTime = getOneMonthBeforeTime();
    vm.q.endTime = getOneMonthAfterTime();

    $("#jqGrid").Grid({
        url: '../newcase/list',
        postData:{'ncCuName': vm.q.ncCuName,'ncNumber':vm.q.ncNumber,
            'ncCaseType':vm.q.ncCaseType,'beginTime':vm.q.beginTime,
            'endTime':vm.q.endTime,'ncCaseState':vm.q.ncCaseState,'ncCaseStateList':vm.q.ncCaseStateList},
        colModel: [
			{label: 'ncId', name: 'ncId', index: 'nc_id', key: true, hidden: true},
			{label: '案件编号', name: 'ncNumber', index: 'nc_number', width: 80,formatter:transferBillImg},
			{label: '客户id', name: 'ncCuId', index: 'nc_cu_id', width: 80, hidden: true},
			{label: '客户编号', name: 'ncCuNumber', index: 'nc_cu_number', width: 70, hidden: true},
//            {label: '转单', name: 'ncIsTransfer', index: 'nc_is_transfer', width: 30,formatter: function (value) {
//                    if (1 === value) {
//                        return "是"
//                    } else {
//                        return "否"
//                    }
//                }},
			{label: '客户名称', name: 'ncCuName', index: 'nc_cu_name', width: 120},
            {label: '案件类型', name: 'ncCaseType', index: 'nc_case_type', width: 60},
			{label: '联系人', name: 'ncContactPerson', index: 'nc_contact_person', width: 55},
			{label: '联系电话', name: 'ncContactPhone', index: 'nc_contact_phone', width: 80},
			{label: '案件状态', name: 'ncCaseState', index: 'nc_case_state', width: 55,formatter: function(value) {
                    return transCaseStat(value);
				}},
			{label: '默认状态', name: 'ncDefaultState', index: 'nc_default_state', width: 80,hidden: true},
			{label: '设备配置', name: 'ncMachineConfig', index: 'nc_machine_config', width: 80, hidden: true},
			{label: '是否评价', name: 'ncIsReview', index: 'nc_is_review', width: 80,hidden: true},
			{label: '是否多人任务', name: 'ncIsManyTask', index: 'nc_is_many_task', width: 80,hidden: true},
            {label: '客户地址', name: 'ncAddress', index: 'nc_address', width: 120},
			{label: '报修人empId', name: 'ncAddEmpId', index: 'nc_add_emp_id', width: 80,hidden: true},
			{label: '报修人', name: 'ncAddEmpName', index: 'nc_add_emp_name', width: 50 },
			{label: '负责人', name: 'cdTechnicalName', index: 'cdTechnicalName', width: 50,hidden: true},
			{label: '报修时间', name: 'ncAddTime', index: 'nc_add_time', width: 80,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '更新人名称', name: 'ncUpEmpName', index: 'nc_up_emp_name', width: 80,hidden: true},
			{label: '更新时间', name: 'ncUpTime', index: 'nc_up_time', width: 80,hidden: true,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '上门时间', name: 'ncTaskTime', index: 'nc_task_time', width: 80,formatter: function (value) {
                    return transDate(value);
                }},
			{label: '更新备注', name: 'ncRemark', index: 'nc_remark', width: 80,hidden: true},
			{label: '', name: 'ncOpenNumber', index: 'nc_open_number', width: 80,hidden: true},
			{label: '', name: 'ncOpenName', index: 'nc_open_name', width: 80,hidden: true},
			{label: '', name: 'ncOpenTime', index: 'nc_open_time', width: 80,hidden: true}]
    });

    if( vm.q.ncCaseState==3){
    	$("#jqGrid").setGridParam().hideCol("ncAddEmpName");
    	$("#jqGrid").setGridParam().showCol("cdTechnicalName");
    }else{
    	$("#jqGrid").setGridParam().showCol("ncAddEmpName");
    	$("#jqGrid").setGridParam().hideCol("cdTechnicalName");
    }
    
    vm.getCustomers();
    vm.getStaffList();
    //vm.getCaseTypeList("报案类型");
    vm.getCaseTypeList("IT报案类型");
    let caseTypeListTemp = vm.caseTypeList;
    vm.getCaseTypeList("工程报案类型");
    caseTypeListTemp = caseTypeListTemp.concat(vm.caseTypeList);
    vm.caseTypeList = caseTypeListTemp;
});

let vm = new Vue({
	el: '#rrapp',
	data: {
        showList: true,
        title: null,
		newCase: {},
        customers : [],
        dispatchInfo : {
            cdTaskTime:'',
            charges:[]
        },
        dispatchInfo_cancel:{},
        staffList:[],
        /*formValidate:{
            cdTaskTime:'',
            charges:[]
        },*/
		ruleValidate: {
            cdTaskTime: [
				{required: true,type: 'date', message: '任务上门时间不能为空', trigger: 'change'}
			],
            charges: [
                {required: true,type: 'array', min: 1, message: '案件负责人不能为空', trigger: 'change'}
            ]
		},
        ruleValidate_cancel: {
            cmrReason: [
                {required: true,type: 'string', message: '取消原因不能为空', trigger: 'blur'}
            ]
        },
		q: {
		    name: '',
            ncCaseStateList:'0,1'//'0,1,2'
		},
        queryBtn: false,
        dispatchBtn:false,
        dispatchBackBtn:false,
        cancelBtn:false,
        againBtn:false,
        showList_dis_info:false,
        showList_dispatch:false,
        /*取消调度表示*/
        showCancelFlag:false,
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
        caseModifyRecord:{},
        caseTypeList:[],
        loadingFilterCuName:false,
//        customerOptions:[],
        showCaseStatusCondition:true,
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
            vm.newCase.ncTaskTime  =new Date(vm.newCase.ncTaskTime);
            vm.getDispatchInfo(ncId);
            vm.dispatchInfo_cancel.cdTaskTime=new Date( vm.dispatchInfo_cancel.cdTaskTime);
            // 取消信息列表
            vm.getCancelInfoList(ncId);

        },
        dispatch: function (event) {
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }
            //只有未调度的案件，才允许调度
            var rowData = $("#jqGrid").jqGrid('getRowData',ncId);
            if (rowData && (rowData.ncCaseState != '未调度')) {
                if (rowData.ncCaseState != '调度退回' && rowData.ncCaseState != '外勤退回') {
                    iview.Message.error("案件不允许重复调度，请确认！" );
                    return;
                }
            }
            vm.showList = false;
            vm.showList_dispatch = true;
            vm.showList_dis_info = false;
            vm.title = "案件信息";

            vm.getInfo(ncId);
            vm.newCase.ncTaskTime  =new Date(vm.newCase.ncTaskTime);
            // 取消信息列表
            vm.getCancelInfoList(ncId);
            var nowdate = new Date();
            var defaultTaskTime = vm.newCase.ncTaskTime;
            if (nowdate.getTime() > vm.newCase.ncTaskTime) {
                defaultTaskTime = getWorkTime();
            }
            vm.dispatchInfo.cdTaskTime = new Date(defaultTaskTime);
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

                    });
                    vm.reload();
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
//            if (rowData && rowData.ncCaseState != '未调度') {
//                iview.Message.error("案件状态不允许注销，请确认！" );
//                return;
//            }
            confirm('确定要注销选中的案件？', function () {
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
        cancel: function(event){
            let ncId = getSelectedRow("#jqGrid");
            if (ncId == null) {
                return;
            }
            //只有未调度的案件，才允许调度退回
            var rowData = $("#jqGrid").jqGrid('getRowData',ncId);
            if (rowData && rowData.ncCaseState != '已调度') {
                iview.Message.error("案件状态不允许取消，请确认！" );
                return;
            }
            vm.showList = false;
            vm.showList_dispatch = false;
            vm.showList_dis_info = true;
            vm.showCancelFlag = true;
            vm.title = "案件信息";
            vm.getInfo(ncId);
            vm.newCase.ncTaskTime  =new Date(vm.newCase.ncTaskTime);
            vm.getDispatchInfo(ncId);
            vm.dispatchInfo_cancel.cdTaskTime=new Date( vm.dispatchInfo_cancel.cdTaskTime);
        },
		getInfo: function(ncId){
            Ajax.request({
                url: "../newcase/info/"+ncId,
                async: false,
                successCallback: function (r) {
                    vm.newCase = r.newCase;
                }
            });
		},
		reload: function (event) {
			vm.showList = true;
            vm.showList_dispatch = false;
            vm.showList_dis_info = false;
            vm.handleReset('dispatchInfo');
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            page = 1;
            
            var qncCuName =vm.q.ncCuName;
            if (!(qncCuName == null || qncCuName === undefined || qncCuName === '')) {
            	qncCuName = qncCuName.split("_")[0];
            }
            
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'ncCuName': qncCuName,'ncNumber':vm.q.ncNumber,
					'ncCaseType':vm.q.ncCaseType,'beginTime':vm.q.beginTime,
                    'endTime':vm.q.endTime,'ncCaseState':vm.q.ncCaseState,'ncCaseStateList':vm.q.ncCaseStateList},
                page: page
            }).trigger("reloadGrid");

            vm.dispatchInfo_cancel = {};
            vm.caseModifyRecord = {};
            vm.data1 = [];
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
            handleSubmitValidate(this, name, function () {
                vm.saveOrUpdate()
            });
        },
        handleReset: function (name) {
            handleResetForm(this, name);
        },
        /**
         * 取消调度
         */
        dispatch_cancel: function (name) {
            handleSubmitValidate(this, name, function () {
                let url = "../casedispatch/cancel";
                vm.caseModifyRecord.cmrNcId=vm.dispatchInfo_cancel.cdNcId;
                vm.caseModifyRecord.cmrDispatchEmpId=vm.dispatchInfo_cancel.cdDispatchEmpId;
                vm.caseModifyRecord.cmrTechnicalEmpId=vm.dispatchInfo_cancel.cdTechnicalEmpId;
                vm.caseModifyRecord.refId=vm.dispatchInfo_cancel.cdId;
                vm.caseModifyRecord.cmrType=5;
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
        /*客户撤案*/
        dispatch_cancel_client: function (name) {
            handleSubmitValidate(this, name, function () {
                let url = "../casedispatch/cancel";
                vm.caseModifyRecord.cmrNcId=vm.dispatchInfo_cancel.cdNcId;
                vm.caseModifyRecord.cmrDispatchEmpId=vm.dispatchInfo_cancel.cdDispatchEmpId;
                vm.caseModifyRecord.cmrTechnicalEmpId=vm.dispatchInfo_cancel.cdTechnicalEmpId;
                vm.caseModifyRecord.refId=vm.dispatchInfo_cancel.cdId;
                vm.caseModifyRecord.cmrType=6;
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
                    vm.newCase.ncAddress = r.customer.cuAddress;
                    vm.newCase.ncContactPerson = r.customer.cuContact;
                    vm.newCase.ncContactPhone = r.customer.cuContactPhone;
                }
            });
        },
        getStaffList:function () {
            Ajax.request({
                url: "../sys/staff/queryListAll/",
                async: true,
                successCallback: function (r) {
                    vm.staffList = r.list;
                }
            });
        },
        /*获取调度信息*/
        getDispatchInfo:function (ncId) {
            Ajax.request({
                url: "../casedispatch/infoByNcId/" + ncId,
                async: false,
                successCallback: function (r) {
                    vm.dispatchInfo_cancel = r.dispatchInfo;
                }
            });
        },
        getCancelInfoList:function (ncId) {

            Ajax.request({
                url: "../casemodifyrecord/queryAll",
                async: false,
                params: {cmrNcId:ncId,cmrTypeList:'5,6'},
                contentType: "application/json",
                successCallback: function (r) {
                    vm.data1=r.list;
                }
            });
        },
        // 获取字典
        getCaseTypeList: function(value) {

            Ajax.request({
                url: "../sys/macro/queryListByName",
                params: {
                    name: value,
                },
                async: false,
                cache: true,
                successCallback: function (r) {
                    vm.caseTypeList = r.list;
                }
            });
        },
/*        filterCuName: function (query) {
            vm.customerOptions = [];
            if (query !== undefined && query !== null && query !== '') {
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
                    console.log("命中记录数" + vm.customerOptions.length );
                }, 300);
            } else {
                vm.customerOptions = [];
                vm.q.ncCuName = '';
                console.log("命中记录数 : 0");
            }
        }*/
	}
});