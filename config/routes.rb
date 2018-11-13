Rails.application.routes.draw do
  resources :restaurants do
    # '/restaurants/...'
    collection do
      get :top
    end
    member do
      get :chef
    end
    # '/restaurants/:id/reviews/new'
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

end
