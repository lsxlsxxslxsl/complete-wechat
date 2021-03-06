#parse("./common/global_helper.jsp")
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<script>!function(e){function t(a){if(i[a])return i[a].exports;var n=i[a]={exports:{},id:a,loaded:!1};return e[a].call(n.exports,n,n.exports,t),n.loaded=!0,n.exports}var i={};return t.m=e,t.c=i,t.p="",t(0)}([function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i=window;t["default"]=i.flex=function(e,t){var a=e||100,n=t||1,r=i.document,o=navigator.userAgent,d=o.match(/Android[\S\s]+AppleWebkit\/(\d{3})/i),l=o.match(/U3\/((\d+|\.){5,})/i),c=l&&parseInt(l[1].split(".").join(""),10)>=80,p=navigator.appVersion.match(/(iphone|ipad|ipod)/gi),s=i.devicePixelRatio||1;p||d&&d[1]>534||c||(s=1);var u=1/s,m=r.querySelector('meta[name="viewport"]');m||(m=r.createElement("meta"),m.setAttribute("name","viewport"),r.head.appendChild(m)),m.setAttribute("content","width=device-width,user-scalable=no,initial-scale="+u+",maximum-scale="+u+",minimum-scale="+u),r.documentElement.style.fontSize=a/2*s*n+"px"},e.exports=t["default"]}]);  flex(100, 1);</script>
	<meta name="format-detection" content="telphone=no, email=no">
	<meta name="msapplication-tap-highlight" content="no">
	<meta name="renderer" content="webkit">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="screen-orientation" content="portrait">
	<meta name="x5-orientation" content="portrait">
	<meta name="full-screen" content="true">
	<meta name="x5-screen" content="true">
	<title>教练信息</title>
	<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="$!staticPrefix/wechat/css/plugs/normalize.css">
	<link rel="stylesheet" type="text/css" href="$!staticPrefix/wechat/css/goods/common.css">
	<link rel="stylesheet" type="text/css" href="$!staticPrefix/wechat/css/course/course.css">
</head>

<body>
	<section class="wrapBox wrapBox_iphone">
		<section class="course_coach">
			<section class="coach_header">
				<article class="coach_h_top">
					<img src="$!imgPrefix$!coach.img_url" alt="">
					<div class="coach_hTop_intro">
						<h5>$!coach.name
							#if($!coach.sex == "1")<i class="coach_gender_man"></i>
							#else<i class="coach_gender_women"></i>
							#end
						</h5>
						<span>$!coach.age岁 丨 执教$!coach.coach_year年</span>
					</div>
				</article>
				<p>$!coach.certificate</p>
			</section>
			<section class="coach_content">
				#if("$!list" != "" && $!list.size() > 0)
				<section class="coach_c_photos">
					#foreach($bean in $list)
					<img src="$!staticPrefix/wechat/images/vote/per.jpg" alt="">
					#end				
				</section>
				#end
			</section>
		</section>
	</section>
	<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</body>

</html>