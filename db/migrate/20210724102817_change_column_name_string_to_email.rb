class ChangeColumnNameStringToEmail < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :string, :email
  end
end
