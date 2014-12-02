$(document).ready(function() {

  $("#show-form").click(function() {
    $("#option-forms").slideToggle();
  });

  $("form input[type=submit]").click(function() {
    var email, username;
    username = $('#user_username').val();

    $('#user_email').val(username + "@example.com");
    email = $('#user_email').val();

    if (email !== "") {
      return $('#new_user').submit();
    }
    
  });

});
