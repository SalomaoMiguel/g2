Rails.application.routes.draw do
  root to: 'dev/home#index'
  namespace :dev do
    #Entrada Index
    root to: 'home#index'
    #Dashboard
    get 'board/board_geral'
    #Autenticacao
    get 'auth/login'
    post 'auth/login'
    get 'auth/logout'
    get 'auth/new'
    post 'auth/new'
    #Usuario
    resources :users
    #Configuracao
    get 'configuracao/profile'
    post 'configuracao/profile'
    get 'configuracao/profile_edit'
    patch 'configuracao/profile_edit'
    get 'configuracao/noticia'
    post 'configuracao/noticia'
    get 'configuracao/convite'
    post 'configuracao/convite'
    get 'configuracao/usuario'
    post 'configuracao/usuario'
    #Noticias
    get 'noticium/create'
    post 'noticium/create'
    get 'noticium/edit'
    patch 'noticium/edit'
    get 'noticium/delete'
    get 'noticium/index'
    get 'noticium/show_edit'
    #Tags
    get 'tag/create'
    get 'tag/edit'
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
