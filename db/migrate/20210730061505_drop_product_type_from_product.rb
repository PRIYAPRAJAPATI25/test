class DropProductTypeFromProduct < ActiveRecord::Migration[6.1]
  def change
     remove_column :products, :product_type, :string
  end
end
