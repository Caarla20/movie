Rails.application.routes.draw do
  devise_for :users
	get 'statics/index'

	get 'statics/about'

	resources :peliculas
	resources :comments
	get 'comentarios/index'

	get 'movies/index'

	root :to => "statics#index"
	get '/about' => 'statics#about', :as => :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
