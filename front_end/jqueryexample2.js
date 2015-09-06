

$(document).ready(function(){
	console.log("document ready")

	$('#the-button').click(function(){
		if ($('#the-button').text() == "Try It"){
			$('#the-text').text("Paragraph changed.")
			$('#the-button').text("Put it back")
		}
		else {
			$('#the-text').text("Welcome to JavaScript!")
			$('#the-button').text("Try It")
		}
	})

	$('#weather-button').click(function(){
		var temp = "72 degrees"
		alert("It's " + temp)
	})

	$('#weather-button2').click(function(){
		alert("It's " + takeTemp())
	})

	function takeTemp(){
		return "60 degrees!"
	}

	$('#hellogoodbye').click(function() {
		if ($('#hellogoodbye').text() == "Goodbye, ALL!"){
			alert('Goodbye, ALL!!')
			$('#all-buttons').text('')
		}
		else {
			alert("Warning: DO NOT CLICK THE GOODBYE BUTTON!!")
			$('#hellogoodbye').text('Goodbye, ALL!')
		}
	})

})