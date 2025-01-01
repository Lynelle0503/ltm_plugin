Ltm::Engine.routes.draw do
  resources :users
  resources :tags
  resources :tasks
  root to: "ltm#index"
end
