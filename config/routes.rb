Rails.application.routes.draw do
  
  resources :invitaions do
    resources :comments
  end
  devise_for :users

  get '/users/:username', to: "profiles#index" , as: 'user_profile'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :comments
end
