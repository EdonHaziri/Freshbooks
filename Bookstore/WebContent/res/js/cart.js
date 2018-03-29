function addItemToCart(address) {
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function() {
		handler(request);
	};
	
	request.open("POST", address, true);
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	request.send();
	
	//alert(address);
}

function handler(request) {
	if (request.readyState == 4 && request.status == 200) {
		document.getElementById("cartButton").innerHTML = request.responseText;
	}
}