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
            <a class="navbar-brand" href="message_list_for_student.jsp"><i class="fa fa-gear"></i>
                <strong>教务系统</strong></a>
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
                    <a href="${pageContext.request.contextPath}/stu/personalInformation"><i class="fa fa-dashboard"></i> 个人信息</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/message/message_list_for_student"><i class="fa fa-desktop"></i> 学校通知</a>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/stu_course_list"><i class="fa fa-bar-chart-o"></i> 课程管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/paper/paper_list_for_student"><i class="fa fa-qrcode"></i> 论文提交</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/score_list_for_student"><i class="fa fa-qrcode"></i> 成绩查询</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/leave/leave_list_for_student"><i class="fa fa-qrcode"></i> 学生休假</a>
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
                        <button type="button" class="btn btn-primary" id="haveNotSelect" onclick="fn()">待选课程&nbsp;&nbsp;&nbsp;</button>
                        <button type="button" class="btn btn-success" id="haveSelect" onclick="fun()" >已选课程</button>
                        <table id="scourse_table" class="table table-striped"></table>
                    </div>
                </div>
            </div>
        </div>

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


    //已选课程操作按钮
    function fun() {
        location.href="${pageContext.request.contextPath}/stu_have_course_list"
    }

    //选课操作按钮
    function addOperFunction() {
        return [
            '<button id="btnSelectCourse" class="btn btn-primary" type="button">选课</button>&nbsp;&nbsp;&nbsp;',

        ].join("");
    }

    //选课操作按钮事件
    window.operateEvents = {
        "click #btnSelectCourse": function (e, value, row, index) {
            $.post(
                'scourse/'+ row.course_id,
                {'_method': 'POST'},
                function (data) {
                    if (data > 0) {
                        $('#scourse_table').bootstrapTable(('refresh'));
                    }
                }
            );
        },

    }

    //初始化bootstrap-table插件
    $("#scourse_table").bootstrapTable({ // 对应table标签的id
        url: "haveNotScourses", // 获取表格数据的url
        method: 'post',
        cache: false, // 设置为 false 禁用 AJAX 数据缓存， 默认为true
        striped: true,  //表格显示条纹，默认为false
        pagination: true, // 在表格底部显示分页组件，默认false
        pageList: [5, 10, 20], // 设置页面可以显示的数据条数
        pageSize: 3, // 页面数据条数
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


</script>


</body>

</html>