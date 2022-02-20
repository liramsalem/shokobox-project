//--------------------------- Form Validation -----------------------------------

  function validateRegisterForm() {
    let res = false;
    res = checkName('fname');           if (!res) return;
    res = checkName('lname');           if (!res) return;
    res = checkPhone('phone');          if (!res) return;
    res = checkEmail('email');          if (!res) return;
    res = checkPassword('password');    if (!res) return;
    document.getElementById("registerform").submit();
}

function checkName(id) {
var x = document.getElementById(id).value;
if(x.length<=1){
  alert("שם חייב להיות 2 תווים ומעלה");
  document.getElementById(id).value="";
  return false;
}
return true;
}

function checkEmail(id){
var x=document.getElementById(id).value;
if (x.length<5 || !(x.includes('@')) || !(x.includes('.'))){
  alert("כתובת אימייל לא תקינה.");
  document.getElementById(id).value="";
  return false;
}
return true;
}

function onlyNumbers(num){
var ans="";
var i;
for (i = 0; i < num.length; i++) {
  var digit = num[i];
  if (digit=='0' || digit=='1' || digit=='2' || digit=='3' || digit=='4' || digit=='5' || digit=='6' || digit=='7' || digit=='8' || digit=='9'){
    ans += num[i];
  }
}
return ans;
}


function checkPhone(id){
var x=document.getElementById(id).value;
var y=onlyNumbers(x);
if (y.length!=10 && y.length!=9 ){
  alert("מספר טלפון לא תקין. חייב להכיל בין 9 ל-10 ספרות");
  document.getElementById(id).value="";
  return false;
}
else{
  document.getElementById(id).value=y;
  return true;
}
}

function checkPassword(id){
var x=document.getElementById(id).value;
if (x.length<6){
  alert("סיסמא חייבת להכיל לפחות 6 תווים");
  document.getElementById(id).value="";
  return false;
}
return true;
}