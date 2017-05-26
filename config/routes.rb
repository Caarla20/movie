Rails.application.routes.draw do
  	get 'statics/index'
	   get 'statics/about'

  	resources :peliculas
  	resources :comments
  
  	get 'comentarios/index'
  	get 'movies/index'


	root :to => "statics#index"
	get '/about' => 'static#about', :as => :about

  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
