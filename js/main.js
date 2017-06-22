$(document).ready(function() {
	$(".toggle").click(function() {
		$(this).next().slideToggle(400);
	});
})