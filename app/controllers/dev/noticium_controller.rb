class Dev::NoticiumController < ApplicationController
  layout 'main'
  before_action :set_noticia, only: %i[ show edit update destroy ]
  before_action :set_usuario
  before_action :load_controllers
  def create
    @noticia = Noticium.new
    if request.post?
      @noticia.user_id = @usuario.id
      if @noticia.update(noticia_params)
        redirect_to dev_noticium_create_path
        flash[:notice] = "Notícia criado com sucesso"
      end
    end
  end

  def edit
  end

  def delete
  end

  def index
    @noticias = @usuario.noticiums.order(:created_at)
  end

  def load_controllers
    @tags = Tag.order(:descricao)
  end

  def set_noticia
    @noticia = Noticium.find(:id)
  end
  def set_usuario
    @usuario = @usuario_logado
  end
  #Params de noticium
  def noticia_params
    params.require(:noticium).permit(:titulo, :texto, :user_id, :imagem_new, :video_new)
  end
end
