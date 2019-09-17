class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
    t.belongs_to :user, index:true 
		t.belongs_to :commentaire, index:true 
		t.belongs_to :reponse, index:true
		t.belongs_to :formation_academique, index:true
    t.belongs_to :professional_formation, index:true
    t.belongs_to :offre_emploi, index:true
    t.timestamps
    end
  end
end
