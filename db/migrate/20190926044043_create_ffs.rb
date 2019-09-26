class CreateFfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ffs do |t|
      t.string :title
      t.text :description
      t.string :contact
      t.string :email
      t.decimal :price
      t.string :image_url
      t.string :video_url
      t.integer :duration
      t.belongs_to :field, index: true
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
