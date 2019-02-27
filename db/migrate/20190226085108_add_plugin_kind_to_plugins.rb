class AddPluginKindToPlugins < ActiveRecord::Migration[5.0]
  def change
    add_reference :plugins, :plugin_kind, foreign_key: true
  end
end
