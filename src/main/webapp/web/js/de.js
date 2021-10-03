var alert_items = document.querySelectorAll(".alert_item");
	var btns = document.querySelectorAll(".btn");
	var alert_wrapper = document.querySelector(".alert_wrapper");
	var close_btns = document.querySelectorAll(".close");

	btns.forEach(function(btn, btn_index){
		btn.addEventListener("click", function(){
			alert_wrapper.classList.add("active");

			alert_items.forEach(function(alert_item, alert_index){
				if(btn_index == alert_index){
					alert_item.style.top = "50%";
				}
				else{
					alert_item.style.top = "-100%";
				}
			})
		})
	})

	close_btns.forEach(function(close, close_index){
		close.addEventListener("click", function(){
			alert_wrapper.classList.remove("active");

			alert_items.forEach(function(alert_item, alert_index){
				alert_item.style.top = "-100%";
			})
		})
	})
	
	
	
	
	
	var ALERT_TITLE = "Oops!";
var ALERT_BUTTON_TEXT = "Ok";

if(document.getElementById) {
  window.alert = function(txt) {
    createCustomAlert(txt);
  }
}

function createCustomAlert(txt) {
  d = document;

  if(d.getElementById("modalContainer")) return;

  mObj = d.getElementsByTagName("body")[0].appendChild(d.createElement("div"));
  mObj.id = "modalContainer";
  mObj.style.height = d.documentElement.scrollHeight + "px";
  
  alertObj = mObj.appendChild(d.createElement("div"));
  alertObj.id = "alertBox";
  if(d.all && !window.opera) alertObj.style.top = document.documentElement.scrollTop + "px";
  alertObj.style.left = (d.documentElement.scrollWidth - alertObj.offsetWidth)/2 + "px";
  alertObj.style.visiblity="visible";

  h1 = alertObj.appendChild(d.createElement("h1"));
  h1.appendChild(d.createTextNode(ALERT_TITLE));

  msg = alertObj.appendChild(d.createElement("p"));
  //msg.appendChild(d.createTextNode(txt));
  msg.innerHTML = txt;

  btn = alertObj.appendChild(d.createElement("a"));
  btn.id = "closeBtn";
  btn.appendChild(d.createTextNode(ALERT_BUTTON_TEXT));
  btn.href = "#";
  btn.focus();
  btn.onclick = function() { removeCustomAlert();return false; }

  alertObj.style.display = "block";
  
}

function removeCustomAlert() {
  document.getElementsByTagName("body")[0].removeChild(document.getElementById("modalContainer"));
}
function ful(){
alert('Alert this pages');



function validateForm() {
  var x = document.forms["myForm"]["vchassi"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
}




}