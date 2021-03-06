#parse("base.jsp")
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>赛事管理</title>
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
	<link rel="stylesheet" href="$!path/css/admin_activity/style.css" />   
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
					<h1 class="title">赛事管理</h1>
					<p class="description"></p>
				</div>
				
					<div class="breadcrumb-env">
					
								<ol class="breadcrumb bc-1">
									<li>
							<a href="goToIndex"><i></i>首页</a>
						</li>
							<li class="active">
						
										<strong>赛事管理</strong>
								</li>
								</ol>
								
				</div>
					
			</div>
			<!-- Removing search and results count filter -->
			<div class="panel panel-default">
				<!--  条件查询 -->
				<div id="hideDiv">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="activityDate">赛事日期</label>
							<div class="col-sm-2" style="color: #cc3f44;">
								<div class="input-group">
									<input type="text" class="form-control daterange"
										id="matchDate" name="matchDate" readonly="readonly"
										placeholder="选择日期" style="width: 170px;" />
								</div>
							</div>
							<label class="col-sm-2 control-label"
								for="restaurant.restaurantName">赛事名称</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="name"
									style="width: 173px;">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">赛事地址</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="address"
									style="width: 170px;">
							</div>
							<label class="col-sm-2 control-label">赛事分类</label>
							<div class="col-sm-2">
								<select class="form-control" id="type" style="width:173px;">
									<option value="">全部</option>
									#foreach ($category in $matchCategory)
       								<option value="$!{category.id}">$!{category.name}</option>
								    #end
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="panel-heading" style="padding-left: 17px;">
					<h3 class="panel-title">
					    <a href="javascript:selectMatch();" class="btn btn-secondary btn-sm btn-icon icon-left" style="color:#ffffff;">查询</a>
						<a href="goMatchSave" class="btn btn-info btn-sm btn-icon icon-left" style="color:#ffffff;">添加</a>
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
				    var role = $!session.getAttribute('login_session_user').roleId;
				    var userId = $!session.getAttribute('login_session_user').id;
					var matchList;
					jQuery(document).ready(function($){
						    matchList = jQuery("#example-2").dataTable({
							sAjaxSource: "queryMatchList",
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
								if(aoData.content != ""){
								   if (aoData.content.length > 10) {
					                jQuery('td:eq(3)', nRow).html( aoData.content.substr(0, 10)+"...");
					                }
								}
// 					            if(aoData.name != ""){
// 					               if (aoData.name.length > 10) {
// 					                jQuery('td:eq(1)', nRow).html( aoData.name.substr(0, 10)+"...");
// 					                }
// 					            }
					            if(aoData.address != ""){
					              if (aoData.address.length > 10) {
					                jQuery('td:eq(5)', nRow).html( aoData.address.substr(0, 10)+"...");
					                }
					            }
					        },
							"fnServerParams" : function (aoData) {
								aoData.push(
								{ "name": "matchDate", "value": jQuery("#matchDate").val() },
								{ "name": "name", "value": jQuery("#name").val() },
								{ "name": "type", "value": jQuery("#type").val() },
								{ "name": "address", "value": jQuery("#address").val() }
								    );
							},
							aoColumns: [
								{"mDataProp": "newId", "sClass": "thead-tr-th"},
								{"mDataProp": "categoryName", "sClass": "thead-tr-th"},
								{"mDataProp": "name", "sClass": "thead-tr-th"},
								{"mDataProp": "content","sClass": "thead-tr-th"},
								{"mDataProp": "price","sClass": "thead-tr-th"},
								{"mDataProp": "address","sClass": "thead-tr-th"}
							],
							columnDefs: [{
								"targets": [0],
								"data": "newId", //数据列名
								"render": function(data, type, row,full) { //返回自定义内容
									var html = "";
									html += "<a href='goMatchSave?id="+data+"' class='btn btn-secondary btn-sm btn-icon icon-left'>修改</a>";
									html += "<a href='javascript:void(0);' onclick='deleteMatch(this);' id="+data+" class='btn btn-danger btn-sm btn-icon icon-left'>删除</a>";
									if(row.flag == 0){
									html += "<a href='javascript:void(0);' onclick='cancel(this);' id="+data+" class='btn btn-info btn-sm btn-icon icon-left'>撤销</a>";
									}else{
									html += "<a href='javascript:void(0);' onclick='publish(this);' id="+data+" class='btn btn-info btn-sm btn-icon icon-left'>发布</a>";
									}
									html += "<a href='javascript:void(0);' onclick='preview(\""+row.name+"\",\""+row.address+"\",\""+row.price+"\",\""+row.content+"\",\""+row.beginTime+"\",\""+row.endTime+"\",\""+row.imgUrl+"\",\""+row.enrollNum+"\",this);' id="+data+" class='btn btn-orange btn-sm btn-icon icon-left'>预览</a>";
// 									html += "<a href='goEnrollList?activityId="+data+"' class='btn btn-secondary btn-sm btn-icon icon-left'>详细</a>";
									html += "<a href='javascript:void(0);' onclick='topMatch(this);' id="+data+" class='btn btn-info btn-sm btn-icon icon-left'>置顶</a>";
								return html;
								}
							}],
							bAutoWidth: false,
							bSort: false,
							bStateSave: true,
							dom: "t" + "<'row'<'col-xs-4'i><'col-xs-8'p>>",
							bProcessing: true,
							bPaginate: true,
							sPaginationType: "full_numbers",
							sScrollX: "110%",
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
					
					    //删除
						function deleteMatch(e){
						    var id = e.id;
						    var data = {
							    id  : id,
							    type:"del"
						    };
							if(confirm("确定要删除?")){
								jQuery.ajax({
								    url:'deleteMatch',
								    data: data,
								    type:'post',
								    dataType:'json',
								    success:function(data){
								    if(data.flag = "success"){
								        alert("删除成功!");
								        matchList.fnPageChange(parseInt($(".pagination").find("li[class='paginate_button active'] a").html())-1);
								        matchList.fnReloadAjax();
								    }else{
								        alert("删除失败!");
								       }
								    },
								     error : function() {
								          alert("服务器连接失败！");    
								     }    
								});
							}
						}
					
						//发布
						function publish(e){
						    var id = e.id;
						    var data = {
							    id  : id,
							    type:"pub"
						    };
							if(confirm("确定要发布?")){
								jQuery.ajax({
								    url:'deleteMatch',
								    data: data,
								    type:'post',
								    dataType:'json',
								    success:function(data){
								    if(data.flag = "success"){
								        alert("发布成功!");
								        matchList.fnPageChange(parseInt($(".pagination").find("li[class='paginate_button active'] a").html())-1);
								        matchList.fnReloadAjax();
								    }else{
								        alert("发布失败!");
								       }
								    },
								     error : function() {
								          alert("服务器连接失败！");    
								     }    
								});
							}
						}
						
						//撤销
						function cancel(e){
						    var id = e.id;
						    var data = {
							    id  : id,
							    type:"cel"
						    };
							if(confirm("确定要撤销?")){
								jQuery.ajax({
								    url:'deleteMatch',
								    data: data,
								    type:'post',
								    dataType:'json',
								    success:function(data){
								    if(data.flag = "success"){
								        alert("撤销成功!");
								        matchList.fnPageChange(parseInt($(".pagination").find("li[class='paginate_button active'] a").html())-1);
								        matchList.fnReloadAjax();
								    }else{
								        alert("撤销失败!");
								       }
								    },
								     error : function() {
								          alert("服务器连接失败！");    
								     }    
								});
							}
						}
						
						//模糊查询
						function selectMatch(){
							matchList.fnDraw();
						}
						
                        function add0(m){
                               return m<10?'0'+m:m;
                        }
						function format(shijianchuo){
							//shijianchuo是整数，否则要parseInt转换
							var time = new Date(shijianchuo);
							var y = time.getFullYear();
							var m = time.getMonth()+1;
							var d = time.getDate();
							var h = time.getHours();
							var mm = time.getMinutes();
							var s = time.getSeconds();
							return y+'/'+add0(m)+'/'+add0(d)+' '+add0(h)+':'+add0(mm);
						}
						
						//预览
						function preview(name,address,price,content,beginTime,endTime,imgUrl,enrollNum,e){
// 						    var basepath = "http://ocjov3qs6.bkt.clouddn.com/";
						    var basepath = "$!{baseUrl}";
						    var text;
						    var id = e.id;
								jQuery.ajax({
								    url:'findMatchText',
								    data: {id:id},
								    type:'post',
								    async: false,
								    dataType:'json',
								    success:function(data){
								       text = data.imgText;
								    },
								     error : function() {
// 								          alert("服务器连接失败！");    
								     }    
							});
							$("#matchName").html(name);
							$("#address").html(address);
							$("#beginTime").html(format(parseInt(beginTime)));
							$("#endTime").html(format(parseInt(endTime)));
							$("#imgText").html(text);
							$("#price").html(price);
							$("#content").html(content);
// 							if(imgUrl.substring(0,8) == "activity"){
							  $("#imgUrl").attr('src',basepath+imgUrl);
// 							}else{
// 							  $("#imgUrl").attr('src',imgUrl);
// 							}
							$("#enrollNum").html(enrollNum); 
					        jQuery('#modal-1').modal('show', {backdrop: 'fade'});
					    	show_loading_bar(100);
						}
						
						//置顶
						function topMatch(e){
						    var id = e.id;
								jQuery.ajax({
								    url:'topMatch',
								    data: {id  : id},
								    type:'post',
								    dataType:'json',
								    success:function(data){
								    if(data.flag = "success"){
								        alert("置顶成功!");
								        matchList.fnPageChange(parseInt($(".pagination").find("li[class='paginate_button active'] a").html())-1);
								        matchList.fnReloadAjax();
								    }else{
								        alert("置顶失败!");
								       }
								    },
								     error : function() {
								          alert("服务器连接失败！");    
								     }    
								});
						}
					</script>
					
					<table class="table table-bordered table-striped " id="example-2" data-pattern="priority-columns">
						<thead>
							<tr>
								<th style="font-size: 13px;">操作</th>
								<th style="font-size: 13px;">赛事类别</th>
								<th style="font-size: 13px;">赛事名称</th>
								<th style="font-size: 13px;">赛事简介</th>
								<th style="font-size: 13px;">费用</th>
								<th style="font-size: 13px;">赛事地址</th>
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
						&copy; <script>document.write(new Date().getFullYear())</script> 
						<strong>PerFit</strong> 
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
	
	
	<link rel="stylesheet" href="$!path/js/admin_activity/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="$!path/js/admin_activity/daterangepicker/daterangepicker-bs3.css">
	
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
	
	<!-- Imported scripts on this page -->
	<script src="$!path/js/admin_activity/jquery-validate/jquery.validate.min.js"></script>
	
	<!-- JavaScripts initializations and stuff -->
	<script src="$!path/js/admin_activity/xenon-custom.js"></script>
    
				<!-- Modal 1 (Basic)-->
	<div class="modal fade" id="modal-1">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title"><strong>预览</strong></h4>
				</div>
				
				
	<div class="wrapper-Box">
        <section class="content-com">
            <header class="header-details">
                <img src="" alt="" id="imgUrl">
                <h3 id="matchName">$!{match.name}</h3>
                <div>
                    <p><span><i>0</i>/<i id="enrollNum"></i>报名</span></p>
                    <p><span><i id="price">$!{match.price}</i>元/人</span></p>
                    <p><span><i id="beginTime">$!{beginTime}</i>&nbsp;&nbsp;<i id="endTime">$!{endTime}</i></span></p>
                    <p><span id="address">$!{match.address}</span></p>  
                </div>
            </header>
            <div class="body-details" id="imgText">
                <!--图文混编所在位置-->
            </div>        
        </section>
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
