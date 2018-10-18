<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Message</title>
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
        #title{
            margin-bottom: 5%;
        }
        #appellation{
            margin-left: 25%;
            font-size: 20px;
            margin-bottom: 2%;
        }
        #mainBody{
            margin-left: 20%;
            margin-right: 15%;
            font-size: 20px;
            width: 48%;
            height: 20%;
        }
        #sign_date{
            margin-top: 5%;
            margin-right: 15%;
            font-size: 20px;
            margin-bottom: 2%;
        }
        textarea{
            border: none;
            background-color: transparent;
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
                    <a class="active-menu" href="${pageContext.request.contextPath}/message/message_list_for_teacher"><i class="fa fa-desktop"></i> 学校通知</a>
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
                    <a  href="${pageContext.request.contextPath}/leave/leave_list_for_teacher"><i class="fa fa-qrcode"></i> 休假管理</a>
                </li>
            </ul>
            </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div align="center">
            <div id="title">
                <h2>${message.mes_title}</h2>
            </div>
            <div id="appellation" align="left">${message.mes_appellation}:</div>
            <div id="mainBody" align="left"><textarea rows="14%" cols="65%" readonly="readonly">${message.mes_mainBody}</textarea></div>
            <div id="sign_date" align="right">
                ${message.mes_signature}
                <br/>
                ${message.mes_date}
            </div>
            <button onclick="returnList()">返回</button>
        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<script>
    function returnList(){
        history.go(-1);
    }
</script>

</body>

</html>