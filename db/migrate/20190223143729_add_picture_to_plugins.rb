class AddPictureToPlugins < ActiveRecord::Migration[5.0]
  def change
    add_column :plugins, :picture, :string
  end
end
