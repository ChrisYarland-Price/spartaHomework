
//Main Body of Code 

var lis = document.getElementsByTagName('li')
var j = 1;
var row = [0,9, 16, 25, 32,41,48, 57];


for (var i = 0; i < 64; i++) {
	addListItem();
	setColor('white', 0);
}
for (var i = 0; i < 8; i++) {
	setLignColor(row[i]);
}



//Additional Functions
function addListItem() {
    var newItem = document.createElement("li");
    var ul = document.getElementsByTagName('ul')[0];
    ul.appendChild(newItem);
}
function setColor(val, off){
	lis[i+off].className = val;
}
function setLignColor(row){
	for (var i = 0; i < 7; i++) {
		if (i%2 != j%2) {
            lis[i+row].className = "black";	
        }
	}
}