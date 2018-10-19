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
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap-table.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <style type="text/css">
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
                    <a href="${pageContext.request.contextPath}/score_list_for_teacher"><i class="fa fa-qrcode"></i> 录入成绩</a>
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
        <!--添加按钮-->
        <div id="div_btn">
            <button class="btn btn-primary" data-toggle="modal"
                    data-target="#myModal">发通知</button>
        </div>
        <!-- 添加的模态框 -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" align="center">写通知</h4>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                        </div>
                        <form action="${pageContext.request.contextPath}/message/addMessage" method="post" class="myForm">
                            <div class="form-group">
                                <label for="mes_title">标题</label>
                                <input type="text" name="mes_title" id="mes_title" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label for="mes_appellation">通知对象</label>
                                <input type="text" name="mes_appellation" id="mes_appellation" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="mes_mainBody">正文</label>
                                <div>
                                    <textarea rows="25%" cols="76%" id="mes_mainBody" name="mes_mainBody"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="mes_signature">署名</label>
                                <input type="text" name="mes_signature" id="mes_signature" class="form-control"/>
                            </div>
                            <div align="center">

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default"
                                        data-dismiss="modal">关闭</button>
                                <input type="submit" class="btn btn-primary" value="确认发送"/>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
        </div>
        <!-- /添加模态框结束 -->
        <table id="myTable"></table>
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
<script src="${pageContext.request.contextPath}/static/assets/js/jquery.validate.min.js"></script>
<script>
    $(function() {
        //初始化表格
        $("#myTable").bootstrapTable({
            //列参数
            columns : [ {
                field : 'mes_title',
                title : '标题',
                align : "center",
                valign : "middle"
            }, {
                field : 'mes_appellation',
                title : '通知对象',
                align : "center",
                valign : "middle"
            }, {
                field : 'mes_signature',
                title : '署名',
                align : "center",
                valign : "middle"
            }, {
                field : 'mes_date',
                title : '日期',
                align : "center",
                valign : "middle"
            },{
                title : '查看',
                align : "center",
                events: operateEvents,
                formatter : operition,
                valign : "middle"
            } ],
            //要绑定的数据
            //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
            //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
            //请求地址
            url : '${pageContext.request.contextPath}/message/showMessages',
            //请求方式
            method : 'post',
            //隔行换色
            striped:true,
            //开启分页功能
            pagination :true,
            //第一次加载第一页
            pageNumber : 1,
            //每页显示条数
            //表格吧按钮包含
            toolbar:"#div_btn",
            pageSize : 10,
            //分页方式：默认客户端分页，修改为服务端分页
            sidePagination : 'server'
        });
    });
    function operition(value, row, index) {
        return "<button class='myWatch btn btn-primary'>查看</button>&nbsp;&nbsp;<button class='myDelete btn btn-danger'>删除</button>";
    }
    window.operateEvents = {
        'click .myWatch': function (e, value, row, index) {
            location.href="${pageContext.request.contextPath}/message/checkMessage_teacher/"+row.mes_id;
        },
        'click .myDelete': function (e, value, row, index) {
            location.href="${pageContext.request.contextPath}/message/deleteMessage/"+row.mes_id;
        }

    }
    $(function() {

        $(".myForm").validate({

            //注意：validate框架会根据表单的name属性去检验，所以验证规则的key是表单的name属性值。
            rules : {
                "mes_title" : {
                    required : true
                },
                "mes_appellation" : {
                    required : true
                },
                "mes_mainBody" : {
                    required : true
                },
                "mes_signature":{
                    required : true
                }
            },
            messages : {
                "mes_title" : {
                    required : "标题不能为空"
                },
                "mes_appellation" : {
                    required : "通知对象不能为空"
                },
                "mes_mainBody" : {
                    required :"正文不能为空"
                },
                "mes_signature":{
                    required :"署名不能为空"
                }
            }
        });

    })
</script>
</body>

</html>