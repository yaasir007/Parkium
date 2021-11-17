Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :destroy]
  resources :parkings do
  delete 'parkings/:id', to: 'parkings#destroy', as: :destroy
    
  resources :reviews
  delete 'reviews/:id', to: 'reviews#destroy', as: :remove
    
  resources :bookings
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
