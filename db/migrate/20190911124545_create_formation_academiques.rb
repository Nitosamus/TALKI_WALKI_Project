class CreateFormationAcademiques < ActiveRecord::Migration[5.2]
  def change
    create_table :formation_academiques do |t|
      t.string :titre
      t.string :contact
      t.string :mail
      t.string :lieu
      t.text :description

      t.string :domaine
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
