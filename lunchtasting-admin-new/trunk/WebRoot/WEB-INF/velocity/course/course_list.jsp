#parse("./common/global_helper.jsp")
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>会员列表 </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="$!staticPrefix/admin/css/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="$!staticPrefix/admin/js/jquery.js"></script>
<script src="$!staticPrefix/admin/js/public.js"></script>
</head>
<body>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>课程列表</em></span>
    <span class="modular fr"><a href="/course/add" class="pt-link-btn">+添加课程</a></span>
  </div>
  <div class="operate">
   <!--  
   <form>
    <select class="inline-select">
     <option>选择会员等级</option>
     <option>白金会员</option>
     <option>黄金会员</option>
    </select>
    <input type="text" class="textBox length-long" placeholder="输入教练姓名"/>
    <input type="button" value="查询" class="tdBtn"/>
   </form>-->
  </div>
  <table class="list-style Interlaced">
   <tr>
     <th width="14%">编号</th>
     <th width="10%">名称</th>
     <th width="10%">类型</th>
     <th width="15%">特征</th>
     <th width="10%">标签</th>
     <th width="10%">亮点</th>
     <th width="30%">流程</th>
     <th>图片</th>
     <th>多图</th>
     <th>套餐数</th>
     <th>健身房数</th>
     <th>操作</th>
   </tr>
   
   #foreach($bean in $list)
   <tr>
    <td>
     <input type="checkbox"/>
     <span class="middle">$!bean.id</span>
    </td>
    <td class="center">$!bean.name</td>
    <td class="center">$!bean.mold</td>
    <td class="center">$!bean.characteristic</td>
    <td class="center">$!bean.tag</td>
    <td class="center">$!bean.highlight</td>
    <td class="center">$!bean.process</td>
    <td class="center"><img src="$!bean.img_url" width="100pxpx" height="100px" js-big="$!bean.img_url_big"/></td>
    <td class="center">
   		#foreach($image in $bean.img_list)
   		<img src="$!image.img_url" width="100pxpx" height="100px" js-big="$!image.img_url_big"/>	
   		#end
    </td>
    <td><a href="/course/meal/list?course_id=$!bean.id" style="color:#000;text-decoration:underline;">$!bean.course_meal_count</a></td>
    <td><a href="/course/gym/list?course_id=$!bean.id" style="color:#000;text-decoration:underline;">$!bean.gym_count</a></td>
    <td class="center">
     <a href="/course/edit?course_id=$!bean.id" class="inline-block" title="编辑"><img src="$!staticPrefix/admin/images/icon_edit.gif"/></a>
     <!-- 
     <a href="account.html" class="inline-block" title="资金管理"><img src="$!staticPrefix/admin/images/icon_account.gif"/></a>
     <a class="inline-block" title="删除"><img src="$!staticPrefix/admin/images/icon_drop.gif"/></a> -->
    </td>
   </tr>
   #end
  
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
      <!-- Operation 
	  <div class="BatchOperation fl">
	   <input type="checkbox" id="del"/>
	   <label for="del" class="btnStyle middle">全选</label>
	   <input type="button" value="批量删除" class="btnStyle"/>
	  </div>-->
	  <!-- turn page -->
	  <div class="turnPage center fr">
	   <a>第一页</a>
	   <a>1</a>
	   <a>最后一页</a>
	  </div>
  </div>
 </div>
</body>
</html>