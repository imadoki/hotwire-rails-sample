Rails.application.routes.draw do
  root "root#index"
  resources :messages do
    resources :comments
  end
  resources :posts
end
