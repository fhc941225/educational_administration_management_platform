<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>学生登入</title>
  </head>
  <body>
    <section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h1>Vali</h1>
      </div>
      <div class="login-box">
        <form class="login-form" action="index.html" id="myform1" method="post">
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>学生登入</h3>
          <div class="form-group">
            <label class="control-label">USERNAME</label>
            <input class="form-control" type="text" name="stu_number" id="stu_number" placeholder="请输入学号"   autofocus>

          </div>
          <div class="form-group">
            <label class="control-label">PASSWORD</label>
            <input class="form-control" type="password" name="stu_pwd" id="stu_pwd" placeholder="请输入密码"  >


          </div>
          <div class="form-group">
            <div class="utility">
              <div class="animated-checkbox">
                <div id="numbers" style="color: red"></div>

              </div>

            </div>
          </div>
          <div class="form-group btn-container">
            <button class="btn btn-primary btn-block" type="button" id="btn1"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN</button>
          </div>
        </form>

      </div>
    </section>
    <!-- Essential javascripts for application to work-->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="assets/js/plugins/pace.min.js"></script>
    <script type="text/javascript">


        $('input[required]').before('<span style="color:red">*</span>');

        $("#btn1").click(function(){
            if($("#stu_number").val()==""){
                $("#numbers").html("用户名不能为空");
                return;
            } if($("#stu_pwd").val()==""){
                $("#numbers").html("密码不能为空");
                return;
            }
            var pname = $("#myform1").serialize();


            $.ajax({
                data: pname,
                dataType: "text",
                type: "post",
                url: "${pageContext.request.contextPath}/stu",
                success: function(src) {
                    if(src=="ok"){
                        alert("登入成功")
                        location.href="${pageContext.request.contextPath}/stu/personalInformation";
                    }else{

                        alert("登入失败,用户名或密码错误");
                    }
                }

            });
        });

      // Login Page Flipbox control
      $('.login-content [data-toggle="flip"]').click(function() {
      	$('.login-box').toggleClass('flipped');
      	return false;
      });
    </script>
  </body>
</html>