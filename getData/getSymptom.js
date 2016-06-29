/**
 * Created by hzw on 2016/6/28.
 * connect 342782880
 */

var mysql = require('mysql');
var client = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database:'data',
    port: 3306
});

client.connect();
client.query(
    "select * from medicalhtml,detail where detail.medicalid=medicalhtml.medicalId",
    function selectCb(err, results, fields) {
        if (err) {
           console.log(err)
        }
        if(results)
        {
            a(results)
        }

    }
);
var i=0;
var emptyLength=0;
function a(r){

    var sql ="update detail set symptom=\"";
    var htmlArr="",e=r[i],tempSql="";
    try{
        if(i>496){return;}
        if(r[i].html.indexOf("<dt>常见症状</dt>")!=-1&&!tempSql){
            htmlArr=r[i].html.split("<dt>常见症状</dt>")[1].split("</dd>")[0];
            htmlArr=htmlArr.replace("<dd>","").replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(r[i].html.indexOf("<dt>症状</dt>")!=-1&&!tempSql){
            htmlArr=r[i].html.split("<dt>症状</dt>")[1].split("</dd>")[0];
            htmlArr=htmlArr.replace("<dd>","").replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(r[i].html.indexOf("</span>症状体征</h2>")!=-1&&!tempSql) {
            htmlArr = r[i].html.split("</span>症状体征</h2>")[1].split("para-title")[0];
            htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
            htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(r[i].html.indexOf("</span>症状</h2>")!=-1&&!tempSql) {
            htmlArr = r[i].html.split("</span>症状</h2>")[1].split("para-title")[0];
            htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
            htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(r[i].html.indexOf("</span>临床表现</h2>")!=-1&&!tempSql) {
            htmlArr = r[i].html.split("</span>临床表现</h2>")[1].split("para-title")[0];
            htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
            htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(r[i].html.indexOf("</span>疾病症状</h2>")!=-1&&!tempSql) {
            htmlArr = r[i].html.split("</span>疾病症状</h2>")[1].split("para-title")[0];
            htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
            htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(r[i].html.indexOf("</span>名词解释</h2>")!=-1&&!tempSql) {
            htmlArr = r[i].html.split("</span>名词解释</h2>")[1].split("para-title")[0];
            htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
            htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
            tempSql=htmlArr;
        }
        if(!tempSql){
            htmlArr = r[i].html.split("<h1")[1].split("</h1>")[0];
            htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
            htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"");
            tempSql="a"+htmlArr;
            emptyLength++;
        }
        sql+=tempSql
        sql+="\" where medicalid="+e.medicalid;
    }catch(e){console.log(e)}
        client.query(
            sql,
            function selectCb(err, results, fields) {
                if (err) {
                    console.log(err);
                }
                if(results)
                {
                    // a(results)
                    if(i>=496){
                        console.log("end,emptyLength:"+emptyLength);
                        client.end();
                    }
                }
                //console.log(e.medicalid);
                i++
                a(r)
            }
        );
}