

function popupFunction(x) {
var popup = document.getElementById(x);
popup.classList.toggle("show");
}


//----------- order classes -------

var subjectObject = {
"זילוף": {
  "16.12.21": ["12:00-16:00", "17:00-21:00"],
  "25.12.21": ["12:00-16:00", "17:00-21:00"]
},
"עוגות בחושות": {
  "17.12.21": ["09:00-13:00", "14:00-18:00"],
  "22.12.21": ["12:00-16:00", "17:00-21:00"]
},
"מיוחדים": {
  "18.12.21": ["12:00-16:00", "17:00-21:00"],
  "26.12.21": ["12:00-16:00", "17:00-21:00"]
}
}

function class_option1() {
var subjectSel = document.getElementById("class_name");
var dateSel = document.getElementById("class_date");
var hoursSel = document.getElementById("class_time");
for (var x in subjectObject) {
  subjectSel.options[subjectSel.options.length] = new Option(x, x);
}
subjectSel.onchange = function class_option2() {
  //empty hours- and dates- dropdowns
  hoursSel.length = 1;
  dateSel.length = 1;
  //display correct values
  for (var y in subjectObject[this.value]) {
    dateSel.options[dateSel.options.length] = new Option(y, y);
  }
}
dateSel.onchange = function class_option3() {
  //empty hours dropdown
  hoursSel.length = 1;
  //display correct values
  var z = subjectObject[subjectSel.value][this.value];
  for (var i = 0; i < z.length; i++) {
    hoursSel.options[hoursSel.options.length] = new Option(z[i], z[i]);
  }
}
}

//--------------------------- Form Validation -----------------------------------
function validateClassesForm() {
  let res = false;
  res = checkName('fullname');           if (!res) return;
  res = checkPhone('phone');          if (!res) return;
  document.getElementById("form2").submit();
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

