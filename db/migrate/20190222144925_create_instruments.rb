class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_name
      t.string :price
      t.string :company
      t.string :description
      t.string :content
      t.string :link_url

      t.timestamps
    end
  end
end
