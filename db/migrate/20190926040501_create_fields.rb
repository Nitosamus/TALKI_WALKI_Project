class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :title
      t.text :description
      t.belongs_to :pf, index: true
      t.belongs_to :af, index: true
      t.belongs_to :job, index: true
      t.timestamps
    end
  end
end
