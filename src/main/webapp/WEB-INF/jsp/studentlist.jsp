<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >

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
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap-table.css">

    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> 
     <style type="text/css">
         #from1{
             background-color:#FFFFFF;
             border-radius: 25px;
             height: 100%;
             width: 100%;
             padding-top: 30px;

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
                        <a class="active-menu" href="index.jsp"><i class="fa fa-dashboard"></i> 个人信息</a>




                    </li>
                    <li>
                        <a href="ui-elements.html"><i class="fa fa-desktop"></i> 学校通知</a>
                    </li>
					<li>
                        <a href="chart.jsp"><i class="fa fa-bar-chart-o"></i> 课程管理</a>
                    </li>
                    <li>
                        <a href="tab-panel.html"><i class="fa fa-qrcode"></i> 论文提交</a>
                    </li>
					 <li>
                        <a href="tab-panel.html"><i class="fa fa-qrcode"></i> 成绩查询</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-sitemap"></i>学生休假<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="123">休假列表</a>
                            </li>
                            <li>
                                <a href="">休假申请</a>
                            </li>
                        </ul>

                            </li>
                        </ul>
                    </li>
                  
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">

          <div class="row">

                  <div id="from1" class="col-md-12">
                      <div class="text-center">
                          <button type="button" class="btn btn-group" id="add">添加学生</button>
                        <table id="mytable"   class="col-md-12">

                        </table>

                  </div>


           </div>
            </div>
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!--模态框-->
    <div class="modal c" id="myModal">
        <div class="modal-dialog modal-lg  ">
            <div class="modal-content">
                <div class="modal-header ">
                    <h2>添加学生资料</h2>
                    <button type="button" class="close" data-dismiss="modal">关闭</button>

                </div>
                <div class="modal-body">
                    <form class="form-horizontal col-md-offset-3" id="myform2">
                        <input type="hidden" name="stu_id" value="">
                        <div class="form-group">
                            <label for="stu_number2" class="col-sm-2 control-label">学号:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_number2" name="stu_number" onblur="numbersblur()" placeholder="请输入学号">
                                <span id="yan1"></span>
                            </div>
                        </div><div class="form-group">
                        <label for="stu_class2" class="col-sm-2 control-label">班级:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="stu_class2" name="stu_class"  placeholder="请输入班级">
                        </div>
                    </div><div class="form-group">
                        <label for="stu_major2" class="col-sm-2 control-label">专业:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="stu_major2" name="stu_major"  placeholder="请输入专业">
                        </div>
                    </div>

                        <div class="form-group">
                            <label for="stu_name2" class="col-sm-2 control-label">姓名:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_name2" name="stu_name"  placeholder="请输入姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="stu_birthday2" class="col-sm-2 control-label">出生日:</label>
                            <div class="col-sm-5">
                                <input type="date" class="form-control" id="stu_birthday2" name="stu_birthday"  placeholder="请输入出生日">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="stu_card2" class="col-sm-2 control-label">身份证号:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_card2" name="stu_card"  placeholder="请输入身份证号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="stu_address2" class="col-sm-2 control-label">家庭地址:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_address2" name="stu_address" value=""  placeholder="请输入家庭地址">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="stu_phone2" class="col-sm-2 control-label">联系方式</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_phone2" name="stu_phone" value="" placeholder="请输入你的联系方式">
                            </div>
                        </div>
                        <div class="form-group">



                                <div class="col-md-6 text-center" id="nuc" style="color: red" ></div>

                        </div>


                        <div class="form-group">
                            <div class="col-sm-10">
                                <button type="button" class="btn btn-primary" id="redact2">添加</button>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">

                </div>
            </div>
        </div>
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/static/static/assets/js/bootstrap.min.js"></script>
	 

	
	


    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap-table-zh-CN.js"></script>

	

<script type="text/javascript">
    $(function () {

        $("#mytable").bootstrapTable({

            url:'${pageContext.request.contextPath}/stu/stulist',
            dataType:"json",
            contentType:'application/json',
            search: true,
            pagination: true,  //开启分页
            sidePagination: 'server',//服务器端分页
            pageNumber: 1,//默认加载页
            pageSize: 3,
            searcchAlign:"right",
            /*sortName:undefined,*/

            method: 'post',
            columns:[{
                field:'stu_number',
                title:'学号'
            },{
                field:'stu_name',
                title:'姓名'
            },{
                field:'stu_birthday',
                title:'出生日'
            },{
                field:'stu_card',
                title:'身份证'

            },{
                field:'stu_phone',
                title:'联系方式'

            },{
                field:'stu_address',
                title:'家庭地址'

            },{
                field:'stu_class',
                title:'班级'

            },{
                field:'stu_state',
                title:'状态'

            },{
                field:'button',
                title:'操作',
                events:operateEvents,
                formatter:AddFunctionAlty,
            }]


        });

    });
    function AddFunctionAlty(value,row,index) {
        /*添加编辑按钮和删除按钮*/
        return[

            '<button id="Deletes"type="button" class="btn btn-success" >毕业</button>&nbsp;&nbsp;&nbsp;&nbsp;',
            '&nbsp;&nbsp;&nbsp;&nbsp;<button id="Deletestwo"type="button" class="btn btn-danger" >开除</button>&nbsp;&nbsp;&nbsp;&nbsp;'

        ].join("")

    }
    window.operateEvents={

        /*删除*/
        "click #Deletes":function(e,value,row,index){
            if(confirm("确定修改吗？")){
                var param="id="+row.stu_id;
                alert(param);
                $.post("${pageContext.request.contextPath}/stu/delete",param);
                location.href="studentlist";



            }
        },"click #Deletestwo":function(e,value,row,index){
            if(confirm("确定修改吗？")){
                var param="id="+row.stu_id;
                alert(param);
                $.post("${pageContext.request.contextPath}/stu/deletetwo",param);
                location.href="studentlist";



            }
        },


    }
    $('#add').click(function () {
        $('#myModal').modal();
    });
    $("#redact2").click(function () {

        if($("#stu_number2").val()==""){
            $("#nuc").html("学号不能为空")
            return;
        } if($("#stu_class2").val()==""){
            $("#nuc").html("班级不能为空")
            return;
        } if($("#stu_major2").val()==""){
            $("#nuc").html("专业不能为空")
            return;
        } if($("#stu_name2").val()==""){
            $("#nuc").html("姓名不能为空")
            return;
        }if($("#stu_birthday2").val()==""){
            $("#nuc").html("出生日不能为空")
            return;
        }if($("#stu_card2").val()==""){
            $("#nuc").html("身份证不能为空")
            return;
        }if($("#stu_address2").val()==""){
            $("#nuc").html("地址不能为空")
            return;
        }if($("#stu_phone2").val()==""){
            $("#nuc").html("手机号不能为空")
            return;
        }



        var param = $("#myform2").serialize();

        $.post("${pageContext.request.contextPath}/stu/insertstudent",param);
        location.href="${pageContext.request.contextPath}/stu/studentlist";

    });


</script>
 

</body>

</html>