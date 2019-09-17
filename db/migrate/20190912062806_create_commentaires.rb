class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
    	t.text :contenu


    	t.belongs_to :user, index:true
    	t.belongs_to :formation_academique, index:true
    	t.belongs_to :professional_formation, index:true
    	t.belongs_to :offre_emploi, index:true

      t.timestamps
    end
  end
end
