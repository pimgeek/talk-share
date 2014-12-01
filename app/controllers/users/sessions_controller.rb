class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end

  def create
    username = params['user']['username']

    if User.find_by_username(username).nil?
      # rx = Net::HTTP.post_form(URI.parse('http://localhost:3000/users/sign_up'), params)
      # p rx.body
      user = User.create(
        :username => username,
        :email => 'test@example.com',
        :password => 'password'
      )

      user.save
    end

    super

  end
end
