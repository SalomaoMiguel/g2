class CreateCurtida < ActiveRecord::Migration[6.1]
  def change
    create_table :curtida do |t|
      t.references :noticium, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :curtida, null: false, default: false

      t.timestamps
    end
  end
end
