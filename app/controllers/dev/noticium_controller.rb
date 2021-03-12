class Dev::NoticiumController < ApplicationController
  layout 'main'
  before_action :set_noticia, only: %i[ edit show_edit ]
  before_action :set_usuario
  before_action :set_tag , only: %i[ tag_edit show_tag_edit ]
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
      redirect_to dev_noticium_index_path
    end
  end

  def show_edit

  end

  def delete
  end

  def tag_create
    @tag = Tag.new
    if request.post?
      if @tag.update(tag_params)
        redirect_to dev_noticium_tag_index_path
        flash[:notice] = "Tag criada com sucesso"
      end
    end
  end

  def tag_edit

  end

  def show_tag_edit
    if request.patch?
      @tag.update(tag_params)
      redirect_to dev_noticium_tag_index_path
      flash[:notice] = "Tag alterada com sucesso"
    end
  end

  def tag_index
    @tags = Tag.where(ativo: true).order(descricao: :asc)
  end


  def index
    @noticias = @usuario.noticiums.where(ativo: true).order(:created_at)
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def set_noticia
    @noticia = @usuario_logado.noticiums.find(params[:id])
  end
  def set_usuario
    @usuario = @usuario_logado
  end
  #Params de noticium
  def noticia_params
    params.require(:noticium).permit(:titulo, :texto, :user_id, :imagem_new, :video_new, :ativo)
  end
  #Params de tags
  def tag_params
    params.require(:tag).permit(:descricao, :ativo)
  end
end
