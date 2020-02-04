Rails.application.routes.draw do
  get 'new/create'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'arts/index'
  get 'arts/show'
  get 'arts/new'
  get 'arts/create'
  get 'arts/edit'
  get 'arts/update'
  get 'arts/destroy'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:  [ :show, :new, :create, :edit, :update ] do
    resources :arts, only:  [ :index, :new, :create ]
  end
  resources :arts, only:  [ :show, :edit, :update, :destroy ] do
    resources :bookings, only:  [ :show, :new, :create, :edit, :update ] do
      resources :reviews, only:  [ :index, :new, :create ]
    end
  end

end
