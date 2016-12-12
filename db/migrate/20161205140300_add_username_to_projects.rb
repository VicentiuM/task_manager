class AddUsernameToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :user_name, :string
  end
end
