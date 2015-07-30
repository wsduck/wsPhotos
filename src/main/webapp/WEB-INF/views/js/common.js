/******************************************************************************
 * Common functions defined here.
 * Every page should include this file after jQuery.
 *****************************************************************************/

/**
 * 通过Post请求向服务器发送ajax请求以获取相关的返回值。
 * 
 * @param url
 *            请求RESTFUL接口URL
 * @param sendData
 *            发送数据
 * @param onSuccess
 *            请求成功回调函数
 * @param onFail
 *            请求失败回调函数
 * 
 */
function fireAjaxByPost(url, sendData, onSuccess, onFail) {

	var param = JSON.stringify(sendData);

	return $.ajax({
		type : "POST",
		url : url,
		data : {
			param : param
		},
		success : function(retString, textStatus) {
			var ret = $.parseJSON(retString);
			if (ret.result != 0) {
				onFail(ret.message);
				return;
			}

			onSuccess(ret);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			onFail(jqXHR.responseText);
		}
	});
}

/**
 * 格式化日期变量
 * 
 * @param time
 *            时间
 * @returns {String} 格式化后的字符串(2008-12-12 12:00:00)
 */
function formatDate(time) {
	var datetime = new Date();
	datetime.setTime(time);
	var year = datetime.getFullYear();
	var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1)
			: datetime.getMonth() + 1;
	var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime
			.getDate();
	var hour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime
			.getHours();
	var minute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes()
			: datetime.getMinutes();
	var second = datetime.getSeconds() < 10 ? "0" + datetime.getSeconds()
			: datetime.getSeconds();
	return year + "-" + month + "-" + date + " " + hour + ":" + minute + ":"
			+ second;
}