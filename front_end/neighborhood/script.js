var validUsernames = [
		{"user": "Alison"},
		{"user": "Megan"},
		{"user": "Phillip"},
		{"user": "Teresa"},
		{"user": "Tracey"}
]

var signOut = function(){
	document.getElementById("welcome_msg").innerHTML = ''
	document.getElementById("logged_in").style.display = "none"
	document.getElementById("logged_out").style.display = "block"
	document.getElementById("sign_in").style.display = "block"
	document.getElementById("sign_out").style.display = "none"
}

var signIn = function(username){
	document.getElementById("welcome_msg").innerHTML = 'Welcome to My Neighborhood, ' + username + '!'
	document.getElementById("logged_in").style.display = "block"
	document.getElementById("logged_out").style.display = "none"
	document.getElementById("sign_in").style.display = "none"
	document.getElementById("sign_out").style.display = "block"
}

var signInModal = function(){
	console.log("I'm in the sign in button")
	var username = prompt("Please enter your username to log in", "Alison")
	if(username !== null && username !==''){
		console.log("first if")
		for(var i=0; i<validUsernames.length; i++){
			if(validUsernames[i].user === username){
				var validUser = true
				signIn(username)
				break
			}
		}
	} else {
		alert("Sorry! You must enter a valid username.")
	}
}


var validateAnswer = function(){
	var answer = document.getElementById("challenge1").value
	var sum = 2 + 2

	if (answer === sum.toString()){
		document.getElementById("correct").style.display = "inline-block"
	} else {
		document.getElementById("incorrect").style.display = "inline-block"
	}

	setTimeout(function(){
		document.getElementById("correct").style.display = "none"
		document.getElementById("incorrect").style.display = "none"
	}, 3000)
}

var addToFavs = function(title, friend){
	var paragraph = '<p>' + title + ' by ' + friend + '</p>'
	document.getElementById("yay_favs").style.display = "block"
	document.getElementById("no_favs").style.display = "none"
	document.getElementById("recent_fav").innerHTML = paragraph
}

var favorite = function(title, friend, id){
	document.getElementById(id).style.color = "blue"
	document.getElementById(id).style.fontSize = "2.2em"
	document.getElementById(id).style.transition = "0.4s linear all"

setTimeout(function(){
	document.getElementById(id).style.color = "rgb(180, 0, 80)"
	document.getElementById(id).style.fontSize = "2em"
	document.getElementById(id).style.transition = "0.4s linear all"
	document.getElementById(id)
}, 500)

	alert("You have favorited " + title + " by " + friend)
	addToFavs(title, friend)
}










