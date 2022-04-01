Rails.application.routes.draw do
  resources :users, only:[:new, :create] do
    member do
      get 'confirm'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#new"
end
