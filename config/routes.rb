Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'albums#index'
  resources :albums do
    resources :songs
  end
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  
end

# if we don't want user to destroy songs we might do this :
#   resources :songs, except: [:destroy]


# If we wanted users only to be able to see a list of Songs but not be able to do any other CRUD functionality, we could do this:
#
#   resources :songs, only: [:index]
#
#   We can also do more complex routing as well, including creating non-resourceful routes, redirects, and customizing just about every part of a route. Check out the: https://guides.rubyonrails.org/routing.html
