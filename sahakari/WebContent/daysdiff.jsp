<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.12.0/moment.js"></script>
<input type="text" placeholder="start date" id="start">
<input type="text" placeholder="end date" id="end">
<div id='test'>Click Me!!!</div>
<div id='result'></div>
<script>
$('#test').click(function() {
	var start=$('#start').val();
	var end=$('#end').val();
	
  var startDate = moment(start, "YYYY-MM-DD");
  var endDate = moment(end, "YYYY-MM-DD");
  
  var result = 'Days Diff: ' + endDate.diff(startDate, 'days');

  $('#result').html(result);
});
</script>