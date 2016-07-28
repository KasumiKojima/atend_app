Rails.application.routes.draw do
  resources :events
  resources :users
  resources :sessions

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
