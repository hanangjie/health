/**
 * Created by hzw on 2016/6/13.
 * connect 342782880
 */
var mysql = require('mysql');
const http = require('http');
const fs=require('fs');

var TEST_DATABASE = 'data';
var TEST_TABLE = 'medicalname';

var resultArr=[];
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
            resultArr=results;
            a(results)
        }
        client.end();
    }
);


function a(results){
    for(var i = 0; i <results.length; i++)
    {
        (function(i){
            var postData = JSON.stringify({
                'msg' : 'Hello World!'
            });
            //console.log("%d\t%s\t%s", results[i].id, results[i].name, results[i].intro);
            var options = {
                hostname: 'baike.baidu.com',
                path: results[i].intro,
                method: 'get',
                headers: {
                    'Content-Type':"application/x-www-form-urlencoded"
                }
            };

            var req = http.request(options, (res) => {
                var html=""
                res.setEncoding('utf8');
                res.on('data', (chunk) => {
                    //console.log(`BODY: ${chunk}`);
                    html+=chunk
                });
                res.on('end', () => {
                    var client2 = mysql.createConnection({
                        host: 'localhost',
                        user: 'root',
                        password: '',
                        database:'data',
                        port: 3306
                    });
                    html=html.replace(/\"/g,"\\\"")
                    try{
                        sql=`insert into medicalHtml values (${i},"${html}","${results[i].id}")`
                        client2.connect();
                        client2.query(
                            sql,
                            function selectCb(err, results, fields) {
                                if (err) {
                                    throw err;
                                }
                                if(results)
                                {
                                    console.log("success")
                                }
                                client2.end();
                            }
                        );
                    }catch(e){
                        console.log(results[i])
                    }
                    /* fs.writeFile('medicalnameTest.html', `${html}`, (err) => {
                     if (err) throw err;
                     console.log('It\'s saved!');
                     });*/
                })
            });

            req.on('error', (e) => {
                console.log(`problem with request: ${e.message}`);
            });

            req.write(postData);
            req.end();
        })(i)

    }
}