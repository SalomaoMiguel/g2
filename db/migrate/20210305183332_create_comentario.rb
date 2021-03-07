class CreateComentario < ActiveRecord::Migration[6.1]
  def change
    create_table :comentario do |t|
      t.references :noticium, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :texto, null: false
      t.boolean :ativo, null: false, default: true

      t.timestamps
    end
  end
end
