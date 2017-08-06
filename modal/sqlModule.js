module.exports = (function () {
   
var mySql = require('mysql');
var con = mySql.createConnection({
    host: 'localHost',
    user:'root',
    password: 'dmitririr2904',
    database: 'xplace'
});

    function inportAllCities(callback){
        var sql = `select c.id, c.name, c.country, c.lat, c.lng from cities c;`
        con.query(sql , function(err, result){
            if(err) throw err;
            callback(result);
    });
    }

    function inportAllSkills(callback){
        var sql = `select * from skills;`
        con.query(sql , function(err, result){
            if(err) throw err;
            callback(result);
    });
    }

    function postJob(title, description, cityID, skillsToPost, user) {
        // var jobId = Math.random() * (999999 - 1) + 1;
        var jobId;
        var sqlJob = `INSERT INTO jobs (title,description, city_id, company, user_id, date, avalible ) VALUES 
                                ('${title}',"${description}",${cityID},'${user.company}',${user.id},now(),1);`
        // var sqlUserJobs =                         
        con.query(sqlJob, function (err, result) {
            if (err) throw err;
            for (let skill of skillsToPost) {
                con.query(`INSERT INTO job_skill (job_id,skill_id) VALUES (${result.insertId}, ${skill.id});`, function (err, result) {
                    if (err) throw err;
                });
            }
        });

    }

    function importSkillsForAgent(id, callback) {
        var sql = `select s.skill, s.id from skills s inner join users_skills x on x.user_id=${id} and s.id=x.skill_id`
        con.query(sql, function (err, result) {
            if (err) throw err;
            callback(result);

          

        });
    }

    function postSkills(skillsToPost, currentUser) {

        var sqlDelete = `delete from users_skills where user_id=${currentUser.id};`
        con.query(sqlDelete, function(err, result){
            if (err) throw err;
                for (let skill of skillsToPost) {
                    con.query(`INSERT INTO users_skills (user_id,skill_id) VALUES (${currentUser.id}, ${skill.id});`, function (err, result) {
                        if (err) throw err;
                    });
                }
        })


    }

    function conectagentToJobs(id, callback) {
        let jobsIds = [];
        let sql1 = `select j.job_id from job_skill j inner join  users_skills u on u.user_id=${id} and j.skill_id=u.skill_id;`
        con.query(sql1, function (err, result) {
            if (err) throw err;
            jobsIds = result;
            
            let sqlDelete = `delete from user_job where user_id=${id};`
            con.query(sqlDelete, function (err, result) {
                if (err) throw err;
            })

            for (let job of jobsIds) {
                con.query(`INSERT INTO user_job (job_id,user_id) VALUES (${job.job_id}, ${id});`, function (err, result) {
                    if (err) throw err;
                });
            }
            callback(result)

        });

    }

    function importJobsLogged(id, callback) {
        let sql1 = `select j.* from users u inner join jobs j inner join user_job uj on uj.user_id=${id} and j.id=uj.job_id and u.id=${id}`
        con.query(sql1, function (err, result) {
            if (err) throw err;

            for (let job of result) {
                var pending = result.length;
                var sql2 = `select s.skill from skills s inner join job_skill js on js.job_id=${job.id} and js.skill_id=s.id`
                con.query(sql2, function (err, result2) {
                    if (err) throw err;
                    job.skills = result2
                    // console.log(result);
                    if (0 === --pending) {
                        callback(result);
                    }
                });
            }

        });
    }

    function importJobsNotLogged(callback) {
        let sql1 = `select * from jobs`
        con.query(sql1, function (err, result) {
            if (err) throw err;

            for (let job of result) {
                var pending = result.length;
                var sql2 = `select s.skill from skills s inner join job_skill js on js.job_id=${job.id} and js.skill_id=s.id`
                con.query(sql2, function (err, result2) {
                    if (err) throw err;
                    job.skills = result2
                    // console.log(result);
                    if (0 === --pending) {
                        callback(result);
                    }
                });
            }

        });
    }

    function applyForJob(jobId, userId, callback) {
        var sql = `INSERT INTO jobs_apply (job_id,user_id) VALUES (${jobId}, ${userId});`
        con.query(sql, function (err, result) {
            if (err) throw err;
            callback(result)
        })
    }

    function importAppliedJobs(id, callback) {
        var sql = `select j.* from jobs j inner join jobs_apply a on a.user_id=${id} and j.id=a.job_id;`
        con.query(sql, function (err, result) {
            if (err) throw err;
            // console.log(result);
            callback(result);
        });
    }

    function deleteAppliedJob(id,userId, callback) {
        var sql = `delete from jobs_apply where user_id=${userId} and job_id=${id};`
        con.query(sql, function (err, result) {
            if (err) throw err;
            // console.log(result);
            callback(result);
        })
    }

    function importMyJobs(id, callback) {
        var sql = `select j.* from jobs j where j.user_id=${id};`
        con.query(sql, function (err, result) {
            if (err) throw err;
            // console.log(result);
            callback(result);
        });
    }


return {
   inportAllCities:inportAllCities,
   inportAllSkills:inportAllSkills,
   postJob:postJob,
   importSkillsForAgent:importSkillsForAgent,
   postSkills:postSkills,
   conectagentToJobs:conectagentToJobs,
   importJobsLogged:importJobsLogged,
   importJobsNotLogged:importJobsNotLogged,
   applyForJob:applyForJob,
   importAppliedJobs,importAppliedJobs
}


})();