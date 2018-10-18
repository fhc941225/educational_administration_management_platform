<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html >

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>论文提交</title>
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
            <a class="navbar-brand" href="index.jsp"><i class="fa fa-gear"></i> <strong>HYBRID</strong></a>
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
                    <a href="index.jsp"><i class="fa fa-dashboard"></i> 个人信息</a>
                </li>
                <li>
                    <a href="ui-elements.html"><i class="fa fa-desktop"></i> 学校通知</a>
                </li>
                <li>
                    <a href="chart.jsp"><i class="fa fa-bar-chart-o"></i> 课程管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/paper/paper_list_for_student"><i class="fa fa-qrcode"></i> 论文提交</a>
                </li>
                <li>
                    <a href="tab-panel.html"><i class="fa fa-qrcode"></i> 成绩查询</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/leave/leave_list_for_student"><i class="fa fa-qrcode"></i> 学生休假</a>
                </li>
            </ul>
        </div>
    </nav>
    <!--提交论文模态框-->
    <div class="modal fade" id="addModal"  tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="insertPaper" method="post" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h3><b>提交论文</b></h3>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="paper_teacher" class="col-sm-4 control-label">老师姓名</label>
                            <select id="paper_teacher" name="paper_teacher" class="form-control">
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="paper_title" class="col-sm-4 control-label">论文标题</label>
                            <input type="text" id="paper_title" name="paper_title" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="paper_introduction" class="col-sm-4 control-label">论文介绍</label>
                            <textarea id="paper_introduction" name="paper_introduction" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="paper_file" class="col-sm-4 control-label">论文上传</label>
                            <input type="file" id="paper_file" name="paper_file" class="form-control"/>
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
    <%--修改论文模态框--%>
    <div class="modal fade" id="modifyModal"  tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="modifyPaper" method="post" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h3><b>修改上传论文</b></h3>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="modify_paper_id" name="paper_id"/>
                        <input type="hidden" id="modify_paper_student" name="paper_student"/>
                        <input type="hidden" id="modify_paper_url" name="paper_url"/>
                        <div class="form-group">
                            <label for="modify_paper_teacher" class="col-sm-4 control-label">老师姓名</label>
                            <select id="modify_paper_teacher" name="paper_teacher" class="form-control">
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="modify_paper_title" class="col-sm-4 control-label">论文标题</label>
                            <input type="text" id="modify_paper_title" name="paper_title" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="modify_paper_introduction" class="col-sm-4 control-label">论文介绍</label>
                            <textarea id="modify_paper_introduction" name="paper_introduction" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="modify_paper_file" class="col-sm-4 control-label">重新上传论文</label>
                            <input type="file" id="modify_paper_file" name="paper_file" class="form-control"/>
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
    <!--正文-->
    <div id="page-wrapper">
        <div id="toolbar">
            <button id="btn_add" type="button" class="btn btn-primary">提交论文</button>
        </div>
        <table id="list_for_student"></table>
    </div>
