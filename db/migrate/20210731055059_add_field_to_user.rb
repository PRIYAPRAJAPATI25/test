class AddFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :role, :integer
    add_column :users, :mobile, :string
  end
end
