var express = require('express');
var logger = require('morgan');

var indexRouter = require('./routes/index');

var app = express();

app.use(logger(process.env.NODE_ENV == 'development' ? 'dev' : 'combined'));
app.use(express.json());

app.use('/', indexRouter);

module.exports = app;
