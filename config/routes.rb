Rails.application.routes.draw do
  get 'statics/index'

  get 'statics/about'

  resources :peliculas
  resources :comments
  get 'comentarios/index'

  get 'movies/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
