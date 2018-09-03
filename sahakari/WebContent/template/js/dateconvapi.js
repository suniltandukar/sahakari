function nepaliToEnglish(nepalidate,englishdate){
	var date = $(nepalidate).val();
	var url = "http://124.41.193.91/dateconvapi/nepalitoenglish/"+date;
	$.ajax({
		url : url
	}).then(function(data) {
		$(englishdate).val(data.data);
	});
}

function englishToNepali(nepalidate,englishdate){
	var date = $(englishdate).val();
	var url = "http://124.41.193.91/dateconvapi/englishtonepali/"+date;
	$.ajax({
		url : url
	}).then(function(data) {
		$(nepalidate).val(data.data);
	});
}