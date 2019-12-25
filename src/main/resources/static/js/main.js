(function() {
	// alert("my script");
	console.log("Hello World..........!");
})();

function development() {
	alert("Development is still in progress");
	console.log("User clicked..........!");
}

// (function() {
// alert('before slide show');
// slideShow();
// console.log("Hello World..........!");
// })();

var myIndex = 0;
function slideShow() {
	var i;
	var x = document.getElementsByClassName("mySlides");
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	myIndex++;
	if (myIndex > x.length) {
		myIndex = 1
	}
	x[myIndex - 1].style.display = "block";
	setTimeout(slideShow, 2000); // Change image every 2 seconds
}

function validateEmail() {
	var email = document.getElementById('email');
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	if (email.value == null || email.value == "") {
		alert("Please enter email");
		return false;
	} else if (!filter.test(email.value)) {
		alert('Please provide a valid email address');
		email.focus;
		return false;
	}
}