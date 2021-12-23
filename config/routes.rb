Rails.application.routes.draw do
  resources :posts
  root "root#index"
end
