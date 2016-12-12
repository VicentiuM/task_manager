class AddAvatarToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :avatar_file_name, :string
    add_column :projects, :avatar_file_size, :int
    add_column :projects, :avatar_content_type, :string
    add_column :projects, :avat_updated_at, :datetime
  end
end
