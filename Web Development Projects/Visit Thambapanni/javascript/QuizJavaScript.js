function StartQuiz(){
  var m = document.getElementById("quizForm");
  m.style.display = "block";
 
}


var FinalScore;
var TrueScore=0;
var FalseScore=0;
var PrintOutput;


function getRadioValue( radioArray ) {
	var l;
	for ( l = 0; l < radioArray.length; l++ ) {
		if ( radioArray[ l ].checked ) { 
			return radioArray[ l ].value;
		}
	}
	return "";
}

function PrintResults(){
          //check if the user given answer is correct or not
          if (getRadioValue(document.quiz.q1)==2){
              TrueScore+=2;
            
          }
          else{
             FalseScore+=1;
             
          }
		   if (getRadioValue(document.quiz.q2)==4){
              TrueScore+=2;
             
          }
          else{
             FalseScore+=1;
            
          }
		  if (getRadioValue(document.quiz.q3)==2){
              TrueScore+=2;
              
          }
          else{
             FalseScore+=1;
            
          }
		  if (getRadioValue(document.quiz.q4)==4){
              TrueScore+=2;
              
          }
          else{
             FalseScore+=1;
             
          }
		  if (getRadioValue(document.quiz.q5)==4){
              TrueScore+=2;
              
          }
          else{
             FalseScore+=1;
            
          }
		  if (getRadioValue(document.quiz.q6)==3){
              TrueScore+=2;
             
          }
          else{
             FalseScore+=1;
             
          }
		  if (getRadioValue(document.quiz.q7)==2){
              TrueScore+=2;
           
          }
          else{
             FalseScore+=1;
            
          }
          if (getRadioValue(document.quiz.q8)==4){
              TrueScore+=2;
              
          }
          else{
             FalseScore+=1;
             
          }		  
          if (getRadioValue(document.quiz.q9)==3){
              TrueScore+=2;
              
          }
          else{
             FalseScore+=1;
             
          }	
          if (getRadioValue(document.quiz.q10)==2){
              TrueScore+=2;
              
          }
          else{
             FalseScore+=1;
             
          }	 
	 	
	//Getting final score
    FinalScore = TrueScore - FalseScore;
	PrintScore();
}

function PrintScore(){	
PrintOutput="You have Scored = " + FinalScore;



var u = document.getElementById("End_Of_HTML_Display");
  u.style.display = "block";
  
var TimeCount = "Time : " + TimeElapsed + " Seconds "; 

//Print output 
document.getElementById("End_Of_HTML_Display").innerHTML="<span>" + PrintOutput + "</span><br><span>" +TimeCount+ "</span><br><br><span>"

//changing backgrouund color according to the users score.
if (FinalScore>15){
document.getElementById("Color").style.backgroundColor="Blue";
}
else if (FinalScore>10){
document.getElementById("Color").style.backgroundColor="Yellow";
}
else if (FinalScore > 5){
document.getElementById("Color").style.backgroundColor="Red";
}
else if (FinalScore > 0){
document.getElementById("Color").style.backgroundColor="Gray";
}
else {
document.getElementById("Color").style.backgroundColor="Orange";
}
}


var Var;

function MainFunction(){
    Var=setTimeout(function (){stop();alert("Sorry Times Up! Please Check Your Score");PrintResults() ;},61000);
}

//This will stop the program after time got exceeded.
function endQuiz(){
clearTimeout(Var);
PrintResults();
}

var TimeElapsed = 0;
var myTimer = 0;

// Timer will start here
function timer() {
    myTimer = setInterval(function(){
        TimeElapsed += 1;
         document.getElementById("time").innerText = TimeElapsed;
    }, 1000) ;

}
function stop() {
    clearInterval(myTimer);
}
