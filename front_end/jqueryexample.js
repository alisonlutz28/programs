$(document).ready(function(){
    console.log('document ready')

    $('#the-button').click(function(){

    $('p').toggleClass('special')

    if ($('p').hasClass('special')){
        
        alert('The paragraph is special!')

    } else {

        alert('The paragraph is not special')

    }


    $('ul').append($('<li>').text('Try it again.')

    })


})