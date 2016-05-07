class Article < ActiveRecord::Base
  attr_reader :categories
  after_create :save_categories
  has_attached_file :cover, styles: {medium: "1280x720", thumb: "800x600"}
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  #Custom setter
  def categories=(categories)
    @categories = categories
  end

  private

  def save_categories
    @categories.each do |category_id|
      HasCategory.create(category_id: category_id, article_id: self.id)
    end
  end
end
