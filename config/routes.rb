Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  root 'home#index'


  resources :topics do
    collection do
      get :search
    end


  end



  # if ::Rails.env.production? 
    match '*path', via: :all, to: 'home#error_404'
  # end

end
