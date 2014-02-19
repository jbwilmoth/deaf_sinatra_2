$(document).ready(function() {
  $("#submitForm").submit(function (event) {
  	event.preventDefault();
  	var data = $(this).serialize();
  	$.post("/grandma", data, function(response) {
  		$(".grandma_response").remove()
  		$("#submitForm").before(response);
  	});
  });
});