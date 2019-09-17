class CreateOffreEmplois < ActiveRecord::Migration[5.2]
  def change
    create_table :offre_emplois do |t|
      t.string :description
      t.string :lieu
      t.string :salaire
      t.string :mail


      t.belongs_to :user, index:true

      t.timestamps
    end
  end
end
