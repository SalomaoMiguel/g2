class Noticium < ApplicationRecord
  #Relacionamento
  has_many :tags
  has_many :comentarios
  has_many :curtidas
  has_many :tag_noticiums
  has_one_attached :imagem_new
  has_one_attached :video_new
  #Validacoes
  #Metodo de classe
end
