function addressFun() {
var checkBox = document.getElementById("myCheck");
var text = document.getElementById("billingAddress");

// If the checkbox is not checked, display the output text
if (checkBox.checked == false){
  billingAddress.style.display = "block";
} else {
  billingAddress.style.display = "none";
}
}

//--------------------------- Form Validation -----------------------------------
  function validateCheckOutForm() {
      let res = false;
      res = checkName('fullname1');           if (!res) return;
      res = checkEmail('email');          if (!res) return;
      res = checkPhone('phone');          if (!res) return;
      res = checkstreet('street1');          if (!res) return;
      res = checkcity('city1');          if (!res) return;
      res = checkName('cardname');           if (!res) return;
      res = checkID('idcard');          if (!res) return;
      res = checkCreditNum('cardnumber');          if (!res) return;
      res = checkCVV('cvv');          if (!res) return;
      res = checkName('fullname2');           if (!res) return;
      res = checkstreet('street2');          if (!res) return;
      res = checkcity('city2');          if (!res) return;
      document.getElementById("checkoutform").submit();
  }

  function checkName(id) {
  var x = document.getElementById(id).value;
  // console.log(x);
  // print(33)
  // print(x)
  // if (x.trim() == ""){
  //   alert ("זהו שדה חובה")
  //   return false
  // }
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

function checkstreet(id) {
  var x = document.getElementById(id).value;
  if(x.length<=1){
    alert("רחוב חייב להיות 2 תווים ומעלה");
    document.getElementById(id).value="";
    return false;
  }
  return true;
  }

  function checkcity(id) {
    var x = document.getElementById(id).value;
    if(x.length<=1){
      alert("עיר חייב להיות 2 תווים ומעלה");
      document.getElementById(id).value="";
      return false;
    }
    return true;
    }

    function checkID (id){
      var x=document.getElementById(id).value;
      var y=onlyNumbers(x);
      if (y.length!=9) {
        alert("תעודת זהות מכילה 9 ספרות בדיוק");
        document.getElementById(id).value="";
      }
      else{
        document.getElementById(id).value=y;
      }
    }

    function checkCreditNum(id){
      var x=document.getElementById(id).value;
      var y=onlyNumbers(x);
      if (y.length<9 || y.length>16){
        alert("מספר הספרות כרטיס האשראי נע בין 9-16 ספרות");
        document.getElementById(id).value="";
      }
      else{
        document.getElementById(id).value=y;
      }
    }

    function checkCVV (id){
      var x=document.getElementById(id).value;
      var y=onlyNumbers(x);
      if (y.length!=3){
        alert("חייב להיות 3 ספרות");
        document.getElementById(id).value="";
      }
      else{
        document.getElementById(id).value=y;
      }
    }
