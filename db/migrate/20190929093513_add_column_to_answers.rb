class AddColumnToAnswers < ActiveRecord::Migration[5.2]
  def change
  	    add_reference :answers, :job, index: true
  end
end
