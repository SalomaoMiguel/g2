class Noticium < ApplicationRecord
  #Relacionamento
  has_many :tags
  has_many :comentarios
  has_many :curtidas
  has_many :tag_noticiums
  #Validacoes
  #Metodo de classe
end
