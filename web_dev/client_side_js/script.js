console.log("The script is running!");

function changeBorder(event) {
	console.log("Click detected!");
	console.log(event);
	event.target.style.border = "solid purple";
	event.target.style.borderRadius = "20px";
}

function buttonColor(event) {
	console.log("Hover detected!");
	console.log(event);
	event.target.style.backgroundColor = "green";
}

// work on try me button
function boldText() {
	console.log("looping through <li> elements");
	var texts = document.getElementsByTagName("li");
	for (var i=0; i<texts.length; i++) {
		texts[i].style.fontWeight = "bold"; 
		texts[i].style.backgroundColor = "red";
	}
}

function passColor() {
	var color = document.getElementsByTagName("li");
	console.log(color);
	console.log(photo);
	for (var i=0; i<color.length; i++) {
		color[i].addEventListener("click", changeBackColor);	
	}	
}

function changeBackColor(event) {
	event.target.style.backgroundColor = "gray";
}

function changeBackColor1() {
	document.body.style.backgroundColor = "grey";

} 
var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", changeBorder);

var button = document.getElementsByTagName("button");
var button1 = button[0];
button1.addEventListener("mouseover", buttonColor);

document.addEventListener("click", changeBackColor1);


passColor();