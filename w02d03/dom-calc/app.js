document.addEventListener("DOMContentLoaded", function(argument) {
	var firstButton = document.getElementsByTagName('button');
	var display = document.getElementById("display");
	var val, val1, operator;
	var val2= "";
	var checkOperator = ["+","-","*","/"];


	for (var i = 0; i < firstButton.length; i++) {
		firstButton[i].addEventListener("click", function(){
			if(this.value !== "C"){
				if(val1){
					if (operator) {
						val = this.value;
						if (parseInt(val) || val === "0") {
							val2 = val2.concat(val);
							display.innerHTML = val2
							val = ""
						}else{
							if (val == "=") {
								run(val1, operator, val2);
							}
						}

					}else{
						operator = display.innerHTML = this.value;
						console.log(operator)
						
						if (parseInt(operator) || operator === "0") {
							val1 = val1.concat(operator);
							display.innerHTML = val1
							operator = ""
						}
					}
				}else{
					val1 = this.value;	
					display.innerHTML = val1;
				}
				

			} else{
				val1 = "";
				val2 = "";
				operator = "";
				display.innerHTML = "";
			}
		});
	}

});



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
	display.innerHTML = answer;	
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