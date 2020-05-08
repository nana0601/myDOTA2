$(function() {
	var select = $('#select');
	var option;
	var li = $('.gameCategory li');
	var ul = $('.gameBox');
	var game, a, i, r;
	var gameList = [];
	$.ajax({
		url: '/service/getGame',
		type: 'post',
		data: '',
		success: function(data) {
			data.forEach(function(value, index) {
				//下拉框选择游戏
				//创建option标签
				option = $('<option></option>');
				// 向option标签加入内容
				option.html(value.name);
				//添加option标签到select中
				select.append(option);

				// tab切换游戏 默认显示的
				if ($(li[index]).hasClass('active')) {
					var category = $(li[index]).text();
					getData(category, gameList, ul, game, a, i, r)
				}
			})
		},
		error: function(err) {
			console.log(err)
		}
	})

	// tab切换游戏
	li.click(function() {
		if ($(this).hasClass('active')) {
			return;
		} else {
			// 先移出 再创建
			$(ul).find('li').remove();
			gameList = [];
			var index = $(this).index();
			$(this).addClass('active').siblings().removeClass('active');
			$('.line').css({
				'left': 36 + index * 134,
				'transition': 'all .2s linear'
			});
			var name = $(this).text();
			getData(name, gameList, ul, game, a, i, r)
		}
	})

	function getData(data, gameList, ul, game, a, i, r) {
		$.ajax({
			url: '/service/selectGame',
			type: 'post',
			data: data,
			success: function(data) {
				data.forEach((value, index) => {
					if (value.category == this.data) {
						gameList.push(value);
					}
				})
				gameList.forEach(function(value, index) {
					game = $('<li></li>');
					a = $('<a></a>');
					a.text(value.name);
					i = $(`<i class="${value.hot}">`);
					r = $(`<i class="${value.recent}">`);
					game.append(a);
					game.append(i);
					game.append(r);
					ul.append(game);
				})
			},
			error: function(err) {
				console.log(err)
			}
		})
	}
	
	var len = $('.head').height();
	$(window).scroll(function(){
		if($(document).scrollTop() > len){
			$('.goTop').show();
		}else{
			$('.goTop').hide();
		}
	})
	$('.goTop').click(function(){
		$('html').animate({scrollTop:0},500);
	})
})
