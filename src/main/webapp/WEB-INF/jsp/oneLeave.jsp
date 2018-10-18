<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Leave</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <style type="text/css">
        .form-group{
            line-height: 40px;
        }
    </style>
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
                    <a href="${pageContext.request.contextPath}/course_list"><i class="fa fa-bar-chart-o"></i> 我的课程</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/paper/paper_list_for_teacher"><i class="fa fa-qrcode"></i> 学生论文</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/score_list_for_student"><i class="fa fa-qrcode"></i> 录入成绩</a>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/leave/leave_list_for_teacher"><i class="fa fa-qrcode"></i> 休假管理</a>
                </li>
            </ul>
            </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >

        <div class="container " >
            <form class="form-horizontal col-md-offset-3" id="myform2">
                <input type="hidden" name="stu_id" value="${student.stu_id}">
                <div class="form-group">
                    <label for="stu_name" class="col-sm-2 control-label">申请人:</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="stu_name"  readonly value="${leave.student.stu_name}">
                    </div>
                </div><div class="form-group">
                <label for="lea_startTime" class="col-sm-2 control-label">开始时间:</label>
                <div class="col-sm-5">
                    <input type="date" class="form-control" id="lea_startTime"  readonly value="${leave.lea_startTime}">
                </div>
            </div><div class="form-group">
                <label for="lea_endTime" class="col-sm-2 control-label">结束时间:</label>
                <div class="col-sm-5">
                    <input type="date" class="form-control" id="lea_endTime" readonly value="${leave.lea_endTime}">
                </div>
            </div>

                <div class="form-group">
                    <label for="lea_days" class="col-sm-2 control-label">请假天数:</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="lea_days" readonly placeholder="${leave.lea_days}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="lea_reason" class="col-sm-2 control-label">请假原因:</label>
                    <div class="col-sm-5">
                        <textarea rows="10%" cols="50%" readonly="readonly" id="lea_reason">${leave.lea_reason}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10" style="margin-left: 25%">
                        <button class="btn btn-primary" type="button" id="returnBtn">返回</button>
                        <button class="btn btn-primary" type="button" id="passBtn">通过</button>
                        <button class="btn btn-primary" type="button" id="denyBtn">拒绝</button>
                    </div>
                </div>

            </form>
            </div>
        </div>
    </div>

<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $("#returnBtn").click(function(){
        location.href="${pageContext.request.contextPath}/leave/leave_list_for_teacher";
    })
    $("#passBtn").click(function(){
        location.href="${pageContext.request.contextPath}/leave/passLeave/${leave.lea_id}";
    })
    $("#denyBtn").click(function(){
        location.href="${pageContext.request.contextPath}/leave/denyLeave/${leave.lea_id}";
    })
</script>
</body>

</html>