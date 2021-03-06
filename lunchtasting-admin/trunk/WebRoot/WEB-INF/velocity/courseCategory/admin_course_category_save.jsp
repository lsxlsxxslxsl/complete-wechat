#parse("base.jsp")
<html>
  <head>
    <title>课程分类管理-保存</title>
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
    <script src="$!path/js/admin_activity/jquery-1.11.1.min.js"></script>
	
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
					<h1 class="title">课程分类信息 -保存</h1>
					<p class="description"></p>
				</div>
				
					<div class="breadcrumb-env">
					
						<ol class="breadcrumb bc-1">
							<li>
								<a href="goToIndex">首页</a><!-- <i class="fa-home"> -->
							</li>
							<li class="active">
								<strong>课程分类管理</strong>
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
						<input type="hidden" id="id" value="$!{courseCategory.id}">
						<div class="form-group" name="check-div">
							<label class="col-sm-2 control-label" for="">分类级别</label>
							<div class="col-sm-10" style="padding-left:10px;">
							#if($!{courseCategory.id})
							    <select class="form-control" onchange="changeType();" id="typeSelect" disabled="disabled" style="display: block; visibility: visible; width: 810px; opacity: 100; position: absolute; top: 0px; left: 15px; cursor: pointer; z-index: 999999; margin: 0px; padding: 7px; -webkit-appearance: menulist-button;">
       								<option value="1" #if($courseCategory.level =="1") selected="selected" #end">一级</option>
       								<option value="2" #if($courseCategory.level =="2") selected="selected" #end">二级</option>   
								</select>
						   #else
						        <select class="form-control" onchange="changeType();" id="typeSelect" style="display: block; visibility: visible; width: 810px; opacity: 100; position: absolute; top: 0px; left: 15px; cursor: pointer; z-index: 999999; margin: 0px; padding: 7px; -webkit-appearance: menulist-button;">
       								<option value="1" #if($courseCategory.level =="1") selected="selected" #end">一级</option>
       								<option value="2" #if($courseCategory.level =="2") selected="selected" #end">二级</option>   
								</select>
						   #end		 
							</div>
						</div>
						<div class="form-group-separator" id="oneLevel"></div>
							<div class="form-group" name="check-div" id="hideOrShow">
							<label class="col-sm-2 control-label" for="category.name">一级分类</label>
							<div class="col-sm-10" lang="div1">
							<div class="col-sm-12">
    								<select class="form-control selectpicker bla bla bli" data-live-search="true" id="category" data-validate="required" data-message-required="一级分类为必填项" aria-required="true" aria-describedby="category-error" aria-invalid="true" style="display: block; visibility: visible; width: 810px; height: 35px; opacity: 100; position: absolute; top: 0px; left: 0px; cursor: pointer; z-index: 999999; margin: 0px; padding: 6px; -webkit-appearance: menulist-button;">
    								#foreach ($category in $courseCategoryFromLevel)
										<option value="$!{category.id}" "#if($category.id == $!{courseCategory.parentId}) selected="selected" #end">$!{category.name}</option>
									#end	
									</select>  
							</div>
							</div>
						</div>
						<div class="form-group-separator"></div>
							<div class="form-group" name="check-div">
							<label class="col-sm-2 control-label" >分类名称</label>
							<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name" value="$!{courseCategory.name}" data-validate="required" data-message-required="分类名称为必填项" placeholder="输入分类名称" aria-required="true" aria-describedby="name-error" aria-invalid="true" maxlength="30">
							</div>
						</div>
							<div class="form-group-separator"></div>
						    <div class="form-group" name="check-div">
							<label class="col-sm-2 control-label" for="restaurant.restaurantName">排序</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="sort" name="sort" value="$!{courseCategory.sort}" placeholder="默认99，如不排序，无需填写" aria-required="true" aria-describedby="sort-error" aria-invalid="true" maxlength="30">
							</div>
						</div>
						<div class="form-group-separator"></div>
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
	 var level = "$!{courseCategory.level}";
	 var id    = "$!{courseCategory.id}";
	 jQuery(function(){
		 if(id == ""){
		     jQuery("#hideOrShow").hide();
		     jQuery("#oneLevel").hide();
		 }else{
			 if(level == 1){
			   jQuery("#hideOrShow").hide();
			   jQuery("#oneLevel").hide();
			 }else{
			   jQuery("#hideOrShow").show();
			   jQuery("#oneLevel").show();
			 }
		 }
		 jQuery('#category').selectpicker({});
	 });
	 
	 function changeType(){
		 if(jQuery("#typeSelect").val() == 1){
		   jQuery("#hideOrShow").hide();
		   jQuery("#oneLevel").hide();
		 }else{
		   jQuery("#hideOrShow").show();
		   jQuery("#oneLevel").show();
		 }
	 }
	 
	//保存				
	show_loading_bar(100);
	jQuery("#course-save").click(function(){
		show_loading_bar(50);
		jQuery("#restaurant-form").submit();
		var checknum = jQuery("div[name='check-div'][class='form-group validate-has-error']").length;
		if(checknum == 0){
			if(jQuery("#typeSelect").val() == 2){
				if(jQuery("#category").val() == "" || jQuery("#category").val() == null || jQuery("#category").val() == "null"){
						alert("暂无一级分类，请先添加一级分类！");
						return;
					}
			}
		
		    var p;
		    if(jQuery("#typeSelect").val() == 1){
		      p = -1;
		    }else if(jQuery("#typeSelect").val() == 2){
		      p = jQuery("#category").val();
		    }
		    
            var data = {
            	id  : jQuery("#id").val(),
             level  : jQuery("#typeSelect").val(),
              name  : jQuery("#name").val(),
              sort  : jQuery("#sort").val(),
          parentId  : p
            };
            
            jQuery.ajax({
			    url:'saveCourseCategory',
			    data: data,
			    type:'post',
			    dataType:'json',
			    success:function(data){
			    if(data.flag == "success"){
			        alert("保存成功!");
			        location = "goCourseCategoryList";
			    }else if(data.flag == "fail"){
			        alert(data.msg);
			        return;
			       }
			    },
			     error : function() {
			          alert("服务器连接失败！");    
			     }    
			});
            
		}
	});
			
</script>
</body>
</html>
