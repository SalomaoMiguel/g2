class TagNoticium < ApplicationRecord
  belongs_to :tag
  belongs_to :noticium
end
