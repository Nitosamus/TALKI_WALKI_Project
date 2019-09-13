class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
    	t.text :contenu
    	t.belongs_to :user
    	t.belongs_to :formation_academique
    	t.belongs_to :professional_formation
    	t.belongs_to :offre_emploi
      t.belongs_to :reponse
      t.timestamps
    end
  end
end
