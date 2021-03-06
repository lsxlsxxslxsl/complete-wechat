#parse("base.jsp")
<html>
  <head>
    <title>相册管理-保存</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />
	<link rel="stylesheet" href="$!path/css/admin_activity/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/bootstrap.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-core.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-forms.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-components.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-skins.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/custom.css">

    <link rel="stylesheet" href="$!path/js/admin_activity/kindeditor/themes/default/default.css">
    <script src="$!path/js/admin_activity/jquery-1.11.1.min.js"></script>
	<script src="$!path/js/admin_activity/kindeditor/kindeditor-all.js"></script>
	<script src="$!path/js/admin_activity/kindeditor/zh-CN.js"></script>
	
	<link rel="stylesheet" href="$!path/js/admin_activity/ssi-uploader/ssi-uploader.css">
	
    <script src="$!path/js/admin_activity/bootstrap-select/bootstrap-select.js"></script>
	<link rel="stylesheet" href="$!path/js/admin_activity/bootstrap-select/bootstrap-select.css">
	<style type="text/css">
		.table-condensed{
			font-size: 13px;
		}
	</style>
  </head>
<body class="page-body">

	<div class="settings-pane">
			
		<a href="#" data-toggle="settings-pane" data-animate="true">
			&times;
		</a>
		<div class="settings-pane-inner">
			
			<div class="row">
				
				<div class="col-md-4">
					
					<div class="user-info">
						
						<div class="user-image">
							<a href="extra-profile.html">
								<img src="$!path/image/admin_images/user-2.png" class="img-responsive img-circle" />
							</a>
						</div>
						
						<div class="user-details">
							
							<h3>
								<a href="extra-profile.html">John Smith</a>
								
								<!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
								<span class="user-status is-online"></span>
							</h3>
							
							<p class="user-title">Web Developer</p>
							
							<div class="user-links">
								<a href="extra-profile.html" class="btn btn-primary">Edit Profile</a>
								<a href="extra-profile.html" class="btn btn-success">Upgrade</a>
							</div>
							
						</div>
						
					</div>
					
				</div>
				
				<div class="col-md-8 link-blocks-env">
					
					<div class="links-block left-sep">
						<h4>
							<span>Notifications</span>
						</h4>
						
						<ul class="list-unstyled">
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk1" />
								<label for="sp-chk1">Messages</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk2" />
								<label for="sp-chk2">Events</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk3" />
								<label for="sp-chk3">Updates</label>
							</li>
							<li>
								<input type="checkbox" class="cbr cbr-primary" checked="checked" id="sp-chk4" />
								<label for="sp-chk4">Server Uptime</label>
							</li>
						</ul>
					</div>
					
					<div class="links-block left-sep">
						<h4>
							<a href="#">
								<span>Help Desk</span>
							</a>
						</h4>
						
						<ul class="list-unstyled">
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Support Center
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Submit a Ticket
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Domains Protocol
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa-angle-right"></i>
									Terms of Service
								</a>
							</li>
						</ul>
					</div>
					
				</div>
				
			</div>
		
		</div>
		
	</div>
	
	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
			
		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others fixed">
			
			<div class="sidebar-menu-inner">	
				
				<header class="logo-env">
					
					<!-- logo -->
					<div class="logo">
						<a href="javascript:void(0);" class="logo-expanded">
							<img src="$!path/image/admin_images/logo@2x.png" width="130" alt="" />
						</a>
						
						<a href="javascript:void(0);" class="logo-collapsed">
							<img src="$!path/image/admin_images/logo-collapsed@2x.png" width="40" alt="" />
						</a>
					</div>
					
					<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
					<div class="mobile-menu-toggle visible-xs">
						<a href="#" data-toggle="user-info-menu">
							<i class="fa-bell-o"></i>
							<span class="badge badge-success">7</span>
						</a>
						
						<a href="#" data-toggle="mobile-menu">
							<i class="fa-bars"></i>
						</a>
					</div>
				</header>
				
				<ul id="main-menu" class="main-menu">
				      #include("../../menu.jsp")
				</ul>
						
			</div>
			
		</div>
		
		<div class="main-content">
					
			<!-- User Info, Notifications and Menu Bar -->
			<nav class="navbar user-info-navbar" role="navigation">
				
				<!-- Left links for user info navbar -->
				<ul class="user-info-menu left-links list-inline list-unstyled">
					
					<!-- <li class="hidden-sm hidden-xs">
						<a href="#" data-toggle="sidebar">
							<i class="fa-bars"></i>
						</a>
					</li> -->
					
				</ul>
				
			</nav>
			<div class="page-title">
				
				<div class="title-env">
					<h1 class="title">相册信息 -保存</h1>
					<p class="description"></p>
				</div>
				
					<div class="breadcrumb-env">
					
						<ol class="breadcrumb bc-1">
							<li>
								<a href="goToIndex">首页</a><!-- <i class="fa-home"> -->
							</li>
							<li class="active">
								<strong>相册管理</strong>
							</li>
						</ol>
				</div>
					
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">基本信息</h3>
					<div class="panel-options">
						<a href="#" data-toggle="panel">
							<span class="collapse-icon">&ndash;</span>
							<span class="expand-icon">+</span>
						</a>
						<a href="#" data-toggle="remove">
							&times;
						</a>
					</div>
				</div>
				<div class="panel-body">
					<iframe style="display: none;" name="ifa" id="ifa"></iframe>
					<form role="form" method="post" class="form-horizontal validate" id="restaurant-form" target="ifa">
						<input type="hidden" id="id" value="$!{album.id}">
							<div class="form-group" name="check-div">
							<label class="col-sm-2 control-label" >相册名称</label>
							<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name" value="$!{album.name}" data-validate="required" data-message-required="相册名称为必填项" placeholder="输入相册名称" aria-required="true" aria-describedby="name-error" aria-invalid="true" maxlength="20">
							</div>
						</div>
						<div class="form-group-separator"></div>
							<div class="form-group" name="check-div">
							<label class="col-sm-2 control-label" for="activity.name">类型</label>
							<div class="col-sm-10" lang="div1">
							<div class="col-sm-12">
									<select class="form-control selectpicker bla bla bli" data-live-search="false" id="bizType" data-validate="required" aria-required="true" aria-describedby="seller-error" aria-invalid="true" style="display: block; visibility: visible; width: 810px; height: 35px; opacity: 100; position: absolute; top: 0px; left: 0px; cursor: pointer; z-index: 999999; margin: 0px; padding: 6px; -webkit-appearance: menulist-button;">
										<option value="1" "#if($carousel.bizType == 1) selected="selected" #end">赛事</option>
									</select>   
							</div>
							</div>
						</div>
						<!-- 赛事 -->
						<div class="form-group-separator" id="separator1"></div>
						<div class="form-group" name="check-div" id="sh">
							<label class="col-sm-2 control-label" for="activity.name">赛事</label>
							<div class="col-sm-10" lang="div1">
							<div class="col-sm-12">
    								<select class="form-control selectpicker bla bla bli" data-live-search="true" id="bizIdsh" data-validate="required" aria-required="true" aria-describedby="seller-error" aria-invalid="true" style="display: block; visibility: visible; width: 810px; height: 35px; opacity: 100; position: absolute; top: 0px; left: 0px; cursor: pointer; z-index: 999999; margin: 0px; padding: 6px; -webkit-appearance: menulist-button;">
    								#foreach ($match in $matchList)
										<option value="$!{match.id}" "#if($match.id == $!{album.bizId}) selected="selected" #end">$!{match.name}</option>
									#end	
									</select>  
							</div>
							</div>
						</div>
						<div class="form-group-separator"></div>
						<div class="form-group" name="check-div" style="margin-top: 15px;">
                        <label class="col-sm-2 control-label" for="">封面图片</label>
                        <div class="col-sm-4">  
                        <input type="file" id="img_input" class="form-control" accept="images/*"/>
                        <input type="hidden" id="url">
                        </div>  
						</div>
						<div class="form-group" name="check-div" id="imgDiv">
						<div class="col-sm-10" style="text-align: center;">
						<img id="img" src="$!{imgUrl}" style="width: 300px;height: 300px;">
						</div>
						</div>
						
						<div class="form-group-separator"></div>
						<div class="form-group" name="check-div" style="margin-top: 15px;">
                        <label class="col-sm-2 control-label" for="">多图</label>
                        <div class="col-sm-4">  
                        <input type="file" id="file_input" class="form-control" accept="images/*" multiple/>
                        </div>  
						</div>
						
						<div class="form-group-separator"></div>
						<div class="col-md-12" id="moreImg" style="padding-bottom: 12px;">
						
						</div>
						
						<div class="form-group">
							<button type="button" class="btn btn-success" id="course-save">保存</button>
							<button type="reset" class="btn btn-white">重置</button>
				  		</div>
					</form>
				</div>
			</div>
			<footer class="main-footer sticky footer-type-1">
				<div class="footer-inner">
					<!-- Add your copyright text here -->
					<div class="footer-text">
						&copy; <script>document.write(new Date().getFullYear())</script> 
						<strong>PerFit</strong> 
					</div>
					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<!-- <div class="go-up">
						<a href="#" rel="go-top">
							<i class="fa-angle-up"></i>
						</a>
					</div> -->
				</div>
			</footer>
		</div>
		
	</div>
	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="$!path/js/admin_activity/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="$!path/js/admin_activity/daterangepicker/daterangepicker-bs3.css">
	
	<!-- Bottom Scripts -->
	<script src="$!path/js/admin_activity/bootstrap.min.js"></script>
	<script src="$!path/js/admin_activity/TweenMax.min.js"></script>
	<script src="$!path/js/admin_activity/resizeable.js"></script>
	<script src="$!path/js/admin_activity/joinable.js"></script>
	<script src="$!path/js/admin_activity/xenon-api.js"></script>
	<script src="$!path/js/admin_activity/xenon-toggles.js"></script>
	<script src="$!path/js/admin_activity/datatables/js/jquery.dataTables.min.js"></script>


	<!-- Imported scripts on this page -->
	<script src="$!path/js/admin_activity/datatables/dataTables.bootstrap.js"></script>
	<script src="$!path/js/admin_activity/datatables/yadcf/jquery.dataTables.yadcf.js"></script>
	<script src="$!path/js/admin_activity/datatables/tabletools/dataTables.tableTools.min.js"></script>
	
	<!-- Bottom Scripts -->
	<script src="$!path/js/admin_activity/moment.min.js"></script>

	<!-- Imported scripts on this page -->
	<script src="$!path/js/admin_activity/daterangepicker/daterangepicker.js"></script>
	<script src="$!path/js/admin_activity/timepicker/bootstrap-timepicker.min.js"></script>
	
	<!-- Imported scripts on this page -->
	<script src="$!path/js/admin_activity/jquery-validate/jquery.validate.min.js"></script>
	
	<!-- JavaScripts initializations and stuff -->
	<script src="$!path/js/admin_activity/xenon-custom.js"></script>
	
	<div class="xenon-loading-bar"><span data-pct="0" style=""></span></div>
	<script type="text/javascript">
    var role = $!session.getAttribute('login_session_user').roleId;
    var userId = $!session.getAttribute('login_session_user').id;
	var type = "album";
	var imgUrl = "$!{album.imgUrl}";
	var imgArr = "$!{album.imgArray}";
	var baseUrl = "$!{baseUrl}";
	var obj;
	var murl = "";
    KindEditor.ready(function(K) {
    
    if(imgUrl == "" || imgUrl == null || imgUrl == "null"){
		jQuery("#imgDiv").hide();
	}
	 
	 //图片
	 var fdimg = new FormData();
	 var input = document.getElementById("img_input");
	 input.addEventListener('change',readFileImg,false);
	 function readFileImg() {
				for ( var i = 0; i < this.files.length; i++) {
					for ( var i = 0; i < this.files.length; i++) {
						fdimg.append(i, this.files[i]);
					}
					imgUp(fdimg);
				}
	}
	 
	 	//图片
		function imgUp(fdimg) {
			jQuery.ajax({
				url : 'image/upload?type='+type,
				data : fdimg,
				type : 'post',
				dataType : 'json',
				processData: false,
				contentType: false,
				success : function(data) {
					if (data.error == 0) {
					murl = data.url;
					if(imgUrl == "" || imgUrl == null || imgUrl == "null"){
					  jQuery("#imgDiv").show();
					}
					document.getElementById("img").src = murl;
					jQuery("#url").val(murl);
					jQuery('#img_input').replaceWith('<input type="file" id="img_input" class="form-control" accept="images/*"/>');
					var fdimg = new FormData();
		            var input = document.getElementById("img_input");
			        input.addEventListener('change',function(){
				    if(this.files.length>0){
					for ( var i = 0; i < this.files.length; i++) {
						for ( var i = 0; i < this.files.length; i++) {
							fdimg.append(i, this.files[i]);
						}
						imgUp(fdimg);
					}
				}
				},false);
			}
    },
		error : function() {
			alert("服务器连接失败！");
		}
	});
}
	 
	 //多图
	 if(imgArr != null && imgArr != "" && imgArr != "null"){
	 var arr = imgArr.split(',');
	 for(var i=0;i<arr.length;i++){
	   obj = "<table class='ssi-imgToUploadTable ssi-pending'>"+
             " <tr><td class='ssi-upImgTd'><img class='ssi-imgToUpload' src='"+baseUrl+arr[i]+"'/></td></tr>"+
             " <tr lang='del'><td><button data-delete class='ssi-button error ssi-removeBtn'><span class='trash10 trash'></span></button></td></tr>" +
             " </table>";
      	K("#moreImg").append(obj);
	  }
// 	  K("#moreImg").append("<div class='form-group-separator'></div>");
	  jQuery("tr[lang='del'] td button").on('click',function(){
	         $(this).parent('td').parent('tr[lang=del]').parent('tbody').parent('table.ssi-imgToUploadTable').remove();
      	});
	}
	 
	 
	//保存				
	show_loading_bar(100);
	K("#course-save").click(function(){
		show_loading_bar(50);
		jQuery("#restaurant-form").submit();
		var imgArr = [];
		jQuery("#moreImg table.ssi-imgToUploadTable").each(function(){
		if(baseUrl == "http://ocjp9x6x9.bkt.clouddn.com/"){
		    imgArr.push(jQuery(this).find('td[class=ssi-upImgTd]').children('img').attr('src').substring(33,61));
		}else if(baseUrl == "http://image.mperfit.com/"){
		    imgArr.push(jQuery(this).find('td[class=ssi-upImgTd]').children('img').attr('src').substring(25, 53));
		}
		})
		
		var bizId;
		if(jQuery("#bizType").val() == 1){
			bizId = jQuery("#bizIdsh").val();
		}else if(jQuery("#bizType").val() == 2){
		    bizId = jQuery("#bizIdwz").val();
		}else if(jQuery("#bizType").val() == 3){
		    bizId = jQuery("#bizIdkc").val();
		}else if(jQuery("#bizType").val() == 4){
		    bizId = jQuery("#bizIdsj").val();
		}
		var checknum = jQuery("div[name='check-div'][class='form-group validate-has-error']").length;
		if(checknum == 0){
				K.ajax('saveAlbum', function(data) {
				        show_loading_bar(100);
	  					if(data.flag == "success"){
	  						alert("保存成功!");
	  						location = "goAlbumList";
	  					}else{
	  						alert("保存失败!");
	  						return false;
	  					}
                   },'POST',{
                       id  : jQuery("#id").val(),
				    name   : jQuery("#name").val(),
				 bizType   : jQuery("#bizType").val(),
				    bizId  : bizId,
		            imgUrl : jQuery("#url").val(),
		            imgArr : imgArr
		            
            });
		}
	});
	
	        var fd = new FormData();
			var input = document.getElementById("file_input");
			var result, div;
			if (typeof FileReader === 'undefined') {
				result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
				input.setAttribute('disabled', 'disabled');
			} else {
				input.addEventListener('change',readFile,false);
			}
			
			function readFile() {
				for ( var i = 0; i < this.files.length; i++) {
					if (!input['value'].match(/.jpg|.gif|.png|.bmp|.jpeg/i)) {
						return alert("上传的图片格式不正确，请重新选择");
					}
					for ( var i = 0; i < this.files.length; i++) {
// 						var reader = new FileReader();
// 						reader.readAsDataURL(this.files[i]);
						fd.append(i, this.files[i]);
					}
					fileUp(fd);
				}
			}
});

		function fileUp(fd) {
			jQuery.ajax({
				url : 'image/multipleUpload?type=' + type,
				data : fd,
				type : 'post',
				dataType : 'json',
				processData: false,
				contentType: false,
				success : function(data) {
					if (data.error == 0) {
					var arr = data.url.split(',');
	                for(var i=0;i<arr.length;i++){
	                obj = "<table class='ssi-imgToUploadTable ssi-pending'>"+
	                    " <tr><td class='ssi-upImgTd'><img class='ssi-imgToUpload' src='"+arr[i]+"'/></td></tr>"+
	                    " <tr lang='del'><td><button data-delete class='ssi-button error ssi-removeBtn'><span class='trash10 trash'></span></button></td></tr>" +
	                    " </table>";
      	                jQuery("#moreImg").append(obj);
      	            removeTab : $("tr[lang='del'] td button").on('click',function(){
							$(this).parent('td').parent('tr[lang=del]').parent('tbody').parent('table.ssi-imgToUploadTable').remove();
						});
						
						jQuery('#file_input').replaceWith('<input type="file" id="file_input" class="form-control" multiple/>');
						var fd = new FormData();
			            var input = document.getElementById("file_input");
			            var result, div;
			            if (typeof FileReader === 'undefined') {
				        result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
				        input.setAttribute('disabled', 'disabled');
			            } else {
				        input.addEventListener('change',function(){
					    if (!input['value'].match(/.jpg|.gif|.png|.bmp|.jpeg/i)) {
						return alert("上传的图片格式不正确，请重新选择");
					    }
					    if(input.files.length>0){
						for ( var i = 0; i < input.files.length; i++) {
							if (!input['value'].match(/.jpg|.gif|.png|.bmp|.jpeg/i)) {
								return alert("上传的图片格式不正确，请重新选择");
							}
							for ( var i = 0; i < this.files.length; i++) {
// 								var reader = new FileReader();
// 								reader.readAsDataURL(this.files[i]);
								fd.append(i, this.files[i]);
							}
							fileUp(fd);
						}
					}
				},false);
			}
	    }
// 	    jQuery("#moreImg").append("<div class='form-group-separator'></div>");
   }
},
		error : function() {
			alert("服务器连接失败！");
		}
			});
		}

	</script>
</body>
</html>
