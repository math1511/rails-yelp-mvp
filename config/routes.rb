Rails.application.routes.draw do
  get 'reviews/show'
  get 'restaurants/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [:new]
  end
end
