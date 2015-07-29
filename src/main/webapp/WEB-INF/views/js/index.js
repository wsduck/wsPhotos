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