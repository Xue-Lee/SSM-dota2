	
	window.onload = function(){
		var login_box = document.getElementById("login_box");
		var login_shut = document.getElementById("login_shut");
		var login_up = document.getElementById("login_up");
	
		login_up.onclick = function(){
			login_box.style.display = "block";
		}
		login_shut.onclick = function(){
			login_box.style.display = "none";
		}	
	}
	