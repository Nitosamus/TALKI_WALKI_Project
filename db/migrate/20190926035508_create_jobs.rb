class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.belongs_to :city, index:true
      t.belongs_to :field, index:true
 
      t.timestamps
    end
  end
end
