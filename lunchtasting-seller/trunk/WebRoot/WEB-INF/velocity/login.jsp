#parse("base.jsp")
<html>	
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="$!path/css/seller/login_css/style.css" rel='stylesheet' type='text/css' />
<!--webfonts
<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>-->
<script type="text/javascript" src="$!path/js/common_js/jquery-1.12.0.min.js"></script>
</head>
<body>
<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>
 <!--SIGN UP-->
 <h1>perfit Login Form</h1>
<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="$!path/image/seller/login_image/avtar.png" />
	</div>
			<form>
					<input id ="account" type="text" class="text" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
						<div class="key">
					<input type="password"id ="passwd" value="1">
						</div>
			</form>
	<div class="signin">
		<input type="submit" value="Login"  id="loginClick">
	</div>
</div>
 <div class="copy-rights">
					<p>Copyright &copy; 2016.China Beijin jiayoujia.<a target="_blank" href="http://wap.lunchtasting.com/subscibe/">联系我们</a></p>
			</div>

</body>
<!-- md5加密  -->
<script type="text/javascript" src="$!path/js/common_js/md5.js"></script>
<script type="text/javascript">
	jQuery("#loginClick").click(function(){
	            var account;
				if(jQuery.trim($("#account").val()) != ""&& jQuery.trim($("#account").val()) != "Username"){
				    account = jQuery.trim($("#account").val());
			    }else{
			    	alert("用户名不能为空!");
			    	jQuery("#account").focus();
			    	return;
			    }
	  			var password;
	  			if(jQuery.trim($("#passwd").val()) != ""){
	  			    password = hex_md5(jQuery.trim($("#passwd").val()));
	  			}else{
	  			    alert("密码不能为空!");
	  			    jQuery("#passwd").focus();
	  			    return;
	  			}
				jQuery.ajax({
				    url:'sellerLogin',
				    data:{password:password,name:account},
				    type:'post',
				    async: false,    
				    dataType:'json',
				    success:function(data){
				        if(data.code == 0){
				        	//成功
					         alert(data.message);
					         window.location.href=data.data.url;
				        }else{
				        	//失败
				        	alert(data.message);
				        }
				    },
				     error : function() {
				          alert("服务器连接失败！");
				     }    
				});
		});
</script>
</html>