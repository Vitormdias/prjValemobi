Rails.application.routes.draw do
  get 'produtos/index'
  root 'produtos#index'
  resources :produtos
end
