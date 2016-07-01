/**
 * Created by hzw on 2016/7/1.
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

    var sql ="update detail set department=\"";
    var htmlArr="",e=r[i];
    try{
        if(i>495){return;}
        if(!e){
            console.log(i);
            //return;
        }

        console.log(e.medicalid)
        if(r[i].html.indexOf("<dt>就诊科室</dt>")!=-1){
            htmlArr=r[i].html.split("<dt>就诊科室</dt>")[1].split("</dd>")[0];
            htmlArr=htmlArr.replace("<dd>","").replace(/[ \n(编辑)]/g,"")
        }

        if(r[i].html.indexOf("<dt>疾病分类</dt>")!=-1){
            htmlArr=r[i].html.split("<dt>疾病分类</dt>")[1].split("</dd>")[0];
            htmlArr=htmlArr.replace("<dd>","").replace(/[ \n(编辑)]/g,"")
        }

        if(!htmlArr){
            htmlArr=" ";
            emptyLength++;
        }
        sql+=htmlArr
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
                if(i>=495){
                    console.log("end,emptyLength:"+emptyLength);
                    client.end();
                }else{
                    i++
                    a(r)
                }
            }
            //console.log(e.medicalid);
        }
    );
}