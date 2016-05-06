class AddFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :tipo, :string
  end
end
