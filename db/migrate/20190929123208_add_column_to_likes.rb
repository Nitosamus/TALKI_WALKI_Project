class AddColumnToLikes < ActiveRecord::Migration[5.2]
  def change
  	  add_reference :likes, :job, index: true
  end
end
