// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$( document ).ready(function() {
    $(document).on("click", "#show-new-comment", function(){
        $('#new-comment').show();
        $("#show-new-comment").hide();
    });
  });
  