var express = require('express');
var router = express.Router();

// 渲染contact页面
router.get('/', function(req, res, next) {
  res.render('contact');
});

module.exports = router;