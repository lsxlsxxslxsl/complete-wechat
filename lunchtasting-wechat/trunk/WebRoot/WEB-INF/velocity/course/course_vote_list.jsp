#parse("./common/global_helper.jsp")
<!DOCTYPE HTML>
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
    <title>人气投票</title>

    <link rel="stylesheet" type="text/css" href="$!staticPrefix/wechat/css/plugs/normalize.css">
    <link rel="stylesheet" type="text/css" href="$!staticPrefix/wechat/css/goods/common.css">
    <link rel="stylesheet" href="$!staticPrefix/wechat/css/course/course_voteDet-004.css" />
</head>
<body>
<div class="wrapBox wrapBox-phone">
    <header class="vote-header vote-detHeader">
        <img src="$!staticPrefix/wechat/images/vote/new/vote-logo.png" alt="">
        <a class="moreImg" href="javascript:void(0)"><i>更多狗主人</i></a>
    </header>
    <section class="vote-box">
        <section class="vote-headDet">
           	#foreach($bean in $list)
            <a href="javascript:;"><img src="$bean.user_img_url" alt=""></a>
			#end            
        </section>
    </section>
</div>
<script src="$!staticPrefix/wechat/js/plugs/jquery-1.12.0.min.js"></script>
<script>
    jQuery(function(){
        jQuery('.vote-headDet a').css('height',jQuery('.vote-headDet a').width()+'px');
    })
</script>

</body>
</html>