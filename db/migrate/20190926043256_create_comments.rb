class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :title
      t.belongs_to :mf, index: true
      t.belongs_to :ff, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
