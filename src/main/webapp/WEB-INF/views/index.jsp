<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Cotnent-Type" content="text/html" charset="utf-8" />
<title>我的照片</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./css/photos.css" rel="stylesheet" media="screen">
<link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="container-fluid">
		<div id="header" class="row-fluid">
			<div class="span2"></div>
			<div id="user-header" class="span10">
				<img src="img/user-header.jpg" class="img-circle img-header"></img>
				<span class="header-name">挨踢灰太狼</span>
			</div>
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
			<span class="span2"></span>
		</div>

		<div id="main" class="row-fluid photos-area">
			<div class="span12">
				<div id="photos-container">
					<div class="item">
						<img src="http://pic.sucaibar.com/pic/201306/21/60afb4fa1f.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://pic33.nipic.com/20131009/1081324_135314208109_2.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://pic27.nipic.com/20130217/4085465_003058516110_2.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://www.cnnb.com.cn/pic/0/02/17/04/2170490_233863.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://img.article.pchome.net/00/23/38/79/pic_lib/wm/32.jpg"
							height="100%" width="290px" alt=""></img>
					</div>

					<div class="item">
						<img src="http://new-img1.ol-img.com/115/787/liSbo5NMrfvdM.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://news.xinhuanet.com/shuhua/2012-11/28/124016520_31n.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://pic18.nipic.com/20120201/5446201_093624896000_2.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
					<div class="item">
						<img
							src="http://pic3.bbzhi.com/mingxingbizhi/gaoyuanyuan2/star_starcn_178932_2.jpg"
							height="100%" width="290px" alt=""></img>
					</div>
				</div>
			</div>
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
<script src="./js/imagesloaded.pkgd.min.js"></script>
<script src="./js/masonry.pkgd.min.js"></script>
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

            var $main = $('#photos-container');
            $main.imagesLoaded(function() {
                $main.masonry({
                    columnWidth: 292,
                    itemSelector: '.item'
                });
            });
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