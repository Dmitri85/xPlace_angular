var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var cons = require('consolidate');
var session = require('express-session');
var app = express();

var login = require('./modal/login')
var index = require('./routes/index');


var mySql = require('mysql');
var con = mySql.createConnection({
    host: 'localHost',
    user:'root',
    password: 'dmitririr2904',
    database: 'xplace'
});

con.connect(function (err){
    if (err) throw err;
    console.log('connected!!!');   
});

// view engine setup
app.engine('html', cons.swig)
app.set('view', path.join(__dirname, 'public'));
app.set('view engine', 'html');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({ secret: '123456789abc', cookie: { maxAge: 600000000 }, resave: true, saveUninitialized: true }));

let currentLogin = null ;

app.post('/login', function (req, res, next) {
    let sess = req.session;
    let {userName,password} = req.body

    login.loginCheck(userName, password, (result) => {
        if (result) {
            sess.logged = true;
            sess.user = result;
            currentLogin = result;
            res.send({ log: sess.logged, user: result });
        } else {
            sess.logged = false;
            res.send(sess.logged);
        }
    });

});

app.post('/login_check', function (req, res, next) {
    if(currentLogin){
        res.send(currentLogin)
    }else{
        res.send(null)
    }
});

app.post('/register', function (req, res, next) {
    let {username,firstname,lastname,password,email,about,company,maxDist,cityID} = req.body
    login.postNewUser(username,firstname,lastname,password,email,about,company,maxDist,cityID)
    res.send('register OK!!!')

});

app.use('/', index);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
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
