Rails.application.routes.draw do
  root to: 'dev/home#index'
  namespace :dev do
    root to: 'home#index'
    get 'board/board_geral'
    get 'auth/login'
    post 'auth/login'
    get 'auth/logout'
    get 'auth/new'
    post 'auth/new'
    resources :users
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
