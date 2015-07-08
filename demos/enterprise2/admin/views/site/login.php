<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业后台</title>
<?php $baseUrl = Wave::app()->request->baseUrl;?>
<link type="text/css" rel="stylesheet" href="<?=$baseUrl?>/resouce/bootstrap/css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="<?=$baseUrl?>/resouce/css/admin.css"/>
<script type="text/javascript" src="<?=$baseUrl?>/resouce/js/jquery.min.js"></script>
</head>
<body>
<script type="text/javascript">
var getsubmit = function(){
    var user_login = $("#user_login").val();
    var user_pass = $("#user_pass").val();
    if(!user_login){
        alert("请输入用户名！");
        return false;
    }
    if(!user_pass){
        alert("请输入密码！");
        return false;
    }
    $("#warning").css({"display":"none"});
    $.ajax({
        type: "POST",
        url: "<?php echo Wave::app()->homeUrl.'site/loging';?>",
        data: $("#login-form").serialize(),
        dataType: "json",
        success: function(data){
            if(data.success == true){
                window.location.href="<?php echo Wave::app()->homeUrl.'site';?>";
            }else{
                alert(data.msg);
            }
        }
    });
}

$(function(){
    $("#submit").click(function(){
        getsubmit();
    })
    
    $("#user_pass").keydown(function(event){
        if (event.keyCode==13) { getsubmit(); } 
    })
})
</script>
<div class="container">
    <div class="con-login">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">企业后台登录</h3>
            </div>
            <div class="panel-body">
                <form class="form-signin" role="form" id="login-form">
                    <div class="form-group" id="login-form">
                        <label for="user_login">邮箱</label>
                        <input id="user_login" type="text" name="user_login" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">密码</label>
                        <input id="user_pass" type="password" name="user_pass" class="form-control">
                    </div>
                    <button class="btn btn-success btn-block" id="submit" type="button">登录</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>