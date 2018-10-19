<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>学生论文</title>
    <!-- Bootstrap Styles-->
    <link href="../static/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="../static/assets/css/bootstrap-table.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/css/bootstrapValidator.min.css" rel="stylesheet">
    <!-- FontAwesome Styles-->
    <link href="../static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="../static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="../static/assets/css/custom-styles.css" rel="stylesheet" />
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
            <a class="navbar-brand" href="#"><i class="fa fa-gear"></i> <strong>教务系统</strong></a>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
            </li>
            <li class="dropdown">
            </li>
            <li class="dropdown">
            </li>
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
            </li>
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
                    <a class="active-menu" href="${pageContext.request.contextPath}/paper/paper_list_for_teacher"><i class="fa fa-qrcode"></i> 学生论文</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/score_list_for_teacher"><i class="fa fa-qrcode"></i> 录入成绩</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/leave/leave_list_for_teacher"><i class="fa fa-qrcode"></i> 休假管理</a>
                </li>

            </ul>
        </div>
    </nav>
    <%--打分模态框--%>
    <div class="modal fade" id="modifyLevelModal"  tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="modifyLevel" method="post">
                    <div class="modal-header">
                        <h3><b>打分</b></h3>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="paper_id" name="paper_id"/>
                        <div class="form-group">
                            <label for="paper_level" class="col-sm-4 control-label">选择分数</label>
                            <select id="paper_level" name="paper_level" class="form-control">
                                <option value="0">--请选择--</option>
                                <option value="1">不及格</option>
                                <option value="2">及格</option>
                                <option value="3">中等</option>
                                <option value="4">良好</option>
                                <option value="5">优秀</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-info">提交</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%--正文--%>
    <div id="page-wrapper">
        <table id="list_for_teacher"></table>
    </div>
</div>
<script src="../static/assets/js/jquery-1.10.2.js"></script>
<script src="../static/assets/js/bootstrap.min.js"></script>
<script src="../static/assets/js/bootstrap-table.js/"></script>
<script src="../static/assets/js/bootstrap-table-zh-CN.js/"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
<script>
    $(function () {
            //bootstrapTable
        $("#list_for_teacher").bootstrapTable({
            url: 'listByTeacher',
            method: 'post',
            cache: false,
            search: true,
            searchOnEnterKey: true,
            striped: true, //  隔行变色
            sidePagination: 'server',
            pagination: true, //开启分页功能
            pageNumber: 1,//第一次加载第一页
            pageSize: 10,//每页显示条数
            pageList: [5, 10, 15], // 设置页面可以显示的数据条数
            uniqueId: "paper_id",
            columns: [{
                field: 'student.stu_name',
                title: '学生姓名',
                align: 'center',
                valign: 'middle',
                width: '8%'
            }, {
                field: 'paper_title',
                title: '论文标题',
                align: 'center',
                valign: 'middle',
                width: '15%'
            }, {
                field: 'paper_introduction',
                title: '论文介绍',
                align: 'center',
                valign: 'middle'
            }, {
                field: 'paper_updataTime',
                title: '上传时间',
                align: 'center',
                valign: 'middle',
                width: '10%'
            }, {
                field: 'paper_level',
                formatter: function (value) {
                    var level = null;
                    switch (value) {
                        case 1:
                            level = '不及格';
                            break;
                        case 2:
                            level = '及格';
                            break;
                        case 3:
                            level = '中等';
                            break;
                        case 4:
                            level = '良好';
                            break;
                        case 5:
                            level = '优秀';
                            break;
                        default:
                            level = '未评分';
                    }
                    return level;
                },
                title: '分数',
                align: 'center',
                valign: 'middle',
                width: '8%'
            }, {
                title: '操作',
                align: 'center',
                valign: 'middle',
                width: '15%',
                events: window.operateEvents = {
                    //下载按钮
                    'click #btn_download': function (e, value, row, index) {
                        location.href = "downloadPaper/" + row.paper_url;
                    },
                    //打分按钮
                    'click #btn_modify': function (e, value, row, index) {
                        $("#paper_id").val(row.paper_id);
                        $("#paper_level").val(row.paper_level);
                        $("#modifyLevelModal").modal('show');
                    }
                },
                formatter: function (value, row, index) {
                    if (row.paper_level == 0) {
                        return ['<div class="btn-group btn-group-sm" role="group">\n',
                            '<button id="btn_download" type="button" class="btn btn-success">下载论文</button>\n',
                            '<button id="btn_modify" type="button" class="btn btn-primary">论文打分</button>\n',
                            '</div>'].join('');
                    } else {
                        return ['<div class="btn-group btn-group-sm" role="group">\n',
                            '<button id="btn_download" type="button" class="btn btn-success">下载论文</button>\n',
                            '<button id="btn_modify" type="button" class="btn btn-warning">重新打分</button>\n',
                            '</div>'].join('');
                    }
                }
            }]
        });
        //表单验证
        $('form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                paper_level: {
                    validators: {
                        callback: {
                            message: '请选择分数',
                            callback: function (value, validator) {
                                if (value == 0) {
                                    return false;
                                } else {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        });
    });
</script>
</body>

</html>