class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titulo
      t.string :autor
      t.string :link
      t.text :resumen

      t.timestamps null: false
    end
  end
end
