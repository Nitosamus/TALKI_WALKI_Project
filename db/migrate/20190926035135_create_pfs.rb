class CreatePfs < ActiveRecord::Migration[5.2]
  def change
    create_table :pfs do |t|
      t.string :object
      t.text :description
      t.timestamps
    end
  end
end
