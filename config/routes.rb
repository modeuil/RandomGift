Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
  root "users#new"

  get '/event', to: "events#new", as: :event
  post '/event', to: "events#random"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only:[:new, :create] do
    member do
      get 'confirm'
    end
  end


end
