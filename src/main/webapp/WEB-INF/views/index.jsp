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
				<button class="btn new-album-btn" type="button">
					<i class="icon-plus"></i>创建相册
				</button>
			</div>
		</div>

		<div id="album-main" class="row-fluid">
			<div class="span1"></div>
			<div id="show-albums-area" class="span10"></div>
			<div class="span1"></div>
		</div>

		<div class="row-fluid">
			<div id="span-load-more" class="span12 load-more-album">
				<span>载入更多相册</span>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span2"></div>
			<div id="progress-bar"
				class="progress progress-striped active span8"
				style="display: none;">
				<div class="bar" style="width: 100%"></div>
			</div>
			<div class="span2"></div>
		</div>
		<div id="footer" class="row-fluid about">
			<div class="span12">
				<p class="about-content">@2015富士通南大&nbsp;&nbsp;|&nbsp;&nbsp;第二事业部第三开发部&nbsp;&nbsp;|&nbsp;&nbsp;意见反馈&nbsp;&nbsp;|&nbsp;&nbsp;用户投诉</p>
			</div>
		</div>
	</div>
</body>
<script src="./js/jquery-1.11.2.min.js"></script>
<script src="./js/common.js"></script>
<script src="./js/index.js"></script>
<script type="text/javascript">
	/*当前的菜单选项*/
	var current_menu = 'album';
	/*每次请求相册的数目*/
	var PAGE_SIZE = 10;
	/*当前的已经翻过的页数*/
	var current_page = 1;

	/*页面加载完后执行*/
	$(function() {
		//绑定事件
		bindMenuEvent();
		//绑定加载更多相册按钮
		bindLoadMoreEvent();
		//加载相册信息(第一页)
		loadAlbumsInfo(current_page);
	});
</script>
</html>