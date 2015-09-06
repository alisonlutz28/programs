// var x = "Hey";
// var y = 10;
// // var x is local variable
// // x is a global variable

// alert(x)
// alert(y)

// alert(x + y)

// y = " bro."

// alert(x + y)
// // note: JS assumes you want 10 to be a string, but in other languages we should get an error message when trying to add 10 to "Hey"

// .....................


// x = "Some global variable"

// function someFunction(){
// 	console.log("We're in the function")
// 	//This displays messages in the window's Developer Console
// 	var y = "Some local variable"

// 	alert(x)
// 	alert(y)

// 	x = "THIS ISN'T GOOD"
// }

// someFunction()
// alert(x)
// alert(y)

// ........................




// var x = "5"
// var y = 5

// alert(x === y)

// // == is a loose comparison
// // === is a strict comparison
// // JS interprets this as "true", even though "5" is a string and 5 is an integer.

// ............................


// var x = 5
// var y = 5

// if (x > y){
// 	console.log("x is greater than y")
// } else if (x<y){
// 	console.log("x is less than y")
// } else {
// 	console.log("x is equal to y")
// }

// ..............................

// var x = [1,2,3,4,5]

// switch (x.length){

// 	case 1:
// 		console.log("x is pretty small")
// 		break
// 	case 5:
// 		console.log("x is moderate")
// 		break
// 	case 10:
// 		console.log("x is pretty large")
// 		break

// 	default:
// 		console.log("x is giant")
// }

// ...................................


// var x = [1, 2, 3, 4, 5]

// for (var i = 0; i <x.length; i++){
// 	alert(x[i])
// }

// //note: in JS, ++ is the same as +=1

//...................................

var x = ["hello", "hi", 56, "75"]

x.forEach(function (element){
	alert(element)
})


	)