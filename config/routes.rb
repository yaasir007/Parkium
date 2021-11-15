Rails.application.routes.draw do
  devise_for :users do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :parkings
  resources :slots
  resources :reviews

  end

end
