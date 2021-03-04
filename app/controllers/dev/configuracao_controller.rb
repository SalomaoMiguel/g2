class Dev::ConfiguracaoController < ApplicationController
  layout 'main'
  before_action :set_usuario
  def profile
    @usuarios = User.where(admin: true, ativo: true).order(:nome)
  end
  def profile_edit

  end
  def noticia

  end
  def convite

  end
  def user

  end

  def set_usuario
    @usuario = @usuario_logado
  end

end
