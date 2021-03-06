class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.datetime :birth_date
      t.datetime :death_date

      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end
