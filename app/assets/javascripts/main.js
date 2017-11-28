$(document).ready(function(){

  $('#toggle_closed').on('click', function () { // Attaching an event handler with an anonymous function to the button
    console.log('clicked!');
    $('.closed').toggleClass( "hidden" )
  });

  $('#toggle_allocated').on('click', function () { // Attaching an event handler with an anonymous function to the button
    console.log('clicked!');
    $('.allocated').toggleClass( "hidden" )
    $('.closed').removeClass( "hidden" )
  });

  $('#toggle_ontrack').on('click', function () { // Attaching an event handler with an anonymous function to the button
    console.log('clicked!');
    $('.ontrack').toggleClass( "hidden" )
    $('.closed').toggleClass( "hidden" )
  });

  $('#toggle_show_all').on('click', function () { // Attaching an event handler with an anonymous function to the button
    console.log('clicked!');
    $('.ontrack').removeClass( "hidden" )
    $('.closed').removeClass( "hidden" )
    $('.allocated').removeClass( "hidden" )
  });

});
