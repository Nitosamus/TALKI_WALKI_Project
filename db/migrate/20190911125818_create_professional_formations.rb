class CreateProfessionalFormations < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_formations do |t|
      t.string :objet
      t.string :titre
      t.string :lieu
      t.string :contacte
      t.string :mail
      t.string :description

      t.timestamps
    end
  end
end
