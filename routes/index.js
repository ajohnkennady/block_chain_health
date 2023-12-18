var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Decentralized health app', name:null });
});

router.post('/', function(req, res, next) {

  res.render('index', { title: 'Decentralized health app', name:req.body.name });
});

router.get('/page1', function(req, res, next) {
  res.render('page1', { title: 'Decentralized health app', name:null });
});

router.get('/page2', function(req, res, next) {
  res.render('page2', { title: 'Decentralized health app', name:null });
});

router.get('/page3', function(req, res, next) {
  res.render('page3', { title: 'Decentralized health app', name:null });
});

router.get('/page4', function(req, res, next) {
  res.render('page4', { title: 'Decentralized health app', name:null });
});


router.get('/page5', function(req, res, next) {
  res.render('page5', { title: 'Decentralized health app', name:null });
});

router.get('/page6', function(req, res, next) {
  res.render('page6', { title: 'Decentralized health app', name:null });
});



module.exports = router;
