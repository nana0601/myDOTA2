var express = require('express');
var router = express.Router();
var url = require('url');
var mysql = require('mysql');

//引入数据库配置文件
var db = require('./../config/db');

var conn = mysql.createConnection(db);
conn.connect();
console.log('数据库连接成功')
// 渲染getSearchList页面
router.get('/', function(req, res, next) {
	var data = url.parse(req.url, true).query;
	console.log(data)
	res.render('getSearchList', {
		keyWord: data.keyWord,
		gameType: data.gameType
	})
});

router.post('/getData', function(req, res, next) {
	var selectSql =
		`SELECT question,answer FROM service_table WHERE category='${req.body.gameType}' AND question LIKE '%${req.body.keyWord}%'`;
	conn.query(selectSql, function(err, result) {
		if (err) {
			console.error(err);
			return;
		} else {
			console.log(result);
			res.send(result)
		}
	})
})
module.exports = router;
