Rails.application.routes.draw do
  devise_for :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
<<<<<<< HEAD
  resources :bookings, only: [:index, :destroy]
=======
  get 'mybookings', to: 'users#my_bookings'
  
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
=======
  get 'mybookings', to: 'users#my_bookings'
  
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
  resources :parkings do
  delete 'parkings/:id', to: 'parkings#destroy', as: :destroy
  resources :bookings
  resources :reviews
  delete 'reviews/:id', to: 'reviews#destroy', as: :remove
<<<<<<< HEAD
<<<<<<< HEAD
    
  resources :bookings
  end

=======
=======

  end
>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56

  end

>>>>>>> e38d7f6e73d2134f9ac984e757153186a653ec56
  devise_scope :user do
    authenticated :user do
      root "parkings#index", as: :authenticated_root

    end
    unauthenticated do
      root "pages#home", as: :unauthenticated_root
    end
  end

end
