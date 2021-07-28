class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.integer :product_price
      t.references :user, null: false, foreign_key: true
     
      t.timestamps
    end
  end
end
