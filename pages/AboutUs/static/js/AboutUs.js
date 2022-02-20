// ------------------------Typewriter-------------------------
let txt="לפעמים כל מה שבא לכם זה עוגה טובה...";
let i=0;
let speed= 70;

function writer_text(){
  if(i< txt.length){
      document.getElementById("writer_text").innerHTML += txt.charAt(i);
      i++;
      setTimeout(writer_text,speed);
  }
}