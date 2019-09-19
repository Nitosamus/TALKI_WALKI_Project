class CreateAides < ActiveRecord::Migration[5.2]
  def change
    create_table :aides do |t|
      t.text :login
      t.text :sign_up
      t.text :formation

      t.timestamps
    end
  end
end
