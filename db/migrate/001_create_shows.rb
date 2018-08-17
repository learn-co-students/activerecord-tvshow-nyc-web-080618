class CreateShows < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end
end
