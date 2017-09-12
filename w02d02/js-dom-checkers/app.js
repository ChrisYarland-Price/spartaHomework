function addListItem() {
    var newItem = document.createElement("li");
    var ul = document.getElementsByTagName('ul')[0]
    ul.appendChild(newItem);
}
function setColor(){
	li[i].className = "white";
}
function setLignColor(row){
	for (var i = 0; i < 7; i++) {
		if (i%2 != j%2) {
            li[i+row].className = "black";	
        }
	}
}
var li = document.getElementsByTagName('li')

for (var i = 0; i < 64; i++) {
	addListItem();
	setColor();
}
var j = 1;
var row = [0,9, 16, 25, 32,41,48, 57];
for (var i = 0; i < 8; i++) {
	setLignColor(row[i]);
}

// for (var i = 0; i < li.length; i += 2) {
// 	setColor('white')
// }
