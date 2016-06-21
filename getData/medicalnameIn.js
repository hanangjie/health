/**
 * Created by hzw on 2016/6/13.
 * connect 342782880
 */
const fs=require('fs');
var mysql = require('mysql');

var TEST_DATABASE = 'data';
var TEST_TABLE = 'medicalname';

//创建连接
var client = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database:'data',
    port: 3306
});


fs.readFile('medicalname.html','utf8', (err, data) => {
    if (err) throw err;
    var sql='';
    data=data.split('</li>');
    data.forEach(function(e,i){
        if(e){
            sql+=',("'+(i+2)+'","'+e.match(/title="([a-zA-Z\u4e00-\u9fa5]+)/i)[1]+'","'+e.match(/href="(\S+)"/i)[1]+'")'
        }
    })

    sql='insert into '+TEST_TABLE+' values'+sql.slice(1)
    client.connect();
    client.query(
        sql,
        function selectCb(err, results, fields) {
            if (err) {
                throw err;
            }
            if(results)
            {
                for(var i = 0; i < results.length; i++)
                {
                    console.log("%d\t%s\t%s", results[i].id, results[i].name, results[i].age);
                }
            }
            client.end();
        }
    );
    //console.log(data);
});