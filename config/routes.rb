Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tigers do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index update destroy]
end

# restaurants
# users
# reviews

# restaurants/new
# in the restaurants controller due to devise we have access current_user
# users/:user_id/restaurants/new (>> don't need it)
# so we can grab the user_id from the url (params) to create a new restaurant

# restaurants/:restaurant_id/reviews/new
# create action of the restaurant we need to find the restaurant with restaurand_id
