var decis = ["Rock", "Paper", "Scissors"]
var winCount = 0;
var compWin = 0;
var quit;

console.log(decis[comp])
while(quit != "N"){
	while(winCount != 10 && compWin != 10){
		var player1 = (prompt("Please enter your choice: (R)ock, (P)aper, (S)cissors")).toUpperCase();
		var comp = Math.floor(Math.random() * 3 );
		// alert(decis[comp] + " is the computer Choice");

		switch (player1){
		case "R":
			if(Compare("Rock", decis[comp]) == true){
				alert("It's a Draw")
			} else	if(decis[comp] == decis[2]){
				console.log("You win");
				winCount++;
			}else{
				console.log("You lose");
				compWin++;
			}
			break;
		case "P":
			if(Compare(player1,comp)){
				console.log("It's a Draw")
			} else	if(decis[comp] == decis[0]){
				console.log("You win");
				winCount++;
			}else{
				console.log("You lose");
				compWin++;
			}
			break;
		case "S":
			if(Compare(player1,comp)){
				console.log("It's a Draw")
			} else	if(decis[comp] == decis[1]){
				console.log("You win");
				winCount++;
			}else{
				console.log("You lose");
				compWin++;
			}
			break;
		}
		// alert("You've won " + winCount) ;
		// alert("You've lost " + compWin) ;
		debugger
	}
	if (winCount == 10) {
		alert("YAAY You beat a computer at a meaningles game");
	} else {
		alert("BOOH You Suck you lost to a machine");
	}
	quit = prompt("Do You Want to Reset Y or N").toUpperCase();

}


function Compare(p1, p2) {
	debugger
	if (p1 === p2){
		return true;
	}else{
		return false;
	}
}
