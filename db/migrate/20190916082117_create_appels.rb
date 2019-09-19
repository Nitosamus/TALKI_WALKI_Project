class CreateAppels < ActiveRecord::Migration[5.2]
  def change
    create_table :appels do |t|

      t.timestamps
    end
  end
end
