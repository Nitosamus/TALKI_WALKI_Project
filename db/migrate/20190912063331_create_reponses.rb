class CreateReponses < ActiveRecord::Migration[5.2]
  def change
    create_table :reponses do |t|
    	t.text :contenu
    	
    	t.belongs_to :user
    	t.belongs_to :commentaire
      t.timestamps
    end
  end
end
