class Tag < ApplicationRecord
  #Relacionamentos
  has_many :noticiums
  has_many :tag_noticiums
  #Validacoes
  #Metodo de Classe

end
