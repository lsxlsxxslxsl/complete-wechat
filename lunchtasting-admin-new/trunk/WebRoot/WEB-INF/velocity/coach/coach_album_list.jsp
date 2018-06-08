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
    <span class="modular fl"><i class="user"></i><em>教练相册列表-$!coach.name</em></span>
    <span class="modular fr"><a href="/coach/album/add?coach_id=$!coach.id" class="pt-link-btn">+添加教练相册图片</a></span>
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
     <th>编号</th>
     <th>图片</th>
     <th>操作</th>
   </tr>
   
   #foreach($bean in $list)
   <tr class="tr-coachAlbum$!bean.id">
    <td>
     <input type="checkbox"/>
     <span class="middle">$!bean.id</span>
    </td>
    <td class="center"><img src="$!bean.img_url" width="100pxpx" height="100px" js-big="$!bean.img_url_big"/></td>
    <td class="center">
      <a id="js-coachAlbum-delete" js-attr-coachAlbumId="$!bean.id" class="inline-block" title="删除">
      	<img src="$!staticPrefix/admin/images/icon_drop.gif"/>
      </a>
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
 <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="$!staticPrefix/admin/js/course/coach_album.js"></script>
</body>
</html>