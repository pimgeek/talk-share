class UsersController < ApplicationController
  
  def sign_up
  end

  def sign_in
    username = params[:username]

    user = User.create(:username => username)
    if user.save
      set_cookie!(user)
      return redirect_to "/topics"
    end

    redirect_to "/users/sign_up"

  end

end