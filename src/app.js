const express=require('express')
const app=express();
app.get('/',(req,res)=>{
    res.send('welcome to my awesome app!');
});
app.listen(8000,function() {
    console.log('app listening on port 4000 ')
})