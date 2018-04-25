

window.onload = function(){
	var img_btm = document.getElementById("img_btm");
	var img = document.getElementsByClassName("img");
	var imgDiv = document.getElementById("imgDiv");
	//alert(img.length);
	var num = 0;
	var x;
	img[0].onclick = function(){
		num = 0;
		x = 0;
		change();
	}
	img[1].onclick = function(){
		num = 1;
		x = 1;
		change();
	}
	img[2].onclick = function(){
		num = 2;
		x = 2;
		change();
	}
	img[3].onclick = function(){
		num = 3;
		x = 3;
		change();
	}
	function change(){
		for(var i=0;i<img.length;i++){
			if(i == num){
				imgDiv.style.marginLeft = -430*num+"px";
				imgDiv.style.transition = "1s";
				img[i].style.opacity = "1";
			}else{
				img[i].style.opacity = "0.5";
			}
		}
	}
	var autoChange = setInterval(autoChangeFun,3000);//3秒对轮播进行处罚一次
	function autoChangeFun(){
		num++;
		if(num >= img.length){
			num = 0;
		}
		for(var i=0;i<img.length;i++){
			if(i == num){
				imgDiv.style.marginLeft = -430*num+"px";
				imgDiv.style.transition = "1s";
				img[i].style.opacity = "1";
			}else{
				img[i].style.opacity = "0.5";
			}
		}
	}
	img_btm.onmouseout = function(){
		autoChange = setInterval(autoChangeFun,3000);
	}
	imgDiv.onmouseout = function(){
		autoChange = setInterval(autoChangeFun,3000);
	}
	imgDiv.onmouseover = function(){
		clearInterval(autoChange);
	}
	img_btm.onmouseover = function(){
		clearInterval(autoChange);
	}
	//商品个数增加与减少
	var reduce = document.getElementById("reduce");
	var add = document.getElementById("add");
	var inputnum = document.getElementById("num");
	var n = 1;
	add.onclick = function(){
		n++;
		inputnum.value = n;
	}
	reduce.onclick = function(){
		if(n > 1){
			inputnum.value = --n;
		}
	}
	inputnum.onchange = function(){
		n = this.value;
	}
	//商品详情和评论显示
	var pro_detail = document.getElementById("pro_detail");
	var pro_review = document.getElementById("pro_review");
	var pro_r = document.getElementById("pro_r");
	var pro_d = document.getElementById("pro_d");
		pro_detail.style.color = "#e90404";
	pro_detail.onclick = function(){
		pro_d.style.opacity = "1";
		pro_r.style.opacity = "0";
		pro_detail.style.color = "#e90404";
		pro_review.style.color = "";
	}
	pro_review.onclick = function(){
		pro_d.style.opacity = "0";
		pro_r.style.opacity = "1";
		pro_detail.style.color = "";
		pro_review.style.color = "#e90404";
	}
}
