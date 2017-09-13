document.addEventListener("DOMContentLoaded", function(argument) {
	var firstButton = document.getElementsByTagName('button')[0];
	var display = document.getElementById("display");
	
	firstButton.addEventListener("click", function(){
		display.innerHTML = this.value;
	});


});



