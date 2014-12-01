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

end
