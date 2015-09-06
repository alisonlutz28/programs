$(document).ready(function(){
	console.log("Document loaded")
	balance = 0
	savingsBalance = 0
// this is what you must write when you're calling an id
// when you call a class, you write the same thing but with a . before the word
	$("#balance").click(function(){
		$("#message").text("Your Checking balance is: $" + balance.toString() + " and your Savings balance is: $" + savingsBalance.toString())
	})

	$('#deposit').click(function(){
		var amount = parseFloat($('#d_amount').val())
		balance += amount
		$("#d_amount").val('')
		$('#message').text('Thank you for your deposit of $' + amount.toString() + '!')
	})
	$('#withdraw').click(function(){
		var amount = parseFloat($('#w_amount').val())
		$("#w_amount").val('')
		if(balance < amount){
			alert("Insufficient funds")
		}else{
			balance -= amount
			$('#message').text('You are welcome for your withdrawal of $' + amount.toString() + '!')	
		}
	})
	
	$('#x2check').click(function(){
		var amount = parseFloat($('#x2c_amount').val())
		
		$("#x2c_amount").val('')
		if(savingsBalance < amount){
			alert("Insufficient funds")
		}else{
			savingsBalance -= amount
			balance += amount
			$('#message').text('Your transfer from Savings of $' + amount.toString() + ' to Checking is complete!')	
		}
	})

	$('#x2save').click(function(){
		var amount = parseFloat($('#x2s_amount').val())
		
		$("#x2s_amount").val('')
		if(balance < amount){
			alert("Insufficient funds")
		}else{
			balance -= amount
			savingsBalance += amount
			$('#message').text('Your transfer from Checking of $' + amount.toString() + ' to Savings is complete!')	
		}
	})
})