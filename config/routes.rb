Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "formagama#index"

  get '/home' => "formagama#index"
  post '/simpan' => "formagama#create"
  # post '/delete' => "formagama#delete"
  get '/delete' => "formagama#delete"
  # post ''
  resource :formagama
end