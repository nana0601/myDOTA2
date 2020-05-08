$(function(){
	var gameType = $('#select').find($('#def')).text();
	var keyWord = $('.search').val();
	var data = {
		gameType,
		keyWord
	}
	$.ajax({
		url:'/getSearchList/getData',
		type:'post',
		data:data,
		success:function(data){
			console.log(data)
			if(data.length != 0){
				data.forEach((v,i) =>{
					var li = document.createElement('li');
					var a = document.createElement('a');
					a.innerHTML =v.question;
					var p = document.createElement('p');
					p.innerHTML=v.answer;
					li.append(a);
					li.append(p);
					$('.searchList').append(li);
				})
			}else{
				var li = document.createElement('li');
				li.innerHTML = '没有相关数据';
				li.style.color = 'red';
				li.style.textAlign = 'center';
				$('.searchList').append(li);
			}
		},
		error:function(err){
			console.log(err);
		}
	})
})