$(function () {

    // 获取请求参数
    // 判断是否展示 数据操作按钮
    var opt = getQueryString('opt');
    var vip = getQueryString('vip');
    var type = getQueryString('type');


    if (vip != null && vip.trim() != '') {
        vm.q.vip = vip;
    }
    if (type != null && type.trim() != '') {
        vm.q.type = type;
    }
    if (opt != null && opt == 'query') {
        vm.onlyQuery = false;
    } else if (opt != null && opt == 'manage') {
        vm.cancelBtnFlag = true;
        vm.saveBtnFlag = false;
    } else if (opt != null && opt == 'cancel') {
        vm.cancelFlag = false;
        vm.updateBtnFlag = false;
        vm.deleteBtnFlag = false;
        vm.saveBtnFlag = false;
        vm.reportBtnFlag = true;
        vm.q.ncCaseState = '6';
    } else {
        vm.add();
    }

    vm.getCustomers();
    if (vm.q.type == '1' || vm.q.type == 1) {
        vm.getSysMacro("IT报案类型");
    } else if (vm.q.type == '2') {
        vm.getSysMacro("工程报案类型");
    } else {
        vm.getSysMacro("IT报案类型");
        let caseTypeListTemp = vm.caseTypeList;
        vm.getSysMacro("工程报案类型");
        caseTypeListTemp = caseTypeListTemp.concat(vm.caseTypeList);
        vm.caseTypeList = unique_typeName(caseTypeListTemp);
    }

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
        q: {
            name: '',
            vip : '' ,
            type : '',
            ncCaseState:'',
            ncCaseTypeList: []
        },
        ruleValidate: {
            ncCuId: [
                {required: true, message: '报修客户不能为空', trigger: 'change'}
            ],
            ncAddress: [
                {required: true, message: '报修地址不能为空', trigger: 'blur'}
            ],
            ncContactPerson: [
                {required: true, message: '联系人不能为空', trigger: 'blur'}
            ],
            ncContactPhone: [
                {required: true, message: '联系电话不能为空', trigger: 'blur'}
            ],
            ncTaskTime: [
                {required: true,type: 'date', message: '上门时间不能为空', trigger: 'change'}
            ],
            ncCaseTypeList:[
                /*{required: true, type: 'array', min: 1, message: '案件类型不能为空', trigger: 'change'}*/
                { required: true, type: 'array', min: 1, message: '案件类型最少选一个', trigger: 'change' },
                { type: 'array', max: 3, message: '案件类型最多选三个', trigger: 'change' }
            ],
            ncRemark:[
                {required: true, message: '案件描述不能为空', trigger: 'blur'}
            ]/*,
            ncCuId: [
                {required: true, message: '报修客户不能为空', trigger: 'change'}
            ]*/
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

			if (vm.q.type == '1' || vm.q.type == 1) {
                if (vm.q.vip == '1' ) {
                    vm.title = "IT服务-VIP报案";
                } else {
                    vm.title = "IT服务-非VIP报案";
                }
            } else if (vm.q.type == '2') {
                if (vm.q.vip == '1' ) {
                    vm.title = "弱电维保-VIP报案";
                } else {
                    vm.title = "弱电维保-非VIP报案";
                }
            } else {
                vm.title = "项目报案";
            }
			vm.newCase = {};
			vm.newCase.ncTaskTime =getWorkTime();

		},
		saveOrUpdate: function (event) {
            let url = vm.newCase.ncId == null ? "../newcase/save" : "../newcase/update";
            vm.newCase.ncType = vm.q.type;
            var qncCuId =vm.newCase.ncCuId;
            if (!(qncCuId == null || qncCuId === undefined || qncCuId === '')) {
            	vm.newCase.ncCuId = qncCuId.split("_")[0];
            }
            Ajax.request({
			    url: url,
                params: JSON.stringify(vm.newCase),
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
		reload: function (event) {
            vm.showList = false;
            vm.newCase = {};
//            vm.newCase.ncTaskTime = new Date(new Date().getTime() + 2 * 3600 * 1000);

            vm.contactUnion='';
            vm.newCase.ncTaskTime =getWorkTime();
            vm.handleReset('newCase');
		},
        reloadSearch: function() {
            vm.q = {
                ncCuName: '',
                ncNumber:'',
                beginTime:null,
                endTime:null
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
        /**
		 * 根据选择的客户，填充地址 /联系人 /电话
         */
        find_cus_info: function (value) {

            if (value == null || value === undefined || value === '') {
                return;
            }
            var value = value.split("_")[0];
            if ( vm.title == '修改') {
                return ;
            }
            Ajax.request({
                url: "../customer/info/" + value,
                async: false,
                successCallback: function (r) {
//                    console.log(r.customer.cuAddress + "  " + r.customer.cuContact + "  " + r.customer.cuContactPhone);
                    vm.newCase.ncAddress = r.customer.cuAddress;
                    vm.newCase.ncContactPerson = r.customer.cuContact;
                    vm.newCase.ncContactPhone = r.customer.cuContactPhone;
                    
                    vm.contactUnion=r.customer.cuContact + "_" + r.customer.cuContactPhone;
                    vm.address = r.customer.address;
                    vm.contact = r.customer.contact;
//                    vm.newCase.ncAddress = '';
//                    vm.newCase.ncContactPerson = '';
//                    vm.newCase.ncContactPhone ='';
//                    vm.contactUnion='';
                    
                    
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
        changeCaseType: function(value) {

            if (value.length === 1) {
                let arr = vm.caseTypeList.filter(e => (e.name === value[0]));
                console.log("模版：" + arr[0].template);
                vm.newCase.ncRemark = arr[0].template;
            }
            console.log("改变案件类型" + value + " " + value.length);

        },
        // 获取字典
        getSysMacro: function(value) {

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
        }
	}
});