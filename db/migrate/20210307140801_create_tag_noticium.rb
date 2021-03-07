class CreateTagNoticium < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_noticium do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :noticium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
