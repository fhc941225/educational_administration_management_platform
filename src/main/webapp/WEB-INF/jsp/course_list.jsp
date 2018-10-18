<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/custom-styles.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap-table.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>

</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><i class="fa fa-gear"></i> <strong>教务系统</strong></a>
        </div>
        <!-- /.dropdown-alerts -->

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">

            </li>
            <!-- /.dropdown -->
            <li class="dropdown">

            </li>
            <!-- /.dropdown -->
            <li class="dropdown">

            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>

    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <a href="${pageContext.request.contextPath}/tea/teacherpersonalInformation"><i class="fa fa-dashboard"></i> 个人信息</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/message/message_list_for_teacher"><i class="fa fa-desktop"></i> 学校通知</a>
                </li>
                <li>
                    <a  class="active-menu" href="${pageContext.request.contextPath}/course_list"><i class="fa fa-bar-chart-o"></i> 我的课程</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/paper/paper_list_for_teacher"><i class="fa fa-qrcode"></i> 学生论文</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/score_list_for_student"><i class="fa fa-qrcode"></i> 录入成绩</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/leave/leave_list_for_teacher"><i class="fa fa-qrcode"></i> 休假管理</a>
                </li>

            </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
    <!--正文-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="tile-body">
                        <div id="toolbar" class="btn-group">
                            <button id="btnAdd" class="btn btn-success" type="button">新增</button>
                        </div>
                        <table id="course_table" class="table table-striped"></table>
                    </div>
                </div>
            </div>
        </div>
        <%--添加模态框开始--%>
        <div class="modal fade" id="addModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <%--模态框头部--%>
                    <div class="modal-header">
                        <h4 class="modal-title">添加课程</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <%--模态框主体--%>
                    <div class="modal-body">
                        <form id="addForm">
                          <%--  <div class="form-group">
                                <label class="control-label">课程编号</label>
                                <input id="course_id" name="course_id" class="form-control" type="text"
                                       placeholder="请输入课程编号">
                            </div>--%>
                            <div class="form-group">
                                <label class="control-label">课程名称</label>
                                <input id="course_name" name="course_name" class="form-control" type="text"
                                       placeholder="请输入课程名称">
                            </div>
                            <div class="form-group">
                                <label class="control-label">教师编号</label>
                                <input id="teacher_id" name="teacher_id" class="form-control" type="text"
                                       placeholder="请输入教室编号">
                            </div>
                            <div class="form-group">
                                <label class="control-label">上课时间</label>
                                <input id="course_time" name="course_time" class="form-control" type="text"
                                       placeholder="请输入课程时间">
                            </div>
                            <div class="form-group">
                                <label class="control-label">上课地点</label>
                                <input class="form-control" type="text" id="class_room" name="class_room">
                            </div>
                            <div class="form-group">
                                <label class="control-label">周数</label>
                                <input class="form-control" type="text" id="course_week" name="course_week">
                            </div>
                            <div class="form-group">
                                <label class="control-label">课程类型</label>
                                <input class="form-control" type="text" id="course_type" name="course_type">
                            </div>
                            <div class="form-group">
                                <label class="control-label">学分</label>
                                <input class="form-control" type="text" id="course_score" name="course_score">
                            </div>
                        </form>
                    </div>
                    <%--模态框底部--%>
                    <div class="modal-footer">
                        <button id="btnAddCommit" type="button" class="btn btn-primary">提交</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        <%--添加模态框结束--%>
        <%--编辑模态框开始--%>
        <div class="modal fade" id="editModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <%--模态框头部--%>
                    <div class="modal-header">
                        <h4 class="modal-title">编辑课程信息</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <%--模态框主体--%>
                    <div class="modal-body">
                        <form id="editForm">
                            <input type="hidden" name="course_id"/>
                            <div class="form-group">
                                <label class="control-label">课程名称</label>
                                <input name="course_name" class="form-control" type="text" placeholder="请输入课程名称">
                            </div>
                            <div class="form-group">
                                <label class="control-label">上课时间</label>
                                <input name="course_time" class="form-control" type="text"
                                       placeholder="请输入课程时间">
                            </div>
                            <div class="form-group">
                                <label class="control-label">上课地点</label>
                                <input class="form-control" type="text" name="class_room">
                            </div>
                            <div class="form-group">
                                <label class="control-label">周数</label>
                                <input class="form-control" type="text" name="course_week">
                            </div>
                            <div class="form-group">
                                <label class="control-label">课程类型</label>
                                <input class="form-control" type="text" name="course_type">
                            </div>
                            <div class="form-group">
                                <label class="control-label">学分</label>
                                <input class="form-control" type="text" name="course_score">
                            </div>
                        </form>
                    </div>
                    <%--模态框底部--%>
                    <div class="modal-footer">
                        <button id="btnEditCommit" type="button" class="btn btn-primary">更改</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        <%--编辑模态框结束--%>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">

    //转换日期格式(时间戳毫秒数转换为datetime格式)
    function changeDateFormat(cellval) {
        var dateVal = cellval + "";
        if (cellval != null) {
            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
            return date.getFullYear() + "-" + month + "-" + currentDate;
        }
    }

    //添加操作按钮
    function addOperFunction() {
        return [
            '<button id="btnEdit" class="btn btn-primary" type="button">编辑</button>&nbsp;&nbsp;&nbsp;',
            '<button id="btnDelete" class="btn btn-danger" type="button">删除</button>&nbsp;&nbsp;&nbsp;',
           /* '<button id="btnPoint" class="btn btn-success" type="button" onclick="fn()">打分</button>'*/
        ].join("");
    }
    //成绩操作按钮
    function fn(){
        location.href="${pageContext.request.contextPath}/score_list_for_teacher"
    }

    //操作按钮事件
    window.operateEvents = {
        "click #btnEdit": function (e, value, row, index) {
            $.get(
                'course/' + row.course_id,
                function (data) {
                    $('#editForm [name=course_name]').val(data.course_name);
                    $('#editForm [name=course_time]').val(data.course_time);
                    $('#editForm [name=class_room]').val(data.class_room);
                    $('#editForm [name=course_week]').val(data.course_week);
                    $('#editForm [name=course_type]').val(data.course_type);
                    $('#editForm [name=course_score]').val(data.course_score);
                    $('#editForm [name=course_id]').val(data.course_id);

                },
                'json'
            );
            //点击编辑按钮事件
            var dialog = $('#editModal').modal({
                backdrop: 'static',
                keyboard: false
            });
            dialog.modal('show');
        },
        "click #btnDelete": function (e, value, row, index) {
            //点击删除按钮事件
            //$(this).parent().parent().remove();
            //异步请求删除记录
            $.post(
                'course/' + row.course_id,
                {'_method': 'DELETE'},
                function (data) {
                    if (data > 0) {
                        $('#course_table').bootstrapTable(('refresh'));
                    }
                }
            );
        },

        //打分按钮
        "click #btnPoint":function (e,value,row,index) {
            $.post(
                'point/'+row.course_id,
                {'_method':'POST'},
                function(data){
                    if(data>0){
                        $('#course_table').bootstrapTable(('refresh'));
                    }
                }
            )
        }
    };

        //初始化bootstrap-table插件
        $("#course_table").bootstrapTable({ // 对应table标签的id
            url: "courses", // 获取表格数据的url
            method: 'post',
            cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
            striped: true,  //表格显示条纹，默认为false
            pagination: true, // 在表格底部显示分页组件，默认false
            pageList: [5, 10, 20], // 设置页面可以显示的数据条数
            pageSize: 5, // 页面数据条数
            pageNumber: 1, // 首页页码
            paginationPreText: "上一页",
            paginationNextText: "下一页",
            sidePagination: 'server', // 设置为服务器端分页
            sortName: 'course_id', // 要排序的字段
            sortOrder: 'asc', // 排序规则
            search: true,
            searchOnEnterKey: true,
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "COURSE_ID",                     //每一行的唯一标识，一般为主键列
            detailView: false,                  //是否显示父子表
            columns: [
                {
                    checkbox: true, // 显示一个勾选框
                    align: 'center' // 居中显示
                }, {
                    field: 'course_name', // 返回json数据中的course_id
                    title: '课程名', // 表格表头显示文字
                    align: 'center', // 左右居中
                    valign: 'middle' // 上下居中
                }, {
                    field: 'teacher_id', // 返回json数据中的
                    title: '教师编号', // 表格表头显示文字
                    align: 'center', // 左右居中
                    valign: 'middle' // 上下居中
                }, {
                    field: 'course_time', // 返回json数据中的
                    title: '上课时间', // 表格表头显示文字
                    align: 'center', // 左右居中
                    valign: 'middle' // 上下居中
                }, {
                    field: 'class_room', // 返回json数据中
                    title: '上课教室', // 表格表头显示文字
                    align: 'center', // 左右居中
                    valign: 'middle' // 上下居中
                }, {
                    field: 'course_week',
                    title: '学时',
                    align: 'center',
                    valign: 'middle'
                }, {
                    field: 'course_type',
                    title: '课程类型',
                    align: 'center',
                    valign: 'middle'
                }, {
                    field: 'course_score',
                    title: '学分',
                    align: 'center',
                    valign: 'middle',
                }, {
                    title: '操作',
                    align: 'center',
                    valign: 'middle',
                    formatter: addOperFunction,
                    events: operateEvents
                }]
        });
        //add模态框中提交事件
        $("#btnAddCommit").click(function () {
            $.post(
                'course',
                $("#addForm").serialize(),
                function (data) {
                    $('#addModal').modal('hide');
                    if (data > 0) {
                        $('#course_table').bootstrapTable(('refresh'));
                    }
                }
            );
        });
        //edit模态框中更改事件
        $("#btnEditCommit").click(function () {
            $.ajax({
                url: 'course',
                data: $("#editForm").serialize(),
                type: 'PUT',
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                success: function (data) {
                    $('#editModal').modal('hide');
                    if (data > 0) {
                        $('#course_table').bootstrapTable(('refresh'));
                    }
                }
            });
        });
    $("#btnAdd").click(function () {
        $("#addModal").modal('show');
    });

</script>


</body>

</html>