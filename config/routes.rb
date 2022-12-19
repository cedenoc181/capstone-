Rails.application.routes.draw do
  resources :appointments, only:[:index, :show, :create, :destroy]
  resources :physical_therapists, only:[:index, :show, :create, :update, :destroy]
  resources :users, only:[:index, :show, :update, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
