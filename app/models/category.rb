class Category < ActiveRecord::Base
  validates :nombre, presence: true
end
