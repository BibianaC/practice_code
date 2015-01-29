$(document).ready(function(){

  var sam = new Player('Sam');
  var tony = new Player('Tony'); 
  var game = new Game(sam, tony);

  $('.choices img').on('click', function(){
    sam.picks($(this).data('pick'))
    tony.picks('rock');
    $('#results').prepend('<li>' + game.winningMessage() + '</li>');
  });
})