Rails.application.routes.draw do
	root 'dogs#index'
	resources :sessions
	resources :dogs
	resources :owners
	post 'dogs/:id/dislikes' => 'dislikes#create', as: :dog_dislikes
	post 'dogs/:id/likes' => 'likes#create', as: :dog_likes
	get '/login' => 'sessions#new' 
	post '/login' => 'sessions#create'
	delete '/logout' => 'sessions#destroy'

end
