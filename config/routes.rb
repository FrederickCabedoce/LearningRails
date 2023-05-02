Rails.application.routes.draw do
  resources :pokemons, only: [:index, :show, :update, :create, :destroy]
end
