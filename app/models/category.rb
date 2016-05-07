class Category < ActiveRecord::Base
  validates :nombre, presence: true
  has_many :has_categories
  has_many :articles, through: :has_categories
end
