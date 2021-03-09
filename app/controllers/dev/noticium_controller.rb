class Dev::NoticiumController < ApplicationController
  layout 'main'
  before_action :set_noticia, only: %i[  edit destroy show_edit ]
  before_action :set_usuario
  before_action :load_controllers
  def create
    @noticia = Noticium.new
    if request.post?
      @noticia = Noticium.new(noticia_params)
      @noticia.user_id = @usuario.id
      if @noticia.save
        redirect_to dev_noticium_create_path
        flash[:notice] = "Notícia criado com sucesso"
      end
    end
  end

  def edit
    if request.patch?
      @noticia.update(noticia_params)
      flash[:notice] = "Notícia Atualizada"
    end
  end
  def show_edit
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
    @noticia = Noticium.find(params[:id])
  end
  def set_usuario
    @usuario = @usuario_logado
  end
  #Params de noticium
  def noticia_params
    params.require(:noticium).permit(:titulo, :texto, :user_id, :imagem_new, :video_new)
  end
end
