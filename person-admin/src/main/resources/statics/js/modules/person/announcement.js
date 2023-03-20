$(function () {

    $("#jqGrid").jqGrid({
        url: baseURL + 'person/announcement/list',
        datatype: "json",
        colModel: [
            {label: '主键', name: 'id', index: "id", width: 45, key: true, hidden: true},
            {label: '公告名称', name: 'name', width: 75},
            {label: '公告内容', name: 'content', width: 75},
            {label: '发布人', name: 'createUser', width: 75},
            {label: '发布时间', name: 'createTime', width: 75},
            {label: '最后编辑时间', name: 'updateTime', width: 75}
        ],
        viewrecords: true,
        height: 385,
        rowNum: 10,
        rowList: [10, 30, 50],
        rownumbers: true,
        rownumWidth: 25,
        autowidth: true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader: {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames: {
            page: "page",
            rows: "limit",
            order: "order"
        },
        gridComplete: function () {
            //隐藏grid底部滚动条
            $("#jqGrid").closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        }
    });
});
var setting = {
    data: {
        simpleData: {
            enable: true,
            idKey: "deptId",
            pIdKey: "parentId",
            rootPId: -1
        },
        key: {
            url:"nourl"
        }
    }
};
var ztree;

var vm = new Vue({
    el: '#rrapp',
    data: {
        q: {},
        showList: true,
        title: null,
        announcement: {},
        deptId: null,
        deptName: null,
        users: [],
        user: {}
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            vm.showList = false;
            vm.title = "新增";
            vm.announcement = {status: 0};
            vm.getUsers();
        },
        update: function () {
            var id = getSelectedRow();
            if (id == null) {
                return;
            }

            vm.showList = false;
            vm.title = "修改";

            vm.getRecord(id);
        },
        getUsers: function () {
            $.get(baseURL + "sys/user/users" , function (r) {
                vm.users = r.users;
            });
        },
        // getDept: function () {
        //     //加载部门树
        //     $.get(baseURL + "sys/dept/list", function (r) {
        //         ztree = $.fn.zTree.init($("#deptTree"), setting, r);
        //         var node = ztree.getNodeByParam("deptId", vm.user.deptId);
        //         if (node != null) {
        //             ztree.selectNode(node);

        //             vm.user.deptName = node.name;
        //         }
        //     })
        // },
        // deptTree: function () {
        //     layer.open({
        //         type: 1,
        //         offset: '50px',
        //         skin: 'layui-layer-molv',
        //         title: "选择部门",
        //         area: ['300px', '300px'],
        //         shade: 0,
        //         shadeClose: false,
        //         content: jQuery("#deptLayer"),
        //         btn: ['确定', '取消'],
        //         btn1: function (index) {
        //             var node = ztree.getSelectedNodes();
        //             //选择上级部门
        //             vm.user.deptId = node[0].deptId;
        //             vm.user.deptName = node[0].name;

        //             layer.close(index);
        //         }
        //     });
        // },
        permissions: function () {
            var id = getSelectedRow();
            if (id == null) {
                return;
            }

            window.location.href = baseURL + "person/permissions/index/" + id;
        },
        del: function () {
            var ids = getSelectedRows();
            if (ids == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                $.ajax({
                    type: "POST",
                    url: baseURL + "person/announcement/delete",
                    contentType: "application/json",
                    data: JSON.stringify(ids),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function () {
                                vm.reload();
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            });
        },
        saveOrUpdate: function () {
            var url = vm.announcement.id == null ? "person/announcement/save" : "person/announcement/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.announcement),
                success: function (r) {
                    if (r.code === 0) {
                        alert('操作成功', function () {
                            vm.reload();
                        });
                    } else {
                        alert(r.msg);
                    }
                }
            });
        },
        getRecord: function (id) {
            $.get(baseURL + "person/announcement/info/" + id, function (r) {
                vm.announcement = r.announcement;

            });
        },
        reload: function () {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                postData: {'name': vm.q.name},
                page: page
            }).trigger("reloadGrid");
        }
    }
});
