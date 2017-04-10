Rails.application.routes.draw do
  devise_for :users
    root 'places#index'
    resources :places do
      resources :comments, only: :create #allows posting to the comments controller and allows us to pass through a place_id, which we will use on our comments form.
      resources :photos, only: :create #allows posting to the photos controller and allows us to pass through a place id.
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: :show
end
