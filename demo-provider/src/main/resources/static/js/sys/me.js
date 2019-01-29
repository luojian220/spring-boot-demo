$(function () {
    Ajax.request({
        url: "../sys/user/detail/",
        async: true,
        successCallback: function (r) {
            vm.user = r.user;
        }
    });

});

var vm = new Vue({
    el: '#rrapp',
    data: {
        user: {}
    }
});