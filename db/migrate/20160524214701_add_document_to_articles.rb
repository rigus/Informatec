class AddDocumentToArticles < ActiveRecord::Migration
  def change
    add_attachment :articles, :document
  end
end
