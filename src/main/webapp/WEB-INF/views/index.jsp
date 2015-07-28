<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Cotnent-Type" content="text/html" charset="utf-8" />
<title>我的照片</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./css/index.css" rel="stylesheet" media="screen">
<link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="container-fluid container-fluid-get-ridof-padding">
		<div id="header" class="row-fluid">
			<div class="span1"></div>
			<div id="user-header" class="span10">
				<img src="img/user-header.jpg" class="img-circle img-header"></img>
				<span class="header-name">挨踢灰太狼</span>
			</div>
			<div class="span1"></div>
		</div>
		<div class="row-fluid menu-up-background"></div>
		<div id="menu" class="row-fluid menu-up">
			<div class="span2"></div>
			<div class="span8">
				<div class="row-fluid">
					<div id="menu-album" class="span4 menu-item-selected">
						<p>相册</p>
					</div>
					<div id="menu-map" class="span4 menu-item">
						<p>地图</p>
					</div>
					<div id="menu-timeline" class="span4 menu-item">
						<p>时间轴</p>
					</div>
				</div>
			</div>
			<div class="span2"></div>
		</div>
		
		<div id="album-tools" class="row-fluid">
		    <div class="span1"></div>
		    <div class="span11">
		        <button class="btn new-album-btn" type="button"><i class="icon-plus"></i>创建相册</button>
		    </div>
		</div>

		<div id="album-main" class="row-fluid">
			<div class="span1"></div>
			<div class="span10">
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
				<div class="album-item">
					<div class="album-item-cover"></div>
					<p class="album-item-name">巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛巴厘岛</p>
					<p class="album-item-date">2014-08-12</p>
				</div>
			</div>
			<div class="span1"></div>
		</div>

		<div class="row-fluid">
			<div id="span-load-more" class="span12 load-more-album">
				<span>载入更多相册</span>
			</div>
		</div>
		<div id="footer" class="row-fluid about">
			<div class="span12">
				<p class="about-content">@2015富士通南大&nbsp;&nbsp;|&nbsp;&nbsp;第二事业部第三开发部&nbsp;&nbsp;|&nbsp;&nbsp;意见反馈&nbsp;&nbsp;|&nbsp;&nbsp;用户投诉</p>
			</div>
		</div>

	</div>
</body>
<script src="./js/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
    // var of this page
    var current_menu = 'album';

    $(function() {
        ///////////////////////////////////////////////////////
        // 函数调用区
        ///////////////////////////////////////////////////////
        initPage();
        
        ///////////////////////////////////////////////////////
        // 函数定义区
        ///////////////////////////////////////////////////////
        function initPage() {
            //绑定事件
            bindMenuEvent();
            bindLoadMoreEvent();
        }//End of initPage
        //绑定载入更多相册事件
        function bindLoadMoreEvent() {
            $("#span-load-more").mouseover(function(){$(this).attr("class", "span12 load-more-album-hover");}).mouseout(function(){$(this).attr("class", "span12 load-more-album");});
        }
        //绑定菜单上的事件
        function bindMenuEvent() {
            //绑定相册按钮事件
            $('#menu-album').on(
                "click",
                function(event) {
                    var item = $('#menu-album');
                    item.attr("class", "span4 menu-item-selected");
                    item = $('#menu-map');
                    item.attr("class", "span4 menu-item");
                    item = $('#menu-timeline');
                    item.attr("class", "span4 menu-item");
                    current_menu = 'album';
                }
            );
            $('#menu-album').on(
                "mouseover",
                function(event) {
                    var item = $('#menu-album');
                    item.attr("class", "span4 menu-item-selected");
                }
            );
            $('#menu-album').on(
                "mouseout",
                function(event) {
                    var item = $('#menu-album');
                    if (current_menu !== 'album') {
                        item.attr("class", "span4 menu-item");
                    }
                }
            );
            //绑定地图事件
            $('#menu-map').on(
                "click",
                function(event) {
                    var item = $('#menu-map');
                    item.attr("class", "span4 menu-item-selected");
                    item = $('#menu-album');
                    item.attr("class", "span4 menu-item");
                    item = $('#menu-timeline');
                    item.attr("class", "span4 menu-item");
                    current_menu = 'map';
                }
            );
            $('#menu-map').on(
                "mouseover",
                function(event) {
                    var item = $('#menu-map');
                    item.attr("class", "span4 menu-item-selected");
                }
            );
            $('#menu-map').on(
                "mouseout",
                function(event) {
                    var item = $('#menu-map');
                    if (current_menu !== 'map') {
                        item.attr("class", "span4 menu-item");
                    }
                }
            );
            //绑定时间轴事件
            $('#menu-timeline').on(
                "click",
                function(event) {
                    var item = $('#menu-timeline');
                    item.attr("class", "span4 menu-item-selected");
                    item = $('#menu-album');
                    item.attr("class", "span4 menu-item");
                    item = $('#menu-map');
                    item.attr("class", "span4 menu-item");
                    current_menu = 'timeline';
                }
            );
            $('#menu-timeline').on(
                "mouseover",
                function(event) {
                    var item = $('#menu-timeline');
                    item.attr("class", "span4 menu-item-selected");
                }
            );
            $('#menu-timeline').on(
                "mouseout",
                function(event) {
                    var item = $('#menu-timeline');
                    if (current_menu !== 'timeline') {
                        item.attr("class", "span4 menu-item");
                    }
                }
            );
        }
    });
    </script>
</html>