var express = require('express');
var router = express.Router();
var sqlService = require ('../modal/sqlModule.js')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.get('/import_cities', function(req, res, next) {
  sqlService.inportAllCities((result) => {
    res.send(result);
  })
});

router.get('/import_skills', function(req, res, next) {
  sqlService.inportAllSkills((result) => {
    res.send(result);
  })
});

router.put('/post_job', function(req, res, next) {
  let {title, description, cityID, skillsToPost, user} = req.body
  sqlService.postJob(title, description, cityID, skillsToPost, user);
  res.send('ok!!!')
})

router.get('/import_agent_skils', function(req, res, next) {
  let id = parseInt(req.query.id)
  sqlService.importSkillsForAgent(id, (result) => {
    res.send(result);
  })
});

router.put('/post_skills', function(req, res, next) {
  let {skillsToPost, currentUser} = req.body
  sqlService.postSkills(skillsToPost, currentUser);
  res.send('ok!!!')
})

router.get('/conect_agent_to_jobs', function(req, res, next) {
  let id = parseInt(req.query.id)
  sqlService.conectagentToJobs(id, (result) => {
    res.send(result);
  })
});

router.get('/get_positions_logged', function(req, res, next) {
  let id = parseInt(req.query.id)
  sqlService.importJobsLogged(id, (result) => {
    res.send(result);
  })
});

router.get('/get_positions', function(req, res, next) {
  sqlService.importJobsNotLogged((result) => {
    res.send(result);
  })
});

router.put('/apply_job', function(req, res, next) {
  let {jobId, userId} = res.body
  sqlService.applyForJob(jobId, userId,(result) => {
    res.send(result);
  })
});

router.get('/import_applied_jobs', function(req, res, next) {
  let id = parseInt(req.query.id)
  sqlService.importAppliedJobs(id, (result) => {
    res.send(result);
  })
});

router.post('/delete_applied_jobs', function(req, res, next) {
  let {id, userId} = res.body
  sqlService.deleteAppliedJob(id,userId, (result) => {
    res.send(result);
  })
});

router.get('/import_My_jobs', function(req, res, next) {
  let id = parseInt(req.query.id)
  sqlService.importMyJobs(id, (result) => {
    res.send(result);
  })
});

module.exports = router;
