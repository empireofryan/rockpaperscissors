$( document ).ready(function() {
  setTimeout(function() {
    $( ".oval-speech-choose" ).animate({
      opacity: 1
    }, 1400, function() {
    });
  }, 3000);
$( "#rock" ).click(function() {
  $( "#rock" ).animate({
    left: "+=150"
  }, 400, function() {
  });
  $( "#scissors" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#paper" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( ".oval-speech-waiting" ).animate({
    opacity: 1
  }, 1400, function() {
  });
});
$( "#paper" ).click(function() {
  $( "#rock" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#scissors" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#paper" ).animate({
    left: "+=150"
  }, 400, function() {
  });
  $( ".oval-speech-waiting" ).animate({
    opacity: 1
  }, 1400, function() {
  });
});
$( "#scissors" ).click(function() {
  $( "#rock" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#scissors" ).animate({
    left: "+=150"
  }, 400, function() {
  });
  $( "#paper" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( ".oval-speech-waiting" ).animate({
    opacity: 1
  }, 1400, function() {
  });
});
$( "#opp_rock" ).click(function() {
  $( "#opp_rock" ).animate({
    right: "+=150"
  }, 400, function() {
  });
  $( "#opp_scissors" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#opp_paper" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( ".oval-speech-waiting" ).animate({
    opacity: 1
  }, 1400, function() {
  });
});
$( "#opp_paper" ).click(function() {
  $( "#opp_rock" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#opp_scissors" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#opp_paper" ).animate({
    right: "+=150"
  }, 400, function() {
  });
  $( ".oval-speech-waiting" ).animate({
    opacity: 1
  }, 1400, function() {
  });
});
$( "#opp_scissors" ).click(function() {
  $( "#opp_rock" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( "#opp_scissors" ).animate({
    right: "+=150"
  }, 400, function() {
  });
  $( "#opp_paper" ).animate({
    opacity: .3
  }, 400, function() {
  });
  $( ".oval-speech-waiting" ).animate({
    opacity: 1
  }, 1400, function() {
  });
});
$('.oval-speech-result').click(function() {
    location.reload();
});
});