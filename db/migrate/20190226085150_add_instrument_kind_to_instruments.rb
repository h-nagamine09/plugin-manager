class AddInstrumentKindToInstruments < ActiveRecord::Migration[5.0]
  def change
    add_reference :instruments, :instrument_kind, foreign_key: true
  end
end
