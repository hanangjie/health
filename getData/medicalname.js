/**
 * Created by hzw on 2016/6/13.
 * connect 342782880
 */
const http = require('http');
const fs=require('fs');


var postData = JSON.stringify({
    'msg' : 'Hello World!'
});

var options = {
    hostname: 'baike.baidu.com',
    path: '/fenlei/疾病?limit=600&index=1',
    method: 'get',
    headers: {
        //"Content-Type": 'application/json'//,
        'Content-Type':"application/x-www-form-urlencoded"
        //"Content-Length": data.length
    }
};

var req = http.request(options, (res) => {
   // console.log(`STATUS: ${res.statusCode}`);
   // console.log(`HEADERS: ${JSON.stringify(res.headers)}`);
    var html="";
    res.setEncoding('utf8');
    res.on('data', (chunk) => {
        console.log(`BODY: ${chunk}`);
        html+=chunk
    });
    res.on('end', () => {
        html=html.split('grid-list-spot"><div class="clearfix"><h2>疾病</h2></div><ul>')[1]
        html=html.split('</ul></div></div></div><div class="g25 g-a2 p-sider">')[0]
        fs.writeFile('medicalname.html', `${html}`, (err) => {
            if (err) throw err;
            console.log('It\'s saved!');
        });
        console.log('No more data in response.')
    })
});

req.on('error', (e) => {
    console.log(`problem with request: ${e.message}`);
});

// write data to request body
req.write(postData);
req.end();