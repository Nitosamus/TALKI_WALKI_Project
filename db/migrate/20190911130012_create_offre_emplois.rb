class CreateOffreEmplois < ActiveRecord::Migration[5.2]
  def change
    create_table :offre_emplois do |t|
      t.string :description
      t.string :lieu
      t.string :salaire
      t.string :mail

      t.string :domaine
      t.belongs_to :user

      t.timestamps
    end
  end
end
