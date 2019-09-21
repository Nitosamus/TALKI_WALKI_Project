class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.belongs_to :user, index: true
    end
    add_index :rooms, :name, unique: true
  end
end
