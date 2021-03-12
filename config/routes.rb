Rails.application.routes.draw do
  root to: 'dev/home#index'
  namespace :dev do
    #Entrada Index
    root to: 'home#index'
    get 'home/noticia'
    #Dashboard
    get 'board/board_geral'
    get 'board/noticia'
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
    get 'configuracao/convite'
    post 'configuracao/convite'
    get 'configuracao/usuario'
    post 'configuracao/usuario'
    #Noticias
    get 'noticium/create'
    post 'noticium/create'
    get 'noticium/edit'
    patch 'noticium/edit'
    get 'noticium/index'
    get 'noticium/show_edit'
    patch 'noticium/show_edit'
    #Tags
    get 'noticium/tag_create'
    post 'noticium/tag_create'
    get 'noticium/tag_edit'
    patch 'noticium/tag_edit'
    get 'noticium/tag_index'
    get 'noticium/show_tag_edit'
    patch 'noticium/show_tag_edit'
    #Curtidas
    get 'curtida/insert_curtida'
    post 'curtida/insert_curtida'
    patch 'curtida/insert_curtida'
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
