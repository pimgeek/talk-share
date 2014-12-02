
$(document).ready ->

  $("#show-form").click ->
    $("#option-forms").slideToggle()
    return


  $("form input[type=submit]").click ->
    username = $('#user_username').val()

    $('#user_email').val(username + "@example.com")
    email = $('#user_email').val()
    

    unless email is ""
      # alert(email)
      $('#new_user').submit()


    # return

