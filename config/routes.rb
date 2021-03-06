Rails.application.routes.draw do
	root 'dogs#index'
	resources :sessions
	resources :dogs
	resources :owners
	delete 'dogs/:dog_id/comments/:id' => 'comments#destroy'
	get 'dogs/:dog_id/comments/:id' => 'comments#show', as: :dog_comment
	get 'dogs/:id/comments' => 'comments#new', as: :new_dog_comments
	post 'dogs/:id/comments' => 'comments#create', as: :dog_comments
	post 'dogs/:id/dislikes' => 'dislikes#create', as: :dog_dislikes
	post 'dogs/:id/likes' => 'likes#create', as: :dog_likes
	get 'dogs/:id/likes' => 'dogs#show'
	get 'dogs/:id/dislikes' => 'dogs#show'
	get '/login' => 'sessions#new' 
	post '/login' => 'sessions#create'
	delete '/logout' => 'sessions#destroy'

end
