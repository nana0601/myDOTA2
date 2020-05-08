$(function(){
	var list1 = [];
	var list2 = [];
	var list3 = [];
	var list4 = [];
	var a1,a2,a3,a4;
	var base = '../images/';
	$.ajax({
		url: '/service/selectGame',
		type: 'post',
		data: '',
		success: function(data) {
			console.log(data)
			data.forEach(function(value,index){
				if(value.category == '客户端游戏'){
					list1.push(value)
				}
				if(value.category == '电竞游戏'){
					list2.push(value)
				}
				if(value.category == '网页游戏'){
					list3.push(value)
				}
				if(value.category == '平台产品'){
					list4.push(value)
				}
			})
			add(list1,a1,$('.one'));
			add(list2,a2,$('.two'));
			add(list3,a3,$('.three'));
			add(list4,a4,$('.four'));
		},
		error: function(err) {
			console.log(err)
		}
	})
	
	function add(arr,tag,contain){
		arr.forEach(function(val,ind){
			tag = `<a href="">${val.name}<img src="${base}${val.img}" alt="">
			</a>`;
			contain.append(tag);
		})
	}
})