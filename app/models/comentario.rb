class Comentario < ApplicationRecord
  belongs_to :noticium
  belongs_to :user
end
