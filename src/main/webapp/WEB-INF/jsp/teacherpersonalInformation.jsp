<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>教师个人信息</title>
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
                <a class="navbar-brand" href="index.jsp"><i class="fa fa-gear"></i> <strong>教务系统</strong></a>
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
                        <a class="active-menu" href="${pageContext.request.contextPath}/tea/teacherpersonalInformation"><i class="fa fa-dashboard"></i> 个人信息</a>
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
                        <a href="${pageContext.request.contextPath}/score_list_for_teacher"><i class="fa fa-qrcode"></i> 录入成绩</a>
                    </li>
                    <li>
                        <a  href="${pageContext.request.contextPath}/leave/leave_list_for_teacher"><i class="fa fa-qrcode"></i> 休假管理</a>
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
                      <h2>教师信息</h2>
                      <br/>
                      <br/>
                      <form class="form-horizontal col-md-offset-3">

                              <div class="form-group">
                                  <label for="stu_number" class="col-sm-2 control-label">教师编号:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="stu_number" readonly  placeholder="${teacher.tea_number}">
                                  </div>
                              </div><div class="form-group">
                                  <label for="tea_name" class="col-sm-2 control-label">教师姓名:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="tea_name" readonly placeholder="${teacher.tea_name}">
                                  </div>
                              </div>
                          <div class="form-group">
                                  <label for="tea_birthday" class="col-sm-2 control-label">教师出生日:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="tea_birthday" readonly placeholder="${teacher.tea_birthday}">
                                  </div>
                              </div>
                          <div class="form-group">
                                  <label for="tea_card" class="col-sm-2 control-label">教师身份证:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="tea_card" readonly placeholder="${teacher.tea_card}">
                                  </div>
                              </div>
                          <div class="form-group">
                                  <label for="tea_address" class="col-sm-2 control-label">教师家庭地址:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="tea_address" readonly placeholder="${teacher.tea_address}">
                                  </div>
                              </div>
                          <div class="form-group">
                                  <label for="tea_phone" class="col-sm-2 control-label">教师联系方式:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="tea_phone" readonly placeholder="${teacher.tea_phone}">
                                  </div>
                              </div>
                          <div class="form-group">
                                  <label for="tea_courses" class="col-sm-2 control-label">教师课程:</label>
                                  <div class="col-sm-5">
                                      <input type="text" class="form-control" id="tea_courses" readonly placeholder="${teacher.tea_courses}">
                                  </div>
                              </div>





                          <div class="form-group">
                              <div class="col-sm-10">
                                  <button type="button" class="btn btn-primary" id="redact">编辑</button>
                                  &nbsp;&nbsp;
                                  <button type="button" class="btn btn-success" id="list">学生列表</button>
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
                            <input type="hidden" name="tea_id" value="${teacher.tea_id}">
                        <div class="form-group">
                            <label for="stu_number2" class="col-sm-2 control-label">教师编号:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="tea_number" id="stu_number2" readonly  placeholder="${teacher.tea_number}">
                            </div>
                        </div><div class="form-group">
                        <label for="tea_name2" class="col-sm-2 control-label">教师姓名:</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="tea_name2"name="tea_number" readonly placeholder="${teacher.tea_name}">
                        </div>
                    </div>
                        <div class="form-group">
                            <label for="tea_birthday2" class="col-sm-2 control-label">教师出生日:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="tea_birthday2" name="tea_birthday" readonly placeholder="${teacher.tea_birthday}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tea_card2" class="col-sm-2 control-label">教师身份证:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="tea_card2" name="tea_card" readonly placeholder="${teacher.tea_card}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tea_address2" class="col-sm-2 control-label">教师家庭地址:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="tea_address2" name="tea_address" value="${teacher.tea_address}" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tea_phone2" class="col-sm-2 control-label">教师联系方式:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="tea_phone2" name="tea_phone" value="${teacher.tea_phone}" placeholder="${teacher.tea_phone}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tea_courses2" class="col-sm-2 control-label">教师课程:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="tea_courses2" name="tea_courses" readonly placeholder="${teacher.tea_courses}">
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
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="${pageContext.request.contextPath}/static/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="${pageContext.request.contextPath}/static/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/assets/js/morris/morris.js"></script>
	
	
	<script src="${pageContext.request.contextPath}/static/assets/js/easypiechart.js"></script>
	<script src="${pageContext.request.contextPath}/static/assets/js/easypiechart-data.js"></script>
	
	 <script src="${pageContext.request.contextPath}/static/assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/static/assets/js/custom-scripts.js"></script>
<script type="text/javascript">
    $('#redact').click(function () {
        $('#myModal').modal();
    });
    $("#list").click(function () {

        location.href="${pageContext.request.contextPath}/stu/studentlist";
    })

        $("#redact2").click(function () {
            var pname = $("#myform2").serialize();

            $.ajax({
                url: '${pageContext.request.contextPath}/tea/edit',
                data: pname,
                type: 'PUT',
                contentType : "application/x-www-form-urlencoded; charset=UTF-8",
                success: function (i) {
                   if(i>0){

                       location.href="${pageContext.request.contextPath}/tea/teacherpersonalInformation";

                   }
                }
            });

        });

</script>
 

</body>

</html>