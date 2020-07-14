Rails.application.routes.draw do
  resources :services
  resources :employees
  resources :users do 
    resources :appointments
  end

  root to: 'welcome#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/welcome/home' => 'welcome#home'

  get '/auth/facebook/callback' => 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
