$(function () {

    var vip = getQueryString('vip');
    if (vip != null && vip != undefined && vip == 'true') {
        vm.vipCustomerManage = true;
    }

    $("#jqGrid").Grid({
        url: '../customer/list',
        postData:{'vipCustomerManage':vm.vipCustomerManage},
        colModel: [
            {label: 'cuId', name: 'cuId', index: 'cu_id', key: true, hidden: true},
            {label: '客户编号', name: 'cuNumber', index: 'cu_number', width: 80},
            {label: '客户名称', name: 'cuName', index: 'cu_name', width: 120,hidden:true},
            {label: '客户简称', name: 'cuSimpleName', index: 'cu_simple_name', width: 80,formatter:transVipImg},
            {label: '拼音名称', name: 'cuPyName', index: 'cu_py_name', width: 80,hidden:true},
            {label: '拼音简称', name: 'cuSimplePyName', index: 'cu_simple_py_name', width: 80,hidden:true},
            {label: '电话', name: 'cuPhone', index: 'cu_phone', width: 80},
            {label: '地址', name: 'cuAddress', index: 'cu_address', width: 80,hidden:true},
            {label: '联系人', name: 'cuContact', index: 'cu_contact', width: 80},
            {label: '联系人手机', name: 'cuContactPhone', index: 'cu_contact_phone', width: 80},
            {label: '传真', name: 'cuFax', index: 'cu_fax', width: 80,hidden:true},
            {label: '邮政编码', name: 'cuZipCode', index: 'cu_zip_code', width: 80,hidden:true},
            {label: '网址', name: 'cuUrl', index: 'cu_url', width: 80,hidden:true},
            {label: '邮箱', name: 'cuEmail', index: 'cu_email', width: 80,hidden:true},
            {label: '负责人', name: 'cuPrincipal', index: 'cu_principal', width: 80,hidden:true},
            {label: '负责人电话', name: 'cuPrincipalPhone', index: 'cu_principal_phone', width: 80,hidden:true},
            {label: '来源', name: 'cuSource', index: 'cu_source', width: 80,hidden:true},
            {label: '状态', name: 'cuState', index: 'cu_state', width: 80,hidden:true},
//            {label: '是否vip', name: 'cuIsVip', index: 'cu_is_vip', width: 80,formatter:transVipImg},
            {label: '合同开始时间', name: 'cuContractBeginTime', index: 'cu_contract_begin_time', width: 80,hidden:true,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '合同结束时间', name: 'cuContractEndTime', index: 'cu_contract_end_time', width: 80,hidden:true,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '销售人员', name: 'cuMarketEmpId', index: 'cu_add_emp_id', width: 80,hidden:true},
            {label: '创建人编号', name: 'cuAddEmpNumber', index: 'cu_add_emp_number', width: 80,hidden:true},
            {label: '创建时间', name: 'cuAddTime', index: 'cu_add_time', width: 80,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '更新人编号', name: 'cuUpEmpNumber', index: 'cu_up_emp_number', width: 80,hidden:true},
            {label: '更新时间', name: 'cuUpTime', index: 'cu_up_time', width: 80,hidden:true,formatter: function (value) {
                    return transDate(value);
                }},
            {label: '备注', name: 'cuRemark', index: 'cu_remark', width: 80}]
    });
    //vm.getEmployees();
    vm.getStaffList();
    vm.getSourceList("客户来源");
    vm.getCustomers();

});

let vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        title: null,
        customer: {
            cuIsVip:'0',
            address:[ {
                            caId: '',
                            caCuId:'',
                            caAddress:'',
                            flag:1
                        }],
            contact:[ {
                ccId: '',
                ccCuId:'',
                ccContact:'',
                ccPhone:'',
                flag:1  //0原数据1追加数据
            }],
            caIdDelList:[],
            ccIdDelList:[]
        },
        staffList:{},
        ruleValidate: {
            cuName: [
                {required: true, message: '客户名称不能为空', trigger: 'blur'}
            ],
            cuSimpleName: [
                {required: true, message: '客户简称不能为空', trigger: 'blur'}
            ],
            cuAddress: [
                {required: true, message: '客户地址不能为空', trigger: 'blur'}
            ],
            cuPhone: [
                {required: true, message: '联系电话不能为空', trigger: 'blur'}
            ],
            cuContact: [
                {required: true, message: '联系人不能为空', trigger: 'blur'}
            ],
            cuContactPhone: [
                {required: true, message: '联系人手机不能为空', trigger: 'blur'}
            ],
            cuContractBeginTime: [
                {required: true,type: 'date', message: '合同开始时间不能为空', trigger: 'change'}
            ],
            cuContractEndTime: [
                {required: true,type: 'date', message: '合同结束时间不能为空', trigger: 'change'}
            ],
            cuMarketEmpId: [
                {required: true,type: 'string', message: '销售负责人不能为空', trigger: 'change'}
            ]
        },
        q: {
            name: ''
        },
        employees : [],
        cuSourceList : [],
        vipCustomerManage:false,
        loadingFilterCuName:false,
        customerOptions:[]
    },
    methods: {
    	addressAdd:function () {
                vm.customer.address.push( {
                            caId: '',
                            caCuId:'',
                            caAddress:'',
                            flag:1
                        });
            },
     addressRemove:function (index) {
     		let actFlag=vm.customer.address[index].flag;
               if(actFlag !=1){
               	vm.customer.caIdDelList.push(vm.customer.address[index].caId);
               }
               vm.customer.address.splice(index,1);
            },
     contactAdd:function () {
                vm.customer.contact.push({
                ccId: '',
                ccCuId:'',
                ccContact:'',
                ccPhone:'',
                flag:1
            });
            },
     contactRemove:function (index) {
     	let actFlag=vm.customer.contact[index].flag;
               if(actFlag!=1){
               	vm.customer.ccIdDelList.push(vm.customer.contact[index].ccId);
               }
               vm.customer.contact.splice(index,1);
            },
        query: function () {
            vm.reload();
        },
        add: function () {
            vm.showList = false;
            vm.title = "新增";
            vm.customer = {
            	address:[ {
                            caId: '',
                            caCuId:'',
                            caAddress:'',
                            flag:1
                        }],
            contact:[ {
                ccId: '',
                ccCuId:'',
                ccContact:'',
                ccPhone:'',
                flag:1
            }],
            caIdDelList:[],
            ccIdDelList:[]
            };
        },
        update: function (event) {
            let cuId = getSelectedRow("#jqGrid");
            if (cuId == null) {
                return;
            }
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(cuId);
        },
        saveOrUpdate: function (event) {
            let url = vm.customer.cuId == null ? "../customer/save" : "../customer/update";
            Ajax.request({
                url: url,
                params: JSON.stringify(vm.customer),
                type: "POST",
                contentType: "application/json",
                successCallback: function (r) {
                    alert('操作成功', function (index) {
                        vm.reload();
                    });
                    vm.reload();
                }
            });
        },
        del: function (event) {
            let cuIds = getSelectedRows("#jqGrid");
            if (cuIds == null){
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                Ajax.request({
                    url: "../customer/delete",
                    params: JSON.stringify(cuIds),
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
        getInfo: function(cuId){
            Ajax.request({
                url: "../customer/info/"+cuId,
                async: true,
                successCallback: function (r) {
                    vm.customer = r.customer;
                    if (r.customer.cuIsVip == 1) {
                        vm.customer.cuIsVip = '1';
                    }
                    if (r.customer.cuContractBeginTime != null && r.customer.cuContractBeginTime != undefined) {
                        vm.customer.cuContractBeginTime = new Date(r.customer.cuContractBeginTime);
                    }
                    if (r.customer.cuContractEndTime != null && r.customer.cuContractEndTime != undefined) {
                        vm.customer.cuContractEndTime = new Date(r.customer.cuContractEndTime);
                    }

                }
            });
        },
        reload: function (event) {
            vm.showList = true;
            vm.customer = {cuIsVip:'0'};
            let page = $("#jqGrid").jqGrid('getGridParam', 'page');
            page = 1;
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'cuName': vm.q.name,'cuIsVip':vm.q.cuIsVip,'cuMarketEmpId':vm.q.cuMarketEmpId,
                    'vipCustomerManage':vm.vipCustomerManage},
                page: page
            }).trigger("reloadGrid");
            vm.handleReset('customer');
        },
        reloadSearch: function() {
            vm.q = {
                name: ''
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
        getStaffList:function () {
            Ajax.request({
                url: "../sys/staff/queryListAllSale/",
                async: true,
                successCallback: function (r) {
                    vm.staffList = r.list;
                }
            });
        },
        // 获取字典
        getSourceList: function(value) {

            Ajax.request({
                url: "../sys/macro/queryListByName",
                params: {
                    name: value,
                },
                async: true,
                successCallback: function (r) {
                    vm.cuSourceList = r.list;
                }
            });
        },
        change_cuIsVip:function (value) {
            let cuContractBeginTimeRule  = [{required: true,type: 'date', message: '合同开始时间不能为空', trigger: 'change'}];
            let cuContractEndTimeRule  = [{required: true,type: 'date', message: '合同结束时间不能为空', trigger: 'change'}];

            if (value == 1) {
                vm.ruleValidate.cuContractBeginTime = cuContractBeginTimeRule;
                vm.ruleValidate.cuContractEndTime = cuContractEndTimeRule;
            } else {
                vm.ruleValidate.cuContractBeginTime = [];
                vm.ruleValidate.cuContractEndTime = [];            }
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

                }, 200);
            } else {
                vm.customerOptions = [];
            }
            console.log("命中记录数" + vm.customerOptions.length);
        }
    }
});