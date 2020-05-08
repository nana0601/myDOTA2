var express = require('express');
var router = express.Router();
var mysql = require('mysql');

//引入数据库配置文件
var db = require('./../config/db');

var conn = mysql.createConnection(db);
conn.connect();
console.log('数据库连接成功')
/* GET home page. */
// 渲染service页面
router.get('/', function(req, res, next) {
  res.render('service');
});

router.post('/getGame',function(req,res,next){
	var selectSql = 'SELECT name FROM game_table group by name ' ;
	conn.query(selectSql,function(err,result){
		if(err){
			console.error(err);
			return;
		}else{
			res.send(result)
		}
	})
})
router.post('/selectGame',function(req,res,next){
	var selectSql = 'SELECT * FROM game_table' ;
	conn.query(selectSql,function(err,result){
		if(err){
			console.error(err);
			return;
		}else{
			res.send(result)
		}
	})
})
module.exports = router;
