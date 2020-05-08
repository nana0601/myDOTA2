$(function() {
	var sel, sear;
	$('.btn').click(function() {
		if ($('.search').val() == '' || $('#select').val() == null) {
			alert('请选择类别或输入问题、服务编号');
		} else {
			sel = $('#select').val();
			sear = $('.search').val();
			var data = {
				sel,
				sear
			}
			console.log(data)
			window.location.href = '/getSearchList?keyWord=' + data.sear + '&gameType=' + data.sel;
		}
	})
})
