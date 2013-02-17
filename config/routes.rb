Things::Application.routes.draw do
  root to: "home#index"

  resources :things
  resources :tags
end
