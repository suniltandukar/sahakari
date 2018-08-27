function nepaliToEnglish(nepalidate,englishdate){
	var date = $(nepalidate).val();
	var url = "http://localhost:8080/api/nepalitoenglish/"+date;
	$.ajax({
		url : url
	}).then(function(data) {
		$(englishdate).val(data.data);
	});
}

function englishToNepali(nepalidate,englishdate){
	var date = $(englishdate).val();
	var url = "http://localhost:8080/api/englishtonepali/"+date;
	$.ajax({
		url : url
	}).then(function(data) {
		$(nepalidate).val(data.data);
	});
}