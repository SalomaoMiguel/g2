class CreateNoticium < ActiveRecord::Migration[6.1]
  def change
    create_table :noticium do |t|
      t.string :titulo, null: false
      t.string :texto, null:false
      t.boolean :ativo, null:false, default: true
      #t.references :curtida,null: false, foreign_key: true
      #t.references :comentario, null: false, foreign_key: true
      # t.references :tag,  foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
