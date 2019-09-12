class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
    	t.belongs_to :user
		t.belongs_to :commentaire 
		t.belongs_to :reponse
		t.belongs_to :formation_academique
    	t.belongs_to :professional_formation
    	t.belongs_to :offre_emploi
        t.timestamps
    end
  end
end
