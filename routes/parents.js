var express = require('express');
var router = express.Router();

// 渲染parents页面
router.get('/', function(req, res, next) {
  res.render('parents');
});

module.exports = router;