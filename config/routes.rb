Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      namespace :users do
        post :login
        post :create
        get :me
        delete :logout
        get :index
      end
    end
  end
end
