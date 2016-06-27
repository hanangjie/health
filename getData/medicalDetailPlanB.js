/**
 * Created by hzw on 2016/6/13.
 * connect 342782880
 */
var mysql = require('mysql');
const http = require('http');
var request1 = require('request');

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
    "select * from medicalHtml  order by medicalId asc",
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
    var newR=results.concat([]);
    results.forEach(function(e,i){
        if(i>0){
            var m=results[i-1].medicalId
            if((e.medicalId-m)>0){
                for(var q=e.medicalId-1;q>m;q--){
                    newR.splice(i,0,{"medicalId":q})
                }
            }
        }
    });
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
        function selectCb(err, results1, fields) {
            if (err) {
                throw err;
            }
            if(results1)
            {
                c(newR,results1)
            }
            client.end();
        }
    );
}

function c(r,r1){
    console.log(r.length,r1.length);
    r.forEach(function(e,i){
        if(!e.html){
            console.log("id:"+e.medicalId+"name:"+r1[e.medicalId-2].name+"html:"+r1[e.medicalId-2].intro);
        (function(i){
            request1('http://baike.baidu.com'+r1[i].intro, function (error, response, body) {
                var html
                if (!error && response.statusCode == 200) {
                    //console.log(body) // 打印google首页
                    var client2 = mysql.createConnection({
                        host: 'localhost',
                        user: 'root',
                        password: '',
                        database:'data',
                        port: 3306
                    });
                    html=body.replace(/\"/g,"\\\"")
                    try{
                        if(!html){
                            console.log("error"+html);
                            return
                        }
                        sql=`insert into medicalHtml (html,medicalId) values ("${html}","${r1[i].id}")`
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
                        console.log(e)
                        console.log("error:"+r1[i])
                    }
                }
            })
           /* console.log(i)
            var postData = JSON.stringify({
                'msg' : 'Hello World!'
            });
            //console.log("%d\t%s\t%s", results[i].id, results[i].name, results[i].intro);
            var options = {
                hostname: 'baike.baidu.com',
                path: r1[i].intro,
                method: 'get',
                headers: {
                    'Content-Encoding':'deflate',
                    'Content-Type': 'text/html',
                    "Transfer-Encoding":'chunked',
                    'Vary':'accept-encoding',
                    'Tracecode':'10293055880874983946062717'
                }
            };
            var req = http.request(options, (res) => {
                var html=""
                res.setEncoding('utf8');
                res.on('data', (chunk) => {
                    console.log(`BODY: ${chunk}`);
                    html+=chunk
                });
                res.on('end', () => {
                    console.log('end');
                    var client2 = mysql.createConnection({
                        host: 'localhost',
                        user: 'root',
                        password: '',
                        database:'data',
                        port: 3306
                    });
                    html=html.replace(/\"/g,"\\\"")
                    try{
                        if(!html){
                            console.log("error"+html);
                            return
                        }
                        sql=`insert into medicalHtml (html,medicalId) values ("${html}","${r1[i].id}")`
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
                        console.log(e)
                        console.log("error:"+r1[i])
                    }
                    /!* fs.writeFile('medicalnameTest.html', `${html}`, (err) => {
                     if (err) throw err;
                     console.log('It\'s saved!');
                     });*!/
                })
            });

            req.on('error', (e) => {
                console.log(`problem with request: ${e.message}`);
            });

            req.write(postData);
            req.end();*/
        })(e.medicalId-2)

        }
    })
}