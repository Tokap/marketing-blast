$(document).on('turbolinks:load', function(){

  $("body").on("submit", ".spreadsheet-upload-form", function(event){
    //AJAX CALL TO UPLOAD CUSTOMERS INTO DATABASE
    event.preventDefault();
    var spreadsheetId = $(this).find(":selected").val();
    console.log(spreadsheetId);
    var startingUrl = $(this).attr("action");
    console.log(startingUrl);
    var destination = startingUrl + spreadsheetId;
    console.log(destination);

    var request = $.ajax({
          method: "PUT",
          url: destination,
          dataType: 'JSON'
        });

    request.always(function(){
      alert("Upload complete!")
    })
  });

})