</div>
<script src="../static/assets/js/jquery-1.10.2.js"></script>
<script src="../static/assets/js/bootstrap.min.js"></script>
<script src="../static/assets/js/bootstrap-table.js/"></script>
<script src="../static/assets/js/bootstrap-table-zh-CN.js/"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.min.js"></script>
<script>
    $(function(){
        //bootstrapTable
        $("#list_for_student").bootstrapTable({
            url: 'listByStudent',
            method: 'post',
            toolbar: "#toolbar",
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
            columns:[{
                field:'teacher.tea_name',
                title:'老师姓名',
                align: 'center',
                valign: 'middle',
                width: '8%'
            },{
                field:'paper_title',
                title:'论文标题',
                align: 'center',
                valign: 'middle',
                width: '15%'
            },{
                field:'paper_introduction',
                title:'论文介绍',
                align: 'center',
                valign: 'middle'
            },{
                field:'paper_updataTime',
                title:'上传时间',
                align: 'center',
                valign: 'middle',
                width: '10%'
            },{
                field:'paper_level',
                formatter:function (value) {
                    var level = null;
                    switch (value) {
                        case 1:level = '不及格';
                        break;
                        case 2:level = '及格';
                        break;
                        case 3:level = '中等';
                        break;
                        case 4:level = '良好';
                        break;
                        case 5:level = '优秀';
                        break;
                        default:level = '未评分';
                    }
                    return level;
                },
                title:'分数',
                align: 'center',
                valign: 'middle',
                width: '8%'
            },{
                title:'操作',
                align: 'center',
                valign: 'middle',
                width: '15%',
                events: window.operateEvents={
                    //下载按钮
                    'click #btn_download':function (e,value,row,index) {
                        location.href = "downloadPaper/" + row.paper_url;
                    },
                    //修改按钮
                    'click #btn_modify':function (e,value,row,index) {
                        $.ajax({
                            url:"listAllTeacher",
                            dataType:"json",
                            type:"post",
                            success:function (teachers) {
                                var $select = $("#modify_paper_teacher");
                                $select.html("<option value='-1'>--请选择--</option>");
                                for (var i = 0; i < teachers.length; i++) {
                                    var $option = $("<option></option>");
                                    if(teachers[i].tea_id == row.paper_teacher){
                                        $option.attr("selected",true);
                                    }
                                    $option.attr("value",teachers[i].tea_id);
                                    $option.text(teachers[i].tea_name);
                                    $select.append($option);
                                }
                            }
                        });
                        $("#modify_paper_id").val(row.paper_id);
                        $("#modify_paper_student").val(row.paper_student);
                        $("#modify_paper_url").val(row.paper_url);
                        $("#modify_paper_title").val(row.paper_title);
                        $("#modify_paper_introduction").val(row.paper_introduction);
                        $("#modifyModal").modal('show');
                    },
                    //删除按钮
                    'click #btn_delete':function (e,value,row,index) {
                        if(confirm("确定删除吗？")){
                            var split = row.paper_url.split("/");
                            location.href = "deletePaper/" + row.paper_id + "/" + split[split.length-1];
                        }
                    }
                },
                formatter: function (value, row, index) {
                    return ['<div class="btn-group btn-group-sm" role="group">\n',
                        '<button id="btn_download" type="button" class="btn btn-success">下载</button>\n',
                        '<button id="btn_modify" type="button" class="btn btn-primary">修改</button>\n',
                        '<button id="btn_delete" type="button" class="btn btn-danger">删除</button>\n',
                        '</div>'].join('');
                }
            }]
        });
        //添加按钮
        $("#btn_add").click(function () {
            $.ajax({
                url:"listAllTeacher",
                dataType:"json",
                type:"post",
                success:function (teachers) {
                    var $select = $("#paper_teacher");
                    $select.html("<option value='-1'>--请选择--</option>");
                    for (var i = 0; i < teachers.length; i++) {
                        var $option = $("<option></option>");
                        $option.attr("value",teachers[i].tea_id);
                        $option.text(teachers[i].tea_name);
                        $select.append($option);
                    }
                }
            });
            $("#addModal").modal('show');
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
                paper_teacher: {
                    validators: {
                        callback: {
                            message: '请选择老师',
                            callback: function (value, validator) {
                                if (value == -1) {
                                    return false;
                                } else {
                                    return true;
                                }
                            }
                        }
                    }
                },
                paper_title: {
                    validators: {
                        notEmpty: {
                            message: '请输入标题'
                        }
                    }
                },
                paper_introduction: {
                    validators: {
                        notEmpty: {
                            message: '请输入论文介绍'
                        },
                        stringLength: {
                            min: 10,
                            message: '介绍至少输入10个字符'
                        }
                    }
                },
                paper_file: {
                    validators: {
                        notEmpty: {
                            message: '请选择上传文件'
                        }
                    }
                }
            }
        });
    });
</script>
</body>

</html>
