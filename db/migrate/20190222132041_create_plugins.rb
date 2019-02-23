class CreatePlugins < ActiveRecord::Migration[5.0]
  def change
    create_table :plugins do |t|
      t.string :plugin_name
      t.string :price
      t.string :company
      t.string :description
      t.string :content
      #t.string :link_url

      t.timestamps
    end
  end
end
