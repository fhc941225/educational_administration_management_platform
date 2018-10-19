<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/custom-styles.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap-table.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

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
            <a class="navbar-brand" href="message_list_for_student.jsp"><i class="fa fa-gear"></i> <strong>教务系统</strong></a>
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
                    <a href="${pageContext.request.contextPath}/stu_course_list"><i class="fa fa-bar-chart-o"></i> 课程管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/paper/paper_list_for_student"><i class="fa fa-qrcode"></i> 论文提交</a>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/score_list_for_student"><i class="fa fa-qrcode"></i> 成绩查询</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/leave/leave_list_for_student"><i class="fa fa-qrcode"></i> 学生休假</a>
                </li>
            </ul>
            </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">

        <table id="list_for_student"></table>


    </div>


    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->

<!-- jQuery Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-table-zh-CN.js"></script>

<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script type="text/javascript">


    $(function(){
        //初始化表格
        $("#list_for_student").bootstrapTable({
            //列参数
            columns: [{ field: 'course_name', title: "课程" }, { field: 'grade', title: "成绩" },{
                title:'操作',
                align: 'center',
                valign: 'middle',
                events: window.operateEvents={
                    'click #btn_update':function (e,value,row,index) {
                        $("#updateModal").modal('show');
                        $("#stu_number").val(row.stu_number);

                        $("#course_name").val(row.course_name);
                        $("#grade").val(row.grade);

                    },
                    'click #btn_print':function (e,value,row,index) {
                        if(confirm("确定打印吗")){

                        }
                    },

                },
                formatter: function (value, row, index) {
                    return ['<div class="btn-group btn-group-sm" role="group">\n',

                        '<button id="btn_print" type="button" class="btn btn-info">打印成绩</button>\n',

                        '</div>'].join('');
                }
            }],
            //要绑定的数据
            //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
            //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
            //请求地址
            url: 'selectStu',
            //请求方式
            method: 'post',
//              data: [{ id: 1, name: 'Item 1', price: '$1' }, { id: 2, name: 'Item 2', price: '$2' }, { id: 3, name: 'Item 3', price: '$3' }],
            //打开搜索框
            search: false,
            //按回车键后进行搜索
            searchOnEnterKey: false,
            //开启分页功能
            pagination: true,
            //第一次加载第一页
            pageNumber: 1,
            //每页显示条数
            pageSize: 5,

            pageList:[2,3,5,10],
            //分页方式：默认客户端分页，修改为服务端分页
            sidePagination: 'server'
        });
    });
</script>



</body>

</html>
