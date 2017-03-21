Rails.application.routes.draw do
  resources :favourites
  resources :television_shows
  resources :movies
  resources :animes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to:'favourites#index'


end
