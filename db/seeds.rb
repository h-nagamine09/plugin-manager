plugin_kinds = %w(equalizer compressor limiter reverb&delay moduler other_plugin)
plugin_kinds.each do |plugin|
  PluginKind.create!(name: plugin)
end

instrument_kinds = %w(synthesizer piano guitar strings wind other_instrument)
instrument_kinds.each do |instrument|
  InstrumentKind.create!(name: instrument)
end 



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

