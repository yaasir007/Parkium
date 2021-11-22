Rails.application.routes.draw do
  devise_for :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'mybookings', to: 'users#my_bookings'
  get 'adminparking', to: 'users#parking_admin'
  resources :bookings, only: [:destroy]

  resources :parkings do
  delete 'parkings/:id', to: 'parkings#destroy', as: :destroy

  resources :bookings, except: [:destroy]

  resources :reviews
  delete 'reviews/:id', to: 'reviews#destroy', as: :remove
  end

  devise_scope :user do
    authenticated :user do
      root "parkings#index", as: :authenticated_root
    end
    unauthenticated do
      root "pages#home", as: :unauthenticated_root
    end
  end

end
