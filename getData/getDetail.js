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
    "select * from medicalhtml",
    function selectCb(err, results, fields) {
        if (err) {
            throw err;
        }
        if(results)
        {
            a(results)
        }
        client.end();
    }
);

function a(r){
    var sql= "insert into detail (medicalid,symptom,department,infectivity,diagnose,reseaon,cure) values "
    r.forEach(function(e,i){
        var htmlArr=[];
        sql+="(";
        sql+=r[i].medicalId;
        r[i].html=r[i].html.split("<body")[1]
        r[i].html=r[i].html.split("</body>")[0]
            try{
                if(r[i].html.indexOf("</span>症状</h2>")!=-1) {
                    htmlArr = r[i].html.split("</span>症状</h2>")[1].split("para-title")[0];
                    htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\/<>_\[\]\&(%%)(:;)(..)(编辑)]+/g,"");
                    htmlArr=htmlArr.replace(/[ \n]+/g,"")
                    sql+=",\""+htmlArr+"\"";
                }else{
                    sql+=",\" \"";
                }
            }catch(e){
                console.log(i+"error1:"+e)
            }
            try{
                    if(r[i].html.indexOf("<dt>就诊科室</dt>")!=-1){
                        htmlArr=r[i].html.split("<dt>就诊科室</dt>")[1].split("</dd>")[0];
                        htmlArr=htmlArr.replace("<dd>","").replace(/[ \n(编辑)]/g,"")
                        sql+=",\""+htmlArr+"\"";
                    }else{
                        sql+=",\" \"";
                    }
            }catch(e){
                console.log(i+"error2:"+e)
            }
            try{
                    if(r[i].html.indexOf("<dt>传染性</dt>")!=-1){
                        htmlArr=r[i].html.split("<dt>传染性</dt>")[1].split("</dd>")[0];
                        htmlArr=htmlArr.replace("<dd>","").replace(/[ \n(编辑)]/g,"")
                        sql+=",\""+htmlArr+"\"";
                    }else{
                        sql+=",\" \"";
                    }
            }catch(e){
                console.log(i+"error3:"+e)
            }
            try{
                    if(r[i].html.indexOf("</span>诊断方法</h2>")!=-1) {
                        htmlArr = r[i].html.split("</span>诊断方法</h2>")[1].split("para-title")[0];
                        htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_]+/g,"");
                        htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
                        sql+=",\""+htmlArr+"\"";
                    }else{
                        sql+=",\" \"";
                    }
            }catch(e){
                console.log(i+"error4:"+e)
            }
            try{
                    if(r[i].html.indexOf("</span>疾病病因</h2>")!=-1) {
                        htmlArr = r[i].html.split("</span>疾病病因</h2>")[1].split("para-title")[0];
                        htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_\[\]\&]+/g,"");
                        htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
                        sql+=",\""+htmlArr+"\"";
                    }else{
                        sql+=",\" \"";
                    }
            }catch(e){
                console.log(i+"error5:"+e)
            }
            try{

                    if(r[i].html.indexOf("</span>治疗</h2>")!=-1) {
                        htmlArr = r[i].html.split("</span>治疗</h2>")[1].split("para-title")[0];
                        htmlArr=htmlArr.replace(/[a-zA-Z\"\'=\-\/<>0-9_\[\]\&(%%)(:;)(..)]+/g,"");
                        htmlArr=htmlArr.replace(/[ \n(编辑)]/g,"")
                        sql+=",\""+htmlArr+"\"";
                    }else{
                        sql+=",\" \"";
                    }
            }catch(e){
                console.log(i+"error:"+e)
            }

        sql+="),";
    })
    sql=sql.slice(0,-1)
    client.connect();
    client.query(
        sql,
        function selectCb(err, results, fields) {
            if (err) {
                throw err;
            }
            if(results)
            {
               // a(results)
            }
            client.end();
        }
    );

}