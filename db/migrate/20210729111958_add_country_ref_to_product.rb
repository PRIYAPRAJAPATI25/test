class AddCountryRefToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :country, foreign_key: true
  end
end
