$(function(){
	var players = ["cross", "circle"]
	var which = true
	var unused= ['box1','box2','box3','box4','box5','box6','box7','box8','box9'];
	boxClick(players);
	
	







	function boxClick(player) {
		$('li').one("click", (function () {
			debugger;
			console.log($(this).text())
			if (unused.indexOf($(this).text()) !== -1 && $(this).text() === "") {

			}else if (which == true) {
				xin(this);
				which = false;

			} else{
				oin(this);
				which = true;
			}
		}));
	};
	function xin(box) {
		$(box).addClass("cross").text('x');
		winX();	
	}
	function oin(box) {
		$(box).addClass("circle").text('o');
		winO();	}
	function winX(){

		// if (this.id.indexOf("box1") !== -1) {
		// 		console.log("this works")
		// }
		if($('#box1').html() === "x" && $('#box2').html() === 'x' && $('#box3').html() === 'x'){
			winMessage("x")
		}else if ($('#box4').html() === "x" && $('#box5').html() === 'x' && $('#box6').html() === 'x') {
			winMessage("x")
		} else if ($('#box7').html() === "x" && $('#box8').html() === 'x' && $('#box9').html() === 'x') {
			winMessage("x")
		} else if ($('#box1').html() === "x" && $('#box4').html() === 'x' && $('#box7').html() === 'x') {
			winMessage("x")
		} else if ($('#box2').html() === "x" && $('#box5').html() === 'x' && $('#box8').html() === 'x') {
			winMessage("x")
		} else if ($('#box3').html() === "x" && $('#box6').html() === 'x' && $('#box9').html() === 'x') {
			winMessage("x")
		}else if ($('#box3').html() === "x" && $('#box5').html() === 'x' && $('#box7').html() === 'x') {
			winMessage("x")
		}else if ($('#box1').html() === "x" && $('#box5').html() === 'x' && $('#box9').html() === 'x') {
			winMessage("X")
		} else {}


		// if($(box).attr("class") === "cross"){
		// 	console.log("this works")
		// }
	}function winO(){

		// if (this.id.indexOf("box1") !== -1) {
		// 		console.log("this works")
		// }
		if($('#box1').html() === "o" && $('#box2').html() === 'x' && $('#box3').html() === "o"){
			winMessage("O")
		}else if ($('#box4').html() === "o" && $('#box5').html() === "o" && $('#box6').html() === "o") {
			winMessage("O")
		} else if ($('#box7').html() === "o" && $('#box8').html() === "o" && $('#box9').html() === "o") {
			winMessage("O")
		} else if ($('#box1').html() === "o" && $('#box4').html() === "o" && $('#box7').html() === "o") {
			winMessage("O")
		} else if ($('#box2').html() === "o" && $('#box5').html() === "o" && $('#box8').html() === "o") {
			winMessage("O")
		} else if ($('#box3').html() === "o" && $('#box6').html() === "o" && $('#box9').html() === "o") {
			winMessage("O")
		}else if ($('#box3').html() === "o" && $('#box5').html() === "o" && $('#box7').html() === "o") {
			winMessage("O")
		}else if ($('#box1').html() === "o" && $('#box5').html() === "o" && $('#box9').html() === "o") {
			winMessage("O")
		}
	}
	function winMessage(player){
			alert(player + " Won");
		}
});