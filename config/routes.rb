Rails.application.routes.draw do
  root 'home#index'

  resources :topics do
    collection do
      get :search
    end
  end

end
