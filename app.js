var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var serviceRouter = require('./routes/service');
var onlineRouter = require('./routes/online');
var contactRouter = require('./routes/contact');
var parentsRouter = require('./routes/parents');
var selectRouter = require('./routes/select');
var getSearchListRouter = require('./routes/getSearchList');


var app = express();

var ejs = require('ejs');

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.engine('ejs',ejs.__express);
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/service', serviceRouter);
app.use('/online', onlineRouter);
app.use('/contact', contactRouter);
app.use('/parents', parentsRouter);
app.use('/select', selectRouter);
app.use('/getSearchList',getSearchListRouter);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
