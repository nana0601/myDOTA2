var express = require('express');
var router = express.Router();

// 渲染online页面
router.get('/', function(req, res, next) {
  res.render('online');
});

module.exports = router;