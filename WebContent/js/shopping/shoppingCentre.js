//$("document").ready(function(){
//
//});
//轮播
window.onload = function(){
		var imgChange = document.getElementsByName("imgChange");
	var liChange = document.getElementsByName("liChange");
	var num;
	var idx = 0;
	liChange[0].onmouseover = function(){
		num = 0;
		moveChange();
		idx = num;
	}
	liChange[1].onmouseover = function(){
		num = 1;
		moveChange();
		idx = num;
	}
	liChange[2].onmouseover = function(){
		num = 2;
		moveChange();
		idx = num;
	}
	liChange[3].onmouseover = function(){
		num = 3;
		moveChange();
		idx = num;
	}
	function moveChange(){
		for(var i=0;i<imgChange.length;i++){			
			if(i == num){
				imgChange[i].style.opacity = "1";
				liChange[i].style.backgroundColor = "#f85535";
			}else{
				imgChange[i].style.opacity = "0";
				liChange[i].style.backgroundColor = "";
			}
			
		}
	}
	var imgChangeDiv = document.getElementById("imgChangeDiv");
	var setChange = setInterval(setChangeFun,3000);	
	function setChangeFun(){
		idx++;
		if(idx >= imgChange.length){
			idx = 0;
		}
		for(var i=0;i<imgChange.length;i++){			
			if(i == idx){
				imgChange[i].style.opacity = "1";
				liChange[i].style.backgroundColor = "#f85535";
			}else{
				imgChange[i].style.opacity = "0";
				liChange[i].style.backgroundColor = "";
			}				
		
		}
	}
	
	imgChangeDiv.onmouseover = function(){
		clearInterval(setChange);
	}
	imgChangeDiv.onmouseout = function(){
		setChange = setInterval(setChangeFun,3000);
	}
	
	
//	window.onload = function(){
	var login_box = document.getElementById("login_box");
	var login_shut = document.getElementById("login_shut");
	var login_up = document.getElementById("login_up");

	login_up.onclick = function(){
		login_box.style.display = "block";
	}
	login_shut.onclick = function(){
		login_box.style.display = "none";
	}	
//}
//导航条切换
var shop_nav_a = document.getElementsByClassName("shop_nav_a");
//alert(shop_nav_a.length);
	var a;
	shop_nav_a[0].onclick = function(){
		a = 0;
		navChange()
	}
	shop_nav_a[1].onclick = function(){
		a = 1;
		navChange()
	}
	shop_nav_a[2].onclick = function(){
		a = 2;
		navChange()
	}
	shop_nav_a[3].onclick = function(){
		a = 3;
		navChange()
	}
	shop_nav_a[4].onclick = function(){
		a = 4;
		navChange()
	}
	shop_nav_a[5].onclick = function(){
		a = 5;
		navChange()
	}
	shop_nav_a[6].onclick = function(){
		a = 6;
		navChange()
	}
	function navChange(){
		for(var i=0;i<shop_nav_a.length;i++){			
			if(i == a){
				shop_nav_a[i].style.borderBottomColor = "#f85535";
				shop_nav_a[i].style.color = "#f85535";
			}else{
				shop_nav_a[i].style.borderBottomColor = "";
				shop_nav_a[i].style.color = "";
			}	
		}
	}
	
	
}


	

