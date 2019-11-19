Rails.application.routes.draw do
  devise_for :users
  root to: 'tigers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tigers, except: [:index]
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
