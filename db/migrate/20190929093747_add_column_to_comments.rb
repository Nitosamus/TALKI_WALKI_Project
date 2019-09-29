class AddColumnToComments < ActiveRecord::Migration[5.2]
  def change
  	    add_reference :comments, :job, index: true
  end
end
