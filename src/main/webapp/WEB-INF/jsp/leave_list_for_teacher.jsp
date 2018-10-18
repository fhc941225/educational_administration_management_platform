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
        tr{
            text-align: center;
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
    <div id="page-wrapper">
        <!--休假列表-->
        <table id="myTable" class="table-hover table table-bordered " >
            <tr>
                <td>申请人</td>
                <td>开始时间</td>
                <td>结束时间</td>
                <td>请假天数</td>
                <td>请假原因</td>
                <td>查看</td>
            </tr>
            <c:forEach items="${leaves}" var="leave">
                <tr>
                    <td>${leave.student.stu_name}</td>
                    <td>${leave.lea_startTime}</td>
                    <td>${leave.lea_endTime}</td>
                    <td>${leave.lea_days}</td>
                    <td style="width:200px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow: ellipsis">
                        <div style="width:200px;overflow:hidden;white-space:nowrap;text-overflow: ellipsis">
                                ${leave.lea_reason}
                        </div>
                    </td>
                    <td><button onclick="watchLeave('${leave.lea_id}')">查看</button></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function watchLeave(lea_id){
        location.href="${pageContext.request.contextPath}/leave/watchLeave/"+lea_id;
    }
</script>
</body>

</html>