/**
 * This is the Java Script file for index.jsp.
 */
//绑定载入更多相册事件
function bindLoadMoreEvent() {
	$("#span-load-more").mouseover(function() {
		$(this).attr("class", "span12 load-more-album-hover");
	}).mouseout(function() {
		$(this).attr("class", "span12 load-more-album");
	});
}
//绑定菜单上的事件
function bindMenuEvent() {
	//绑定相册按钮事件
	$('#menu-album').on("click", function(event) {
		var item = $('#menu-album');
		item.attr("class", "span4 menu-item-selected");
		item = $('#menu-map');
		item.attr("class", "span4 menu-item");
		item = $('#menu-timeline');
		item.attr("class", "span4 menu-item");
		current_menu = 'album';
	});
	$('#menu-album').on("mouseover", function(event) {
		var item = $('#menu-album');
		item.attr("class", "span4 menu-item-selected");
	});
	$('#menu-album').on("mouseout", function(event) {
		var item = $('#menu-album');
		if (current_menu !== 'album') {
			item.attr("class", "span4 menu-item");
		}
	});
	//绑定地图事件
	$('#menu-map').on("click", function(event) {
		var item = $('#menu-map');
		item.attr("class", "span4 menu-item-selected");
		item = $('#menu-album');
		item.attr("class", "span4 menu-item");
		item = $('#menu-timeline');
		item.attr("class", "span4 menu-item");
		current_menu = 'map';
	});
	$('#menu-map').on("mouseover", function(event) {
		var item = $('#menu-map');
		item.attr("class", "span4 menu-item-selected");
	});
	$('#menu-map').on("mouseout", function(event) {
		var item = $('#menu-map');
		if (current_menu !== 'map') {
			item.attr("class", "span4 menu-item");
		}
	});
	//绑定时间轴事件
	$('#menu-timeline').on("click", function(event) {
		var item = $('#menu-timeline');
		item.attr("class", "span4 menu-item-selected");
		item = $('#menu-album');
		item.attr("class", "span4 menu-item");
		item = $('#menu-map');
		item.attr("class", "span4 menu-item");
		current_menu = 'timeline';
	});
	$('#menu-timeline').on("mouseover", function(event) {
		var item = $('#menu-timeline');
		item.attr("class", "span4 menu-item-selected");
	});
	$('#menu-timeline').on("mouseout", function(event) {
		var item = $('#menu-timeline');
		if (current_menu !== 'timeline') {
			item.attr("class", "span4 menu-item");
		}
	});
}

/**
 * 获取第几页的相册。
 * @param pageNum 第几页，从1开始计数。
 */
function loadAlbumsInfo(pageNum) {
	var url = "http://localhost:8080/photos/getPageableAlbums";
	var sendData = {
		page: pageNum,
		pageSize: PAGE_SIZE
	}
	//发起ajax请求获取相册数据
	fireAjaxByPost(url, sendData, 
		function(ret){
			//请求成功回调函数
			var albumCount = ret.count;
			var i = 0;
			var albums = ret.albums;
			//遍历增加相册元素
			for ( i=0; i<albumCount; i++) {
				var albumInfo = albums[i];
				var appendAlbumHtmlContent = 
					"<div data-id=\""+ albumInfo.id + "\" class=\"album-item\">" +
						"<div class=\"album-item-cover\" style=\"background-image: url(" + albumInfo.photoUrlForAlbumCover +")\"></div>" +
						"<p class=\"album-item-name\">" + albumInfo.albumName + "</p>" +
						"<p class=\"album-item-date\">" + formatDate(new Date(albumInfo.updateTime)) + "</p>" +
					"</div>";
				$("#show-albums-area").append(appendAlbumHtmlContent);
			}
		}, 
		function(errMsg) {
			//请求失败函数
			alert(errMsg);
		}
	);
}