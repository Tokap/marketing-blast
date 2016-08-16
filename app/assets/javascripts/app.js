$(document).on('turbolinks:load', function(){

  $("li").removeClass("active");

  $("div").on("click", ".detail-button", function(){
    $(this).next().removeClass("hidden")
    $(this).addClass("hidden")
  })

  $("div").on("click", ".close-link", function(){
    $(this).closest(".feature-summary").addClass("hidden");
    $(this).closest(".anchor").find(".detail-button").removeClass("hidden");
  })

  $("ul.nav li").hover(
    function() {
      $(this).addClass("active");
    }, function() {
      $( this ).removeClass("active");
    }
  );

})