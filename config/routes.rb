Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  get 'examen_peliculas/index'
  get 'users/index'
  get 'settings/index'
  get 'statics/index'
  get 'statics/about'
  get 'comentarios/index'
  get 'movies/index'  
  get '/about' => 'statics#about', :as => :about

  # Resources
  resources :peliculas
  resources :comments
  resources :settings
  resources :charges

  root :to => "statics#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
