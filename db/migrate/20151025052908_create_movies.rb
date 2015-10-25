class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.string :release_year
      t.string :location
      t.text   :fun_facts
      t.string :production
      t.string :distributor
      t.string :director
      t.string :writer
      t.string :actor1
      t.string :actor2
      t.string :actor3

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
