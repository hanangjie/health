/**
 * Created by hzw on 2016/6/13.
 * connect 342782880
 */
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

client.connect();
client.query(
    "select * from medicalname",
    function selectCb(err, results, fields) {
        if (err) {
            throw err;
        }
        if(results)
        {
            for(var i = 0; i < results.length; i++)
            {
                console.log("%d\t%s\t%s", results[i].id, results[i].name, results[i].intro);
            }
        }
        client.end();
    }
);