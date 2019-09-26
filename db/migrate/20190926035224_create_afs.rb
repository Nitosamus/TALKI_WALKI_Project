class CreateAfs < ActiveRecord::Migration[5.2]
  def change
    create_table :afs do |t|
      t.string :object
      t.text :description

      t.timestamps
    end
  end
end
