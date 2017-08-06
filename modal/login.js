module.exports = (function () {
   
var mySql = require('mysql');
var con = mySql.createConnection({
    host: 'localHost',
    user:'root',
    password: 'dmitririr2904',
    database: 'xplace'
});

function loginCheck(user, pass, callback){
    let sql = `select * from users r where r.username ='${user}' and r.pass = ${pass};`
    con.query(sql , function(err, result){
            if(err) throw err;
            if(result.length > 0){
                // return result[0];
                callback(result[0])
            }
            else{
                callback(result[0])
            }
    });
}

function postNewUser (username,firstname,lastname,password,email,about,company,maxDist,cityID){
    let sql =`INSERT INTO users (username,pass,firstname,lastname,email,about,company,cityID,maxDist) VALUES 
                                ('${username}','${password}','${firstname}','${lastname}','${email}','${about}','${company}',${cityID},${maxDist});`

    con.query(sql, function(err,result){
        if(err) throw err;
    })
}


return {
    loginCheck:loginCheck,
    postNewUser:postNewUser
}


})();