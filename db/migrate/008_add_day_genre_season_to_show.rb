class AddDayGenreSeasonToShow < ActiveRecord::Migration[5.1]
  add_column :shows, :genre, :string
  add_column :shows, :season, :string
end
