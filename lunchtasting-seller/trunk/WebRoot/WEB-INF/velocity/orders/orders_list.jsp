#parse("base.jsp")
<html>
  <head>
    <title>订单管理</title>
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
<!-- 	<link rel="stylesheet" href="$!path/css/admin_activity/fonts/font.css"> -->
	<link rel="stylesheet" href="$!path/css/admin_activity/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/bootstrap.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-core.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-forms.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-components.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/xenon-skins.css">
	<link rel="stylesheet" href="$!path/css/admin_activity/custom.css">
	<script src="$!path/js/admin_activity/jquery-1.11.1.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="System/assets/js/html5shiv.min.js"></script>
		<script src="System/assets/js/respond.min.js"></script>
	<![endif]-->
	<style type="text/css">
		.thead-tr-th{
			border-left-width: 0;
			position: relative;
			border-bottom: 1px solid #eeeeee;
			color: #979898;
			padding: 12px 15px;
			vertical-align: bottom;
			text-align: left;
			font-family: "Arimo", "Helvetica Neue", Helvetica, Arial, sans-serif;
			font-size: 13px;
		}
		a:hover{color:#f00;}
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
						<a href="goToIndex" class="logo-expanded">
							<img src="$!path/image/admin_images/logo@2x.png" width="130" alt="" />
						</a>
						
						<a href="goToIndex" class="logo-collapsed">
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
					
					<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
<!-- 					<div class="settings-icon"> -->
<!-- 						<a href="#" data-toggle="settings-pane" data-animate="true"> -->
<!-- 							<i class="linecons-cog"></i> -->
<!-- 						</a> -->
<!-- 					</div> -->
								
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
					<h1 class="title">订单管理</h1>
					<p class="description"></p>
				</div>
				
					<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="goToIndex"><i></i>Home</a><!-- class="fa-home" -->
						</li>
							<li class="active">
						
										<strong>订单管理</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
			<!-- Removing search and results count filter -->
			<div class="panel panel-default">
				<div id="hideDiv">
					<form class="form-horizontal">
						<input type="hidden" id ="courseId" value="$!courseId">
						<div id="hideDiv">
							<div class="form-group">
								<label class="col-sm-2 control-label"
									for="restaurant.restaurantName">订单状态</label>
								<div class="col-sm-2" style="width:140px;">
									<select class="form-control" id="status"
										style="display: block; visibility: visible; opacity: 100; position: absolute; top: 0px; left: 15px; cursor: pointer; z-index: 999999; margin: 0px; padding: 7px; -webkit-appearance: menulist-button;">
										<option value="">全部</option>
										<option value="1">待付款</option>
										<option value="2">已付款</option>
										<option value="3">已消费</option>
										<option value="4">已评价</option>
										<option value="5">已退款</option>
									</select>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="panel-heading" style="padding-left: 17px;">
					<h3 class="panel-title">
					    <a href="javascript:selectOrders();" class="btn btn-secondary btn-sm btn-icon icon-left" style="color:#ffffff;">查询</a>
<!-- 						<a href="goSellerSave" class="btn btn-info btn-sm btn-icon icon-left" style="color:#ffffff;">添加</a> -->
					</h3>
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
					
				<script type="text/javascript">
					var ordersList;
					jQuery(document).ready(function($){
						    ordersList = jQuery("#example-2").dataTable({
							sAjaxSource: "getOrdersList",
							bServerSide: true,
							fnServerData: function (sSource, aoData, fnCallback ) {
								show_loading_bar(0);
								jQuery.ajax({
									dataType: 'json',	
									type: "POST",
									url: sSource,
									data: {
										aoData: JSON.stringify(aoData)
									},
									success: function(_data){
										if(_data.result == 0){
											fnCallback(_data);
											show_loading_bar(100);
										}else{
											alert("查询失败!");
										}
									},
									error: function(){
										alert("服务器连接超时!");
									}
								});
							},
							"fnRowCallback": function (nRow, aoData, iDisplayIndex) {
								if(aoData.phone== "" || aoData.phone==null){
					                jQuery('td:eq(7)', nRow).html(aoData.user_name);
							    } 
/* 							    if(aoData.name != ""){
							       if (aoData.name.length > 25) {
					                jQuery('td:eq(1)', nRow).html( aoData.name.substr(0, 25)+"...");
					               }
							    }
								if(aoData.introduction != ""){
								   if (aoData.introduction.length > 8) {
					                jQuery('td:eq(2)', nRow).html( aoData.introduction.substr(0, 8)+"...");
					               }
								}
								if(aoData.address != ""){
								   if (aoData.address.length > 8) {
					                jQuery('td:eq(3)', nRow).html( aoData.address.substr(0, 8)+"...");
					               }
								} 
								*/
					        },
							"fnServerParams" : function (aoData) {
								aoData.push(
								{ "name": "status", "value": jQuery("#status").val() },
								{ "name": "courseId", "value": jQuery("#courseId").val() }
								    );
							},
							aoColumns: [
// 								{"mDataProp": "newId", "sClass": "thead-tr-th"},
								{"mDataProp": "code", "sClass": "thead-tr-th"},
								{"mDataProp": "course_name","sClass": "thead-tr-th"},
								{"mDataProp": "price","sClass": "thead-tr-th"},
								{"mDataProp": "number","sClass": "thead-tr-th"},
								{"mDataProp": "original_price","sClass": "thead-tr-th"},
								{"mDataProp": "pay_price","sClass": "thead-tr-th"},
								{"mDataProp": "pay_type","sClass": "thead-tr-th"},
								{"mDataProp": "phone","sClass": "thead-tr-th"},
								{"mDataProp": "status","sClass": "thead-tr-th"}
							],
							columnDefs: [
						/* 	{
								"targets": [0],
								"data": "newId", //数据列名
								"render": function(data, type, row,full) { //返回自定义内容
									var html = "";
									html += "<a href='goSellerSave?id="+data+"' class='btn btn-secondary btn-sm btn-icon icon-left'>修改</a>";
									html += "<a href='javascript:void(0);' onclick='deleteSeller(this);' id="+data+" class='btn btn-danger btn-sm btn-icon icon-left'>删除</a>";
									if(row.flag == 0){
									html += "<a href='javascript:void(0);' onclick='cancel(this);' id="+data+" class='btn btn-info btn-sm btn-icon icon-left'>禁用</a>";
									}else{
									html += "<a href='javascript:void(0);' onclick='publish(this);' id="+data+" class='btn btn-info btn-sm btn-icon icon-left'>启用</a>";
									}
								return html;
								}
							}, */
							{
								"targets": [6],
								"data": "pay_type", //数据列名
								"render": function(data, type, row,full) { //返回自定义内容
									if(data == 1){
									   return "<span>支付宝</span>";
									}else if(data == 2){
									   return "<span>微信</span>";
									}else{
										 return "<span>"+"未知"+"</span>";
									}
							  	}
							},
							{
								"targets": [8],
								"data": "status", //数据列名
								"render": function(data, type, row,full) { //返回自定义内容
								if(data == 1){
								   return "<span>待付款</span>";
								}else if(data == 2){
								   return "<span>已付款(未消费)</span>";
								}else if(data == 3){
								   return "<span>已消费(未评论)</span>";
								}else if(data == 4){
								   return "<span>已评论</span>";
								}else if(data == 5){
								   return "<span>已退款(已过期)</span>";
								}
							  }
							}
							
							],
							bAutoWidth: false,
							bSort: false,
							bStateSave: true,
							dom: "t" + "<'row'<'col-xs-4'i><'col-xs-8'p>>",
							bProcessing: true,
							bPaginate: true,
							sPaginationType: "full_numbers",
							sScrollX: "100%",
							oLanguage: {
								sLengthMenu: "每页显示 _MENU_ 条记录",
								sInfo: "",
								sInfoFiltered: "(从 _MAX_ 条数据中检索)",
								sInfoEmpty: "没有数据",
								sZeroRecords: "没有检索到数据",
								sProcessing: "正在分页加载...",
								oPaginate: {
									sFirst: "首页",
									sPrevious: "前一页",
									sNext: "后一页",
									sLast: "尾页"
								},
							}
						});
					});
						//启用
						function publish(e){
						    var id = e.id;
						    var data = {
							    id  : id,
							    type:"pub"
						    };
							if(confirm("确定要启用?")){
								jQuery.ajax({
								    url:'deleteSeller',
								    data: data,
								    type:'post',
								    dataType:'json',
								    success:function(data){
								    if(data.flag = "success"){
								        alert("启用成功!");
								        sellerList.fnPageChange(parseInt($(".pagination").find("li[class='paginate_button active'] a").html())-1);
								        sellerList.fnReloadAjax();
								    }else{
								        alert("启用失败!");
								       }
								    },
								     error : function() {
								          alert("服务器连接失败！");    
								     }    
								});
							}
						}
						
						//禁用
						function cancel(e){
						    var id = e.id;
						    var data = {
							    id  : id,
							    type:"cel"
						    };
							if(confirm("确定要禁用?")){
								jQuery.ajax({
								    url:'deleteSeller',
								    data: data,
								    type:'post',
								    dataType:'json',
								    success:function(data){
								    if(data.flag = "success"){
								        alert("禁用成功!");
								        sellerList.fnPageChange(parseInt($(".pagination").find("li[class='paginate_button active'] a").html())-1);
								        sellerList.fnReloadAjax();
								    }else{
								        alert("禁用失败!");
								       }
								    },
								     error : function() {
								          alert("服务器连接失败！");    
								     }    
								});
							}
						}
						
						//模糊查询
						function selectOrders(){
							ordersList.fnDraw();
						}
					</script>
					
					<table class="table table-bordered table-striped " id="example-2" data-pattern="priority-columns">
						<thead>
							<tr>
<!-- 							<th style="font-size: 13px;">操作</th> -->
								<th style="font-size: 13px;">订单号</th>
								<th style="font-size: 13px;">课程名称</th>
								<th style="font-size: 13px;">单价</th>
								<th style="font-size: 13px;">数量</th>
								<th style="font-size: 13px;">原总价</th>
								<th style="font-size: 13px;">实际支付</th>
								<th style="font-size: 13px;">支付方式</th>
								<th style="font-size: 13px;">名字(手机号)</th>
								<th style="font-size: 13px;">状态</th>
							</tr>
						</thead>
						<tbody class="middle-align">
						</tbody>
					</table>
					
				</div>
			</div>
			<!-- Main Footer -->
			<!-- Choose between footer styles: "footer-type-1" or "footer-type-2" -->
			<!-- Add class "sticky" to  always stick the footer to the end of page (if page contents is small) -->
			<!-- Or class "fixed" to  always fix the footer to the end of page -->
			<footer class="main-footer sticky footer-type-1">
				
				<div class="footer-inner">
				
					<!-- Add your copyright text here -->
					<div class="footer-text">
						&copy; 2016 
						<strong>Perfit</strong> 
					</div>
					
					
					<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
					<div class="go-up">
						<a href="#" rel="go-top">
							<i></i><!-- class="fa-angle-up" -->
						</a>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="$!path/js/admin_activity/datatables/dataTables.bootstrap.css">

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

	<!-- JavaScripts initializations and stuff -->
	<script src="$!path/js/admin_activity/xenon-custom.js"></script>
	
				<!-- Modal 1 (Basic)-->
	<div class="modal fade" id="modal-1">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title"><strong>商家描述</strong></h4>
				</div>
				
				<div class="modal-body">
					<div id="description"></div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="xenon-loading-bar"><span data-pct="0" style=""></span></div>
</body>
</html>
