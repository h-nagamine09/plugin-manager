class AddPictureToInstruments < ActiveRecord::Migration[5.0]
  def change
    add_column :instruments, :picture, :string
  end
end
