var express = require('express');
var router = express.Router();

// 渲染select页面
router.get('/', function(req, res, next) {
  res.render('select');
});

module.exports = router;