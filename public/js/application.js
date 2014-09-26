$('#loading-indicator').css({
  'display': 'block'
});

$('#question').on("submit", function(event) {
  var that = this;
  var serializedData = $(that).serialize()
  event.preventDefault();
  $.ajax({
    url: $('#question').attr('action'),//'/survey/:id/new',
    type: 'PUT',
    data: serializedData
  }).done(function(serverData){
    console.log("success!");
    console.log(serverData);
   // for(i=0; i< serverData.length; i++) {
    $(".survey-container").append(serverData.pizza);

   // }
    // $(".survey-container").append(serverData);
  }).fail(function(serverData){
    console.log("fail");
    console.log(serverData);
  }).always(function(){
    $('#loading-indicator').css({'display': "none"})
  })
});
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

