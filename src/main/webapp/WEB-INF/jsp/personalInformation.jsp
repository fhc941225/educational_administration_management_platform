<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${pageContext.request.contextPath}/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> 
     <style type="text/css">
         #from1{
             background-color:#FFFFFF;
             border-radius: 25px;
             width: 100%;
             height: 100%;
             padding-top: 30px;
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
                        <a class="active-menu" href="${pageContext.request.contextPath}/stu/personalInformation"><i class="fa fa-dashboard"></i> 个人信息</a>




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
           <div class="container">
               <div class="row">
                  <div id="from1" class="col-md-12" >
                      <h2>学生信息</h2>
                      <br/>
                      <br/>
                      <form class="form-horizontal col-md-offset-3">

                              <div class="form-group">
                                  <label for="stu_number" class="col-sm-2 control-label">学号:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="stu_number" readonly  placeholder="${student.stu_number}">
                                  </div>
                              </div><div class="form-group">
                                  <label for="stu_class" class="col-sm-2 control-label">班级:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="stu_class" readonly placeholder="${student.stu_class}">
                                  </div>
                              </div><div class="form-group">
                                  <label for="stu_major" class="col-sm-2 control-label">专业:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="stu_major" readonly placeholder="${student.stu_major}">
                                  </div>
                              </div>

                          <div class="form-group">
                              <label for="stu_name" class="col-sm-2 control-label">姓名:</label>
                              <div class="col-sm-5">
                                  <input type="text" class="form-control" id="stu_name" readonly placeholder="${student.stu_name}">
                              </div>
                          </div>
                              <div class="form-group">
                              <label for="stu_birthday" class="col-sm-2 control-label">出生日:</label>
                              <div class="col-sm-5">
                                  <input type="text" class="form-control" id="stu_birthday" readonly  placeholder="${student.stu_birthday}">
                              </div>
                          </div>
                              <div class="form-group">
                              <label for="stu_card" class="col-sm-2 control-label">身份证号:</label>
                              <div class="col-sm-5">
                                  <input type="text" class="form-control" id="stu_card" readonly placeholder="${student.stu_card}">
                              </div>
                          </div>
                              <div class="form-group">
                              <label for="stu_address" class="col-sm-2 control-label">家庭地址:</label>
                              <div class="col-sm-5">
                                  <input type="text" class="form-control" id="stu_address" readonly placeholder="${student.stu_address}">
                              </div>
                          </div>
                              <div class="form-group">
                              <label for="stu_phone" class="col-sm-2 control-label">联系方式</label>
                              <div class="col-sm-5">
                                  <input type="text" class="form-control" id="stu_phone" readonly placeholder="${student.stu_phone}">
                              </div>
                          </div>


                          <div class="form-group">
                              <div class="col-sm-10">
                                  <button type="button" class="btn btn-primary" id="redact">编辑</button>
                              </div>
                          </div>

                      </form>
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
                    <h2>修改资料</h2>
                    <button type="button" class="close" data-dismiss="modal">关闭</button>

                </div>
                <div class="modal-body">
                    <form class="form-horizontal col-md-offset-3" id="myform2">
                            <input type="hidden" name="stu_id" value="${student.stu_id}">
                            <div class="form-group">
                                <label for="stu_number2" class="col-sm-2 control-label">学号:</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="stu_number2" name="stu_number" readonly placeholder="${student.stu_number}">
                                </div>
                            </div><div class="form-group">
                            <label for="stu_class2" class="col-sm-2 control-label">班级:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_class2" name="stu_class" readonly placeholder="${student.stu_class}">
                            </div>
                        </div><div class="form-group">
                            <label for="stu_major2" class="col-sm-2 control-label">专业:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="stu_major2" name="stu_major" readonly placeholder="${student.stu_major}">
                            </div>
                        </div>

                            <div class="form-group">
                                <label for="stu_name2" class="col-sm-2 control-label">姓名:</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="stu_name2" name="stu_name" readonly placeholder="${student.stu_name}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="stu_birthday2" class="col-sm-2 control-label">出生日:</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="stu_birthday2" name="stu_birthday" readonly placeholder="${student.stu_birthday}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="stu_card2" class="col-sm-2 control-label">身份证号:</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="stu_card2" name="stu_card" readonly placeholder="${student.stu_card}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="stu_address2" class="col-sm-2 control-label">家庭地址:</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="stu_address2" name="stu_address" value="${student.stu_address}"  placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="stu_phone2" class="col-sm-2 control-label">联系方式</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="stu_phone2" name="stu_phone" value="${student.stu_phone}" placeholder="">
                                </div>
                            </div>


                        <div class="form-group">
                            <div class="col-sm-10">
                                <button type="button" class="btn btn-primary" id="redact2">编辑</button>
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
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	 
   <!-- Metis Menu Js -->
 <script src="${pageContext.request.contextPath}/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="${pageContext.request.contextPath}/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/morris/morris.js"></script>


    <script src="${pageContext.request.contextPath}/assets/js/easypiechart.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/easypiechart-data.js"></script>

     <script src="${pageContext.request.contextPath}/assets/js/Lightweight-Chart/jquery.chart.js"></script>

    <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/assets/js/custom-scripts.js"></script>
<script type="text/javascript">
$('#redact').click(function () {
    $('#myModal').modal();
});

    $("#redact2").click(function () {
        var pname = $("#myform2").serialize();
            alert(pname);
        $.ajax({
            url: '${pageContext.request.contextPath}/stu/edit',
            data: pname,
            type: 'PUT',
            contentType : "application/x-www-form-urlencoded; charset=UTF-8",
            success: function (i) {
               if(i>0){

                   location.href="${pageContext.request.contextPath}/stu/personalInformation";

               }
            }
        });

    });

</script>


</body>

</html>