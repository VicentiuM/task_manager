class AddProjectitleToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :project_title, :string
  end
end
