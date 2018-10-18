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
        .mblack
        {
            padding-top: 4px;
            padding-left: 8px;
            vertical-align: top;
            white-space: nowrap;
        }
        .error {
            font-weight: bold;
            font-size: 12px;
            padding-left:16px;
            color: #EA5200;
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
                    <a href="${pageContext.request.contextPath}/score_list_for_student"><i class="fa fa-qrcode"></i> 成绩查询</a>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/leave/leave_list_for_student"><i class="fa fa-qrcode"></i> 学生休假</a>
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
                <td>开始时间</td>
                <td>结束时间</td>
                <td>请假天数</td>
                <td>请假原因</td>
                <td>审批状态</td>
            </tr>
            <c:forEach items="${leaves}" var="leave">
                <tr>
                    <td>${leave.lea_startTime}</td>
                    <td>${leave.lea_endTime}</td>
                    <td>${leave.lea_days}</td>
                    <td style="width:200px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow: ellipsis">
                        <div style="width:200px;overflow:hidden;white-space:nowrap;text-overflow: ellipsis">
                                ${leave.lea_reason}
                        </div>
                    </td>
                        <c:if test="${leave.lea_state==0}">
                            <td>未审核</td>
                        </c:if>
                    <c:if test="${leave.lea_state==1}">
                        <td>已通过</td>
                    </c:if>
                    <c:if test="${leave.lea_state==2}">
                        <td>已拒绝</td>
                    </c:if>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="5">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">申请休假</button>
                </td>
            </tr>
        </table>
        <!-- 添加的模态框 -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" align="center">申请休假</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                        </div>
                        <form action="${pageContext.request.contextPath}/leave/applyLeave" method="post" id="myForm">
                            <div class="form-group">
                                <label for="lea_startTime">开始时间</label>
                                <input type="date" name="lea_startTime" id="lea_startTime" class="form-control" onblur="timeFn()"/>
                            </div>

                            <div class="form-group">
                                <label for="lea_endTime">结束时间</label>
                                <input type="date" name="lea_endTime" id="lea_endTime" class="form-control" onblur="timeFn()"/>
                            </div>
                            <div class="form-group">
                                <label for="lea_days">请假天数</label>
                                <input type="text" name="lea_days" id="lea_days" class="form-control" readonly="readonly"/>
                            </div>
                            <div class="form-group">
                                <label for="lea_reason">请假原因</label>
                                <div class="form-group">
                                    <textarea rows="25%" cols="76%" name="lea_reason" id="lea_reason" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lea_approveID">审批人</label>
                                <select id="lea_approveID" name="lea_approveID">
                                    <c:forEach items="${teachers}" var="teacher">
                                        <option value="${teacher.tea_id}">${teacher.tea_name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div align="center">

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default"
                                        data-dismiss="modal">关闭</button>
                                <input type="submit" class="btn btn-primary" value="确认添加"/>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
        </div>
        <!-- /添加模态框结束 -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/jquery.validate.min.js"></script>
<script type="text/javascript">
    function timeFn(){
        var startTime=$("#lea_startTime").val();
        var endTime=$("#lea_endTime").val();
        if(startTime!=""&&endTime!=""){
            var start= new Date(startTime.replace(/-/, '/'));
            var end= new Date(endTime.replace(/-/, '/'));
            var dateDiff = end.getTime() - start.getTime();//时间差的毫秒数
            var dayDiff = Math.floor(dateDiff / (24 * 3600 * 1000));//计算出相差天数
            $("#lea_days").val(dayDiff);

        }
    }
    $(function() {

        $(".myForm").validate({

            //注意：validate框架会根据表单的name属性去检验，所以验证规则的key是表单的name属性值。
            rules : {
                "lea_startTime" : {
                    required : true
                },
                "lea_endTime" : {
                    required : true
                },
                "lea_days" : {
                    required : true
                },
                "lea_reason":{
                    required : true
                }
            },
            messages : {
                "lea_startTime" : {
                    required : "开始时间不能为空"
                },
                "lea_endTime" : {
                    required : "结束时间不能为空"
                },
                "lea_days" : {
                    required :"请假天数不能为空"
                },
                "lea_reason" : {
                    required :"请假天数不能为空"
                }
            }
        });

    })
</script>
</body>

</html>