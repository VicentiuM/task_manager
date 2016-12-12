class AddProjectRefToTask < ActiveRecord::Migration[5.0]
  def change
  	add_reference :tasks, :project, index: true, foreign_key: true
  end
end
