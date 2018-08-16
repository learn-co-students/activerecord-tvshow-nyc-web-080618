class AddSeasonToShows < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    add_column :shows, :season, :string
    end
end
