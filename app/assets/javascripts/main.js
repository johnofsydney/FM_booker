$(document).ready(function(){

  $('h1').on('click', function () { // Attaching an event handler with an anonymous function to the button
    console.log('clicked!');
    $('.allocated').toggleClass( "hidden" )
  });




});
