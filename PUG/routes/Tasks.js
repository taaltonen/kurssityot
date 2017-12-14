var express = require('express');  
var router = express.Router();
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var cors=require('cors');
var index = require('./routes/index');
var users = require('./routes/users');
var Tasks=require('./routes/Tasks');
var app = express();  

var Task = require('../models/Task');  
var task_controller = require('../controllers/taskController'); 


router.get('/Tasks', task_controller.task_list);     
router.get('/Addtask', task_controller.task_create_get); 
router.post('/Addtask', task_controller.task_create_post);     
router.get('/:id', task_controller.task_details); 
router.get('/deletetask/:id', task_controller.task_delete_get);

module.exports = router;