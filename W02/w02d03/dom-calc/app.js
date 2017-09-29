document.addEventListener("DOMContentLoaded", function(argument) {
	var button = document.getElementsByTagName('button');
	var display = document.getElementById("display");
	var val, val1, operator, val2;
	var checksymbol =["=","+","-","/","*"]
	var runOnce = false;

	for (var i = 0; i < button.length; i++) {
		button[i].addEventListener("click", function(){	
			 if(this.value === "C"){
				reset();
			} else if(!val1){
				val1 = this.value;	
				display.innerHTML = val1;
			}else if (!operator && this.value != "=") {
				operator = this.value;
				if(parseInt(operator || operator == 0)){
					val1 = concat(operator, val1);
					operator = "";
				}	else{
					display.innerHTML = operator;
				}		
			}else if (this.value == "=") {

			} else if (!val2){
				val2 = display.innerHTML =this.value;
			}else{
				val = this.value;
				if(checksymbol.indexOf(val) == -1){
						val2 = concat(val, val2)
						val = ""
				}else if (checksymbol.indexOf(this.value)!= -1 && runOnce === true){
				val1 = answer;
				operator = operator2;
				}else{
					operator2 = operator;
					run(val1, operator, val2);
				}
			}
			
		});
	}


function reset() {
	val1 = "";
	val2 = "";
	operator = "";
	display.innerHTML = "";
	val = "";	
}
function concat(str, ret) {
	ret = ret.concat(str);
	display.innerHTML = ret
	return ret;	
}

function run(x, oper, y){
var answer;
	switch(oper){
		case '+':
			answer = add(x,y);
      break;
    case '-':
      answer = sub(x,y);
      break;
		case '*':
			answer = multi(x,y);
      break;
		case '/':
			answer = divi(x,y);
      break;
	}		
	reset();
	debugger;
	display.innerHTML = answer;	
	runOnce = true;
}
function add(arg, arg2) {
    return arg + arg2;
}
function sub(arg, arg2) {
    return arg - arg2;
}
function multi(arg, arg2) {
    return arg * arg2;
}
function divi(arg, arg2) {
    return arg / arg2;
}	
});


