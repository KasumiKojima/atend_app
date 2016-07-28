Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :entries

  resources :events do
    resources :entries
  end
  resources :users do
    resources :entries
  end

  get '/auth/:provider/callback' => 'sessions#callback'
  get "/signout" => "sessions#destroy", :as => :signout

  root :to => "events#index"
end
