class AddColumnToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :contract, :string
    add_column :jobs, :buisness, :string
    add_column :jobs, :contact, :string
  end
end
