class Product < ApplicationRecord
  belongs_to :user
  validates :product_name, presence: true
end
