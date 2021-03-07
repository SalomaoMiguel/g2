class Dev::ConfiguracaoController < ApplicationController
  layout 'main'
  before_action :set_usuario, :set_usuarios_all

  #GET POST
  def profile
    @usuarios = User.where(admin: true, ativo: true).order(:nome)
  end
  #GET PATCH
  def profile_edit
    if request.patch?
      @usuario.imagem_user = params[:imagem_user]
      if @usuario.update(user_params)
        redirect_to dev_configuracao_profile_edit_path
        flash[:notice] = "Usuário alterado com sucesso"
      end
    end
  end
  #GET POST
  def noticia

  end
  #GET POST
  def convite

  end
  #GET POST
  def user

  end

  def set_usuario
    @usuario = @usuario_logado
  end
  def set_usuarios_all
    @usuarios = User.order(:nome)
  end
  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:nome, :email, :imagem_user)
  end
  #Params de noticium
  def noticia_params
    params.require(:user).permit(:titulo, :texto, :user_id, :imagem_new, :video_new)
  end
end
