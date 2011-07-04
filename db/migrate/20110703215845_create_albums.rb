class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.string :name
      t.string :label
      t.integer :genre_id
      t.datetime :release_date

      t.timestamps
    end
  end

  def self.down
    drop_table :albums
  end
end
