Rails.application.routes.draw do

resources :users
resources :posts
resources :journals

get '/login' => 'session#new'
post '/login' => 'session#create'
delete 'logout' => 'session#destroy'

root to: 'users#login'

end
