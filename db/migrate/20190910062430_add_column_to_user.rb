class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :integer
    add_column :users, :description, :text
    add_column :users, :function, :string
    add_column :users, :phone_number, :string
    add_column :users, :role, :string
  end
end
