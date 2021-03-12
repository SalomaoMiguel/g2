class Dev::HomeController < ApplicationController
  skip_before_action :check_log
  before_action :load_controllers
  before_action :set_noticia, only: %i[ noticia ]
  def index

  end

  def noticia

  end

  def load_controllers
    @noticias = Noticium.where(ativo: true).order(:created_at).limit(6)
    @tags =    Tag.where(ativo: true).order(:descricao).limit(6)
    @users =   User.where(ativo: true).order(:nome)
  end

  def set_noticia
    @noticia = Noticium.find(params[:id])
  end
end
