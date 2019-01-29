$(function () {

    var vip = getQueryString('vip');
    if (vip != null && vip != undefined && vip == 'true') {
        vm.vipCustomerManage = true;
    }



});

let vm = new Vue({
    el: '#rrapp',
    data: {
        showList: true,
        title: null,
        file: null,
        loadingStatus: false,
        ruleValidate: {
            cuName: [
                {required: true, message: '客户名称不能为空', trigger: 'blur'}
            ]
        },
        columns1: [
            {
                title: '客户名称',
                key: 'cuName'
            },
            {
                title: '客户简称',
                key: 'cuSimpleName'
            },
            {
                title: '电话',
                key: 'cuPhone'
            },
            {
                title: '地址',
                key: 'cuAddress'
            },
            {
                title: '联系人',
                key: 'cuContact'
            },
            {
                title: '联系人电话',
                key: 'cuContactPhone'
            },
            {
                title: '负责人',
                key: 'cuPrincipal'
            },
            {
                title: '负责人电话',
                key: 'cuPrincipalPhone'
            },
            {
                title: '是否VIP',
                key: 'cuIsVip'
            },
            {
                title: '合同开始时间',
                key: 'cuContractBeginTime'
            },
            {
                title: '合同终止时间',
                key: 'cuContractEndTime'
            },
            {
                title: '销售负责人',
                key: 'cuMarketEmpId'
            },
            {
                title: '备注',
                key: 'cuRemark'
            }
        ],
        data1: []
    },
    methods: {
        handleUpload (file) {
            this.file = file;
            return false;
        },
        upload () {
            this.loadingStatus = true;
            setTimeout(() => {
                // 上传文件

                this.file = null;
                this.loadingStatus = false;
                this.$Message.success('上传成功')
            }, 1500);
        },
        handleFormatError: function (file) {
            this.$Notice.warning({
                title: '文件格式不正确',
                desc: '文件 ' + file.name + ' 格式不正确，请上传 xsl 或 xlsx 格式的图片。'
            });
        },
        handleMaxSize: function (file) {
            this.$Notice.warning({
                title: '超出文件大小限制',
                desc: '文件 ' + file.name + ' 太大，不能超过 2M。'
            });
        },
        handleError (event, file) {
            this.$Notice.error({
                title: '文件上传失败',
                desc: '文件 ' + file.name + ' 上传失败。'
            });
        },
        handleSuccess (response, file, fileList) {
            console.log("执行成功！");
            if (0 === response.code) {
                response.list.forEach(function (item, index) {
                    item.cuContractBeginTime = transDate(item.cuContractBeginTime,'yyyy-MM-dd');
                    item.cuContractEndTime = transDate(item.cuContractEndTime,'yyyy-MM-dd');
                });
                vm.data1 = response.list;
            } else {
                this.$Message.error("上传失败" + response.msg)
            }
        }
    }
